import sys
import time
from geopy.geocoders import Nominatim, GoogleV3, Bing
import folium
from bs4 import BeautifulSoup
import requests
import numpy as np

import pandas as pd
from folium.plugins import HeatMap
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

from sklearn import preprocessing
import os
from bs4 import BeautifulSoup
import pickle

import dataGeneration
import googleCreds
import score

geolocator = GoogleV3(api_key = googleCreds.GOOGLE_API_KEY)

def getCompaniesDataframe(googleAPIKey,
                          jobName = "data scientist",
                          locationName = "Milano Lombardia",
                          resource = "https://it.indeed.com/",
                          maxPages = 1,
                          dfPath = "dfCompanies.csv",
                          saveCSV = True,
                          dropNAs = True):

    """

    The function returns a dataframe with following features:

    - company name (companyName): str
    - job name (jobName): str
    - link to the description of the position (link): str
    - latitude of company's headquarters based on Google Maps Search (lt): float
    - longitude of company's headquarters based on Google Maps Search (lg): float
    - address of company's headquarters based on Google Maps Search (address): str

    If getting one of the features was unsuccesful it is replaced by np.nan (numpy NAN).

    Inputs:
        googleAPIKey(str):  path to Google Maps API key

        jobName     (str):  job name for the search,
                            default: "data scientist"

        locaionName (str):  location name,
                            default: "Milano%2C+Lombardia"

        resource    (str):  URL of job source, by now available only default value,
                            default: "https://it.indeed.com/"

        maxPages    (int):  number of pages of results to scan,
                            default: 1

        dfPath      (str):  path to save a dataframe as CSV file,
                            default: "dfCompanies.csv"

        saveCSV     (bool): True, if csv file should be saved to dfPath,
                            default: True

        dropNAs     (bool): True, if rows containing np.nan values should be dropped from a dataframe,
                            default: True
    Outputs:

        pandas DataFrame
    """

    jobName = "+".join(jobName.split())
    city = locationName.split()[0]
    locationName = "%2C+".join(locationName.split())

    #To be extended if other resources are used
    if resource == "https://it.indeed.com/":
        if maxPages>1:
            urlList = [f"https://it.indeed.com/offerte-lavoro?q={jobName}&l={locationName}"]
            urlList+=[f"https://it.indeed.com/jobs?q={jobName}&l={locationName}&start={i}0" for i in range(1,maxPages+1)]
        else:
            urlList = [f"https://it.indeed.com/offerte-lavoro?q={jobName}&l={locationName}"]


    companyInfo = {"companyName":[],
                   "jobName":[],
                   "link":[],
                   "lt" : [],
                   "lg" : [],
                   "address" : []}

    for url in urlList:
        session = requests.session()
        response = session.get(url)

        soup = BeautifulSoup(response.text, 'html.parser')

        for element in soup.find_all('span', class_='company'):
            #print(element)
            #input()
            try:
                name = element.find('a', class_="turnstileLink").text.strip()
                #print(name)
            except:
                name = element.text.strip()
                #print(name)
            companyInfo["companyName"].append(name)

        for element in soup.find_all('h2', class_='title'):
            #print(element)
            #print(element.find('a').get("href"))
            try:
                currentLink = element.find('a').get("href")
                companyInfo["link"].append("https://it.indeed.com"+currentLink)
                #print("Link: "+"https://it.indeed.com"+currentLink)
            except:
                print("Error adding link")
                companyInfo["link"].append(np.nan)
                #print(element)
                #input()
            try:
                jobName = element.find('a', class_="jobtitle turnstileLink ").text.strip()
                #print(jobName)
                #print("JobName Try Branch")
            except:
                jobName = element.text.strip()
                #print(jobName)
                #print("JobName Except Branch")
            #print(jobName)
            companyInfo["jobName"].append(jobName)

    #Sanity check if any info was lost/missed
    assert len(companyInfo["companyName"]) == len(companyInfo["jobName"]) == len(companyInfo["link"])

    # In order to get companies' locations I need their address which I can get using Google Maps API.
    # I had to create an account for that purpose.
    # Credentials are stored in googleCreds.py for security reasons.
    geolocator = GoogleV3(api_key = googleAPIKey)

    for company in companyInfo["companyName"]:
        rawName = str(company+" Milano").replace(" ","+")
        url = 'https://maps.googleapis.com/maps/api/geocode/json?'+'address={}&key={}'.format(rawName,googleCreds.GOOGLE_API_KEY)
        p = {'address' : 'Milano'}
        r = requests.get(url, params = p).json()

        time.sleep(0.5)
        try:
            results = r['results']
            results = results[0]

            location = geolocator.geocode(results["formatted_address"])
            print(company + " was succesfully added with address:\n" + location.address + "\n")

            companyInfo["lt"].append(location.latitude)
            companyInfo["lg"].append(location.longitude)
            companyInfo["address"].append(location.address)
        except:
            print(company + " was skipped. Probably was not found\n")
            companyInfo["lt"].append(np.nan)
            companyInfo["lg"].append(np.nan)
            companyInfo["address"].append(np.nan)

    #Sanity check if any info was lost/missed
    assert len(companyInfo["companyName"]) == len(companyInfo["jobName"]) == len(companyInfo["link"])
    assert len(companyInfo["lt"]) == len(companyInfo["lg"]) == len(companyInfo["address"]) == len(companyInfo["link"])
    print("Assertion succesful. Creating Dataframe")

    dfCompanies = pd.DataFrame(companyInfo)
    dfCompanies = dfCompanies[dfCompanies["address"].astype(str).str.contains(city)]

    if dropNAs:
        dfCompanies.dropna(inplace = True)

    if saveCSV:
        dfCompanies.to_csv(dfPath, index = False)

    return dfCompanies


airWeight, safetyWeight, jobWeight, greenWeight, priceWeight  = 5, 5, 5, 5, 5

#
# def updateJob(job_name):
#     """
#     """
#     getCompaniesDataframe(googleCreds.GOOGLE_API_KEY, jobName=job_name, dfPath="1_dfCompanies.csv")


def updateMap():
    #def updateMap(job_name, price_importance, work_importance, danger_importance, air_importance, green_importance, num):
    """
    """
    dfCompanies = pd.read_pickle('data/dfCompanies.pkl')
    feature_group1 = folium.FeatureGroup(name='Companies', show = False)

    #I need this location to center the future map
    geolocator = GoogleV3(api_key = googleCreds.GOOGLE_API_KEY)
    location = geolocator.geocode("Milano Italy")

    # map1 = folium.Map(
    #     location=[location.latitude, location.longitude],
    #     tiles='cartodbpositron',
    #     zoom_start=13)
    tooltip = 'Click me!'

    for index, loc in dfCompanies.iterrows():
    #     print([loc["lt"], loc["lg"]])
    #     print(f'<i>{loc.name}+": "+{loc.address}</i>')
    #     input()
        if "Milano" in set(loc.address.split(" ")) or "MI," in set(loc.address.split(" ")):
            #Adding marker
            link = f'<a href="{loc["link"]}" target="_blank">Link</a>'
            folium.Marker([loc["lt"], loc["lg"]],
                        popup=f'<b>{loc["companyName"]}</b><br> {loc["jobName"]}<br> {link}<br><i>{loc.address}</i>',
                        tooltip=tooltip).add_to(feature_group1)
    feature_groups = []
    feature_groups.append(feature_group1)

    print(dfCompanies)

    meanLat = dfCompanies["lt"].mean()
    meanLon = dfCompanies["lg"].mean()

    medianLat = dfCompanies["lt"].median()
    medianLon = dfCompanies["lg"].median()

    medianLocation = (medianLat, medianLon)
    meanLocation = (meanLat, meanLon)
    print(meanLocation)
    feature_group2 = folium.FeatureGroup(name="Optimal Locations based on companies")
    folium.Marker([meanLat, meanLon],
                        popup='<i>Mean location</i>',
                        radius= 50,
                        tooltip=tooltip,
                        icon=folium.Icon(color='blue',
                                        icon='glyphicon-ok-circle')).add_to(feature_group2)

    folium.Marker([medianLat, medianLon],
                        popup='<i>Median location</i>',
                        radius= 50,
                        tooltip=tooltip,
                        icon=folium.Icon(color='blue',
                                        icon='glyphicon-ok-circle')).add_to(feature_group2)

    #feature_group2.add_to(map1)
    feature_groups.append(feature_group2)


    milanodistricts = "data/zonedecentramento.geojson"
    #Source: https://dati.comune.milano.it/dataset/ds153-infogeo-zone-localizzazione-2013
    #Last Access Date: 11/08/2020

    feature_group3 = folium.FeatureGroup(name='Districts (Zones)', show = False)
    folium.GeoJson(
        milanodistricts,
        name='geojson').add_to(feature_group3)


    feature_groups.append(feature_group3)


    dfGreen = pd.read_pickle("data/dfGreen.pkl")
    mapGreen = folium.Map(
        location=[location.latitude, location.longitude],
        zoom_start=12,
        tiles='cartodbpositron')


    choropleth = folium.Choropleth('data/zonedecentramento.geojson',
                    name='Vegetation concentration',
                    data=dfGreen,
                    key_on="properties.ZONADEC",
                    columns=['ZONADEC', 'GreenConc'],
                    fill_color='YlGn',
                    fill_opacity=0.7,
                    line_opacity=0.2,
                    legend_name='Vegetation Concentration (green area per total area)',
                    show = False
    ).add_to(mapGreen)

    choropleth.geojson.add_child(
        folium.features.GeoJsonTooltip(['ZONADEC'])
    )



    dfAir=pd.read_pickle("data/dfAirStations.pkl")
    import json
    with open('data/qaria_stazione.geojson') as data_file:
        data = json.load(data_file)

    def color_producer(value, mx, inv = False):
        if inv == False:
            if value < 0.3*mx:
                return 'green'
            elif value < 0.75*mx:
                return 'orange'
            else:
                return 'red'
        else:
            if value < 0.3*mx:
                return 'red'
            elif value < 0.75*mx:
                return 'orange'
            else:
                return 'green'

    feature_group5 = folium.FeatureGroup(name='Environmental monitoring stations ', show = False)
    # mapB = folium.Map(
    #     location=[location.latitude, location.longitude],
    #     zoom_start=13,
    #     tiles='cartodbpositron')
    mx = max(dfAir["normv"])


    for i, row in dfAir.iterrows(): #data["features"]):
        #print(f["geometry"]["coordinates"])
        try:
            folium.Circle(location = [data["features"][int(row["id_amat"])-1]["geometry"]["coordinates"][1],
                                    data["features"][int(row["id_amat"])-1]["geometry"]["coordinates"][0]],
                        radius = 1500,
                        fill = True,
                        fill_color = color_producer(row["normv"], mx),
                        weight = 0,
                        popup = f"Station #{i}. Conc: "+str(round(row["normv"],2))).add_to(feature_group5)
        except:
            folium.Circle(location = [data["features"][int(row["id_amat"])-1]["geometry"]["coordinates"][1],
                                    data["features"][int(row["id_amat"])-1]["geometry"]["coordinates"][0]],
                        radius = 1500,
                        fill = True,
                        fill_color = "grey",
                        weight = 0,
                        popup = "NA").add_to(feature_group5)

    # feature_group5.add_to(mapGreen)
    feature_groups.append(feature_group5)

    minmaxlat = [45.39, 45.53]
    minmaxlong = [9.08, 9.29]




    dct = {"lt":[],
        "lg": []}
    for i in np.arange(minmaxlat[0], minmaxlat[1], 0.01):
        for j in np.arange(minmaxlong[0], minmaxlong[1], 0.01):
            dct["lt"].append(i)
            dct["lg"].append(j)

    dfHeatmap = pd.DataFrame(dct)
    dfHeatmap = dfHeatmap.append(dfAir[["lt","lg"]])

    pkl_filename = "models/normv_lt_lg_LinearRegression.pkl"
    with open(pkl_filename, 'rb') as file:
        normv_lt_lg_LinearRegression = pickle.load(file)

    from sklearn.preprocessing import PolynomialFeatures

    pf = PolynomialFeatures(degree=3)
    dfHeatmap["contamination"] = normv_lt_lg_LinearRegression.predict(pf.fit_transform(dfHeatmap))
    dfHeatmap["contamination"] = dfHeatmap["contamination"].map(lambda x: max(0, x))


    import branca.colormap as cm
    from collections import defaultdict
    steps = 20
    #color_map=cm.linear.Blues_03.scale(0,1).to_step(steps)
    color_map=cm.linear.YlOrRd_09.scale(0,1).to_step(steps)

    feature_group6 = folium.FeatureGroup(name='Air Contamination Heatmap', show = False)
    gradient_map=defaultdict(dict)
    for i in range(steps):
        gradient_map[1/steps*i] = color_map.rgb_hex_str(1/steps*i)

    # mapB = folium.Map(
    #     location=[location.latitude, location.longitude],
    #     zoom_start=13,
    #     tiles='cartodbpositron')

    HeatMap(dfHeatmap, min_opacity = 0.3,
            radius =50,
            blur = 50,
        gradient = gradient_map).add_to(folium.FeatureGroup(name='Heat Map').add_to(feature_group6))

    #feature_group6.add_to(mapGreen)
    feature_groups.append(feature_group6)


    # minPrice = 1000
    # maxPrice = 2000

    dfAccommodationsExpanded=pd.read_pickle("data/dfAccommodationsExpanded.pkl")
    # dfObjects = dfObjects[(dfObjects["price"]>=minPrice) & (dfObjects["price"]<=maxPrice)]
    # dfObjects = dfObjects[dfObjects["type"] == "Bilocale"]


    feature_group7 = folium.FeatureGroup(name='Accommodations for rent (apartments)')


    location = geolocator.geocode("Milano Italy")
    # map2 = folium.Map(
    #     location=[location.latitude, location.longitude],
    #     tiles='cartodbpositron',
    #     zoom_start=13)
    # tooltip = 'Click me!'

    for i,row in dfAccommodationsExpanded.iterrows():
        link = "<a href='https://www.immobiliare.it/annunci/"+str(row['id'])+"/"+" target='_blank'" + ">Link</a>"
        st = f"<b>{row.type}</b><br>{row.address}<br>€{row.price}/month<br>{link}<br>"
        folium.Marker([row['coords'][0], row['coords'][1]],
                    popup = st+"Total score:" + str(row.score),
                    tooltip=tooltip,
                    icon=folium.Icon(color=color_producer(row.score, max(dfAccommodationsExpanded["score"]),
                                                            inv = True))).add_to(feature_group7)


    #feature_group6.add_to(mapGreen)
    feature_groups.append(feature_group7)



    feature_group8 = folium.FeatureGroup(name='Dangerous Zones', show = False)
    blackList = ["Quarto Oggiaro", "Roserio", "viale Padova", "Bovisa", "Rogored", "Barona", "Corvetto", "San Siro", "Via Gola"]
    for item in blackList:
        folium.Circle(dataGeneration.getLoc(item, googleCreds.GOOGLE_API_KEY),
                    radius = 2000,
                    fill = True,
                    fill_color = "yellow",
                    weight = 0,
                    popup = item,
                    tooltip=tooltip).add_to(feature_group8)

        folium.Circle(dataGeneration.getLoc(item, googleCreds.GOOGLE_API_KEY),
                    radius = 1000,
                    fill = True,
                    fill_color = "red",
                    weight = 0,
                    popup = item,
                    tooltip=tooltip).add_to(feature_group8)



    #feature_group7.add_to(mapGreen)
    feature_groups.append(feature_group8)



    dct = {"lt":[], "lg": []}
    for i in np.arange(minmaxlat[0], minmaxlat[1], 0.01/0.75):
        for j in np.arange(minmaxlong[0], minmaxlong[1], 0.02):
            dct["lt"].append(i)
            dct["lg"].append(j)

    dfHeatmap = pd.DataFrame(dct)
    dfHeatmap = dfHeatmap.append(dfAir[["lt","lg"]])
    dfAccommodationsExpanded['lt']=dfAccommodationsExpanded['coords'].apply(lambda x: x[0])
    dfAccommodationsExpanded['lg']=dfAccommodationsExpanded['coords'].apply(lambda x: x[1])
    dfHeatmap = dfHeatmap.append(dfAccommodationsExpanded[["lt","lg"]])


    pkl_filename = "models/totalScore_lt_lg_RandomForestRegressor.pkl"
    with open(pkl_filename, 'rb') as file:
        totalScore_lt_lg_RandomForestRegressor = pickle.load(file)

    dfHeatmap["totalScore"] = totalScore_lt_lg_RandomForestRegressor.predict(dfHeatmap)



    import branca.colormap as cm
    from collections import defaultdict
    steps = 50
    #color_map=cm.linear.Blues_03.scale(0,1).to_step(steps)
    color_map=cm.linear.RdBu_03.scale(0,1).to_step(steps)

    feature_group9 = folium.FeatureGroup(name='Predicted Total Score')
    gradient_map=defaultdict(dict)
    for i in range(steps):
        gradient_map[1/steps*i] = color_map.rgb_hex_str(1/steps*i)

    # mapB = folium.Map(
    #     location=[location.latitude, location.longitude],
    #     zoom_start=13,
    #     tiles='cartodbpositron')

    HeatMap(dfHeatmap, min_opacity = 0.5,
            #radius =50,
            blur = 30,
        gradient = gradient_map).add_to(folium.FeatureGroup(name='Heat Map').add_to(feature_group9))

    #feature_group6.add_to(mapGreen)
    feature_groups.append(feature_group9)
    num = 100
    for f in feature_groups:
        f.add_to(mapGreen)
    folium.LayerControl(collapsed = False).add_to(mapGreen)
    mapGreen.save(f"results/map.html")
    with open('results/map.html', 'r') as file:
        data = file.read()
    data = data.replace('<head>', '<head> <meta http-Equiv="Cache-Control" Content="no-cache" /> <meta http-Equiv="Pragma" Content="no-cache" /> <meta http-Equiv="Expires" Content="0" />')
    # with open("InstaSeerDf2.html", "w") as file:
    #      file.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">")
    with open("results/map.html", "w") as file:
        file.write(data)

if __name__=='__main__':
    jobName, price_importance, work_importance, danger_importance, air_importance, green_importance, minRent, maxRent = [sys.argv[1]]+[float(p) for p in sys.argv[2:]]
    score.score(jobName, price_importance, work_importance, danger_importance, air_importance, green_importance, minRent = minRent, maxRent = maxRent)
    updateMap()
