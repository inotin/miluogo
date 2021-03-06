import dataGeneration
import googleCreds
import models
from math import radians, cos, sin, asin, sqrt
import sys
from sklearn.preprocessing import MinMaxScaler
from shapely.geometry import Point, shape
import json


def dist(loc1, loc2):
    """
    Function returns the distance between two locations

    Input:
    loc1 (list(float)): location 1: [latitude, longitude]
    loc2 (list(float)): location 2: [latitude, longitude]

    Output:
    km: distance in km
    """
    # convert decimal degrees to radians
    lon1, lat1, lon2, lat2 = map(radians, [loc1[1], loc1[0], loc2[1], loc2[0]])
    # haversine formula
    dlon = lon2 - lon1
    dlat = lat2 - lat1
    a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
    c = 2 * asin(sqrt(a))
    # Radius of earth in kilometers is 6371
    km = 6371 * c
    return km


def totalScore(x, air=5, safety=5, job=5, green=5, price=5):
    """
    The function calculates a score based on weights reflecting significance of one or another factor
    Input:
    x (list(float)): a list containg feature values. The sequence is:
    ["price", "contamination", "distanceToDangerZone", "distanceToMedianJobLocation","GreenConc"]

    Output:

    """
    #"price", "contamination", "distanceToDangerZone", "distanceToMedianJobLocation","GreenConc"
    return -x[0]*air + x[1]*safety - x[2]*job + x[3]*green - x[4]*price


def getZone(loc, js='data/zonedecentramento.geojson'):
    point = Point(min(loc), max(loc))
    with open(js) as f:
        js = json.load(f)
    # check each polygon to see if it contains the point
    for feature in js['features']:
        polygon = shape(feature['geometry'])
        if polygon.contains(point):
            return feature["properties"]['ZONADEC']


def score(jobName, price_importance, work_importance, danger_importance, air_importance, green_importance, minRent=800, maxRent=1500):
    """
    The function runs functions from dataGeneration library for obtaining fresh
    data about acoomoddations objects and companies, and calculates scores for each
    accomodation based on given job name, priorities and rental rates

    Input:
    jobName               (str): job name for search of companies
    price_importance    (float): weight coefficient for rental rate (price)
                                 (the cheaper the better)
    work_importance     (float): work proximity importance (the closer offices
                                 of potential employers (median location) the better)
    danger_importance   (float): safety importance (the further from dangerous zones the better)
    air_importance      (float): air quality importance (the cleaner is air the better)
    green_importance    (float): green importance (the more parks and green zones the better)
    minRent      (float or int): minimum rent rate (in euro), default: 800
    maxRent      (float or int): maximum rent rate (in euro), default: 1500

    Output:
    pandas dataframe with columns:
     #   Column                       Description           Dtype
    ---  ------                       --------------        -----
     0   id                           object id             object
     1   type                         object type           object
     2   address                      object address        object
     3   price                        object price          int64
     4   coords                       object coodinates     object
                                      [lat, lon]
     5   contamination                predicted value       float64
                                      of contamination
                                      at the object
                                      location

     6   distanceToDangerZone         distance to the       float64
                                      nearest dangerous
                                      zone from the
                                      object

     7   distanceToMedianJobLocation  distance to the       float64
                                      median job location
                                      from the object

     8   zone                         zone (district)       int64
                                      number of Milano

     9   GreenConc                    concentration of      float64
                                      vegetation in the
                                      zone where object
                                      is located

     10  priceScaled                  min-max scaled price  float64
                                      for scoring

     11  score                        resulting score of    float64
                                      the object
    """
    price_importance, work_importance, danger_importance, air_importance, green_importance = float(
        price_importance), float(work_importance), float(danger_importance), float(air_importance), float(green_importance)
    dfAccommodations = dataGeneration.getAccommodationDF(
        maxPages=5, minPrice=minRent, maxPrice=maxRent)
    dfCompanies = dataGeneration.getCompaniesDataframe(jobName=jobName,
                                                       maxPages=3,
                                                       googleAPIKey=googleCreds.GOOGLE_API_KEY)
    print(dfCompanies)
    dfGreen = dataGeneration.getGreenZonesDataframe()
    dfAirStations = dataGeneration.getAirQualityDataframe()

    # ### 2. Mean and median locations
    # Here I calculate the mean and median location of the companies' location points which should be optimal for living.

    meanLat = dfCompanies["lt"].mean()
    meanLon = dfCompanies["lg"].mean()

    medianLat = dfCompanies["lt"].median()
    medianLon = dfCompanies["lg"].median()

    medianLocation = (medianLat, medianLon)
    meanLocation = (meanLat, meanLon)

    # print("Mean Location (lat, lon):", "\t" , meanLat, "\t" ,meanLon)
    # print("Median Location (lat, lon):", "\t" , medianLat, "\t\t" , medianLon)

    model = models.generateContaminationModel(dfAirStations)
    #mms = MinMaxScaler()
    dfAccommodations["contamination"] = dfAccommodations["coords"].map(
        lambda x: models.predictContamination(x[0], x[1], model))
    dfAccommodations["contamination"] = dfAccommodations["contamination"] / \
        dfAccommodations["contamination"].max()
    #dfAccommodations["contamination"] = mms.fit_transform(dfAccommodations["contamination"])

    # #### Dangerous zones coordinates
    blackList = ["Quarto Oggiaro", "Roserio", "viale Padova", "Bovisa",
                 "Rogored", "Barona", "Corvetto", "San Siro", "Via Gola"]
    dangerousZones = [dataGeneration.getLoc(i, googleCreds.GOOGLE_API_KEY) for i in blackList]

    dfAccommodations["distanceToDangerZone"] = dfAccommodations["coords"].map(
        lambda x: min([dist(x, i) for i in dangerousZones]))
    dfAccommodations["distanceToDangerZone"] = dfAccommodations["distanceToDangerZone"] / \
        dfAccommodations["distanceToDangerZone"].max()
    # dfAccommodations["distanceToDangerZone"]=mms.fit_transform(dfAccommodations["distanceToDangerZone"])

    # ### Calculating distances to median job location
    dfAccommodations["distanceToMedianJobLocation"] = dfAccommodations["coords"].map(
        lambda x: dist(x, medianLocation))
    dfAccommodations["distanceToMedianJobLocation"] = dfAccommodations["distanceToMedianJobLocation"] / \
        dfAccommodations["distanceToMedianJobLocation"].max()
    # dfAccommodations["distanceToMedianJobLocation"]=mms.fit_transform(dfAccommodations["distanceToMedianJobLocation"])

    dfAccommodations["zone"] = dfAccommodations['coords'].map(lambda x: getZone(x))
    dfAccommodations = dfAccommodations.join(dfGreen.set_index('ZONADEC')['GreenConc'], on='zone')
    dfAccommodations["GreenConc"] = dfAccommodations["GreenConc"] / \
        dfAccommodations["GreenConc"].max()

    dfAccommodations["priceScaled"] = dfAccommodations["price"] / dfAccommodations["price"].max()

    dfAccommodations["score"] = air_importance*dfAccommodations['contamination'] + danger_importance*dfAccommodations['distanceToDangerZone'] + work_importance * \
        dfAccommodations['distanceToMedianJobLocation']+green_importance * \
        dfAccommodations['GreenConc']+price_importance*dfAccommodations['priceScaled']
    dfAccommodations.to_pickle('data/'+'dfAccommodationsExpanded.pkl')
