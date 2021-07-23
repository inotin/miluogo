import sys
import time
from geopy.geocoders import Nominatim, GoogleV3, Bing
import folium
from bs4 import BeautifulSoup
import requests
import random
import time
import numpy as np
import googleCreds
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from sklearn import preprocessing
import json
import csv
from urllib.request import urlopen
import re
from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from selenium.webdriver.firefox.firefox_binary import FirefoxBinary

def getCompaniesDataframe(googleAPIKey,
                          jobName = "data scientist",
                          locationName = "Milano Lombardia",
                          resource = "https://it.indeed.com/",
                          maxPages = 1,
                          dfPath = "data/dfCompanies.pkl",
                          savePickle = True,
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
                            default: "Milano Lombardia"

        resource    (str):  URL of job source, by now available only default value,
                            default: "https://it.indeed.com/"

        maxPages    (int):  number of pages of results to scan,
                            default: 1

        dfPath      (str):  path to save a dataframe as CSV file,
                            default: "data/dfCompanies.pkl"

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
    print('Job name:', jobName)
    print('Location name:', city)
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
    #input(urlList)
    options = Options()
    # options.headless = True #for server use

    pathToFirefoxExecutable = '/Applications/Firefox.app/Contents/MacOS/firefox'
    binary = FirefoxBinary(pathToFirefoxExecutable)
    driver = webdriver.Firefox(options=options, firefox_binary=binary)
    #driver = webdriver.Firefox()
    for url in urlList:
        driver.get(url)
        html = driver.page_source
        soup = BeautifulSoup(html,'html.parser')

        # session = requests.session()
        # response = session.get(url)
        # input(response.status_code)
        # soup = BeautifulSoup(response.text, 'html.parser')
        #input(soup)
        # # input(response.text)
        # for element in soup.find_all('span', class_='companyName'):
        #     #print(element)
        #     #input()
        #     try:
        #         name = element.find('a', class_="turnstileLink companyOverviewLink").text.strip()
        #         #print(name)
        #     except:
        #         name = element.text.strip()
        #         #print(name)
        #
        #     companyInfo["companyName"].append(name)
        #     print('='*10)
        #     print('Company name:'+str(name))

        for element in soup.find_all('a', id=re.compile('^job_')):
        #     print(element)

            print(element['href'])
            jobName = element.find('span', class_=lambda x: x != 'label').text
            print(jobName)
            companyInfo["link"].append("https://it.indeed.com"+str(element['href']))
            companyInfo["jobName"].append(jobName)
            name = element.find('span', class_='companyName').text
            print(name)
            companyInfo["companyName"].append(name)
            print('='*10)
        time.sleep(2*random.random())

    print(len(companyInfo["companyName"]))
    print(len(companyInfo["jobName"]))
    print(len(companyInfo["link"]))
    # input()
    assert len(companyInfo["companyName"]) == len(companyInfo["jobName"]) == len(companyInfo["link"])

    # In order to get companies' locations I need their address which I can get using Google Maps API.
    # I had to create an account for that purpose.
    # Credentials are stored in googleCreds.py for security reasons.
    geolocator = GoogleV3(api_key = googleCreds.GOOGLE_API_KEY)

    for company in companyInfo["companyName"]:
        print(company)
        rawName = str(company+" Milano").replace(" ","+")

        url = 'https://maps.googleapis.com/maps/api/geocode/json?'+'address={}&key={}'.format(rawName,googleCreds.GOOGLE_API_KEY)
        p = {'address' : 'Milano'}
        reqStatus = None
        attemptsLimit = 10
        numberOfAttempt = 0
        # while reqStatus!='OK' or numberOfAttempt<=attemptsLimit:
        r = requests.get(url, params = p).json()
        reqStatus=r['status']
        numberOfAttempt+=1
        print(reqStatus)
        #input()
        time.sleep(0.5*random.random())
        #print(f'Attempt {numberOfAttempt} for {company}')
        # try:

        results = r['results']
        try:
            results = results[0]

            location = geolocator.geocode(results["formatted_address"])
            if "Milan" in location.address:
                print(company + " was succesfully added with address:\n" + location.address + "\n")

                companyInfo["lt"].append(location.latitude)
                companyInfo["lg"].append(location.longitude)
                companyInfo["address"].append(location.address)
            else:
                print(company + " was skipped. "+location.address+" is not in Milano\n")
                companyInfo["lt"].append(np.nan)
                companyInfo["lg"].append(np.nan)
                companyInfo["address"].append(np.nan)
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


    dfCompanies.dropna(inplace = True)
    if len(dfCompanies)>0 and savePickle:
        dfCompanies.to_pickle(dfPath)

    return dfCompanies


# Green Zones
# The next step is to analyze how green each zone of Milan is. I used data on green zones in order to obtain Vegetation Concentration (area of green zones relative to total area).
def getGreenZonesDataframe(resource = "https://dati.comune.milano.it/dataset/da6bc86d-c27f-4256-84eb-86c35dad7d0e/resource/bd55cd57-4dd7-4d72-b182-de4f4b7de8c6/download/ds339_territorioambiente_aree-verdi-zona-superficie_2014.csv",
                          dfPath = "data/",
                          savePickle = True):

    """

    The function returns a dataframe with following features:
    - City zone number (ZONADEC): int
    - Total area of green zones (GreenArea): float
    - Total area of the city zone (TotalArea): float
    - Concentration of green calculated as GreenArea/TotalArea (GreenConc): float

    Source: https://dati.comune.milano.it/dataset/ds339-territorioambiente-aree-verdi-zona-superficie-2014
    Last Access Date: 11/08/2020

    Inputs:

        resource    (str):  URL of source, by now only default value should be used,
                            default: "https://dati.comune.milano.it/dataset/da6bc86d-c27f-4256-84eb-86c35dad7d0e/resource/bd55cd57-4dd7-4d72-b182-de4f4b7de8c6/download/ds339_territorioambiente_aree-verdi-zona-superficie_2014.csv"

        dfPath      (str):  path to save dataframes as pickle files,
                            default: "data/"

        savePickle  (bool): True, if pickle files should be saved to dfPath,
                            default: True


    Outputs:

        pandas DataFrame
    """
    try:
        dfGreenRaw = pd.read_csv(resource,
                             header = 0, sep = ";", encoding='latin-1')
    except:
        dfGreenRaw = pd.read_pickle(dfPath+'dfGreenRaw.pkl')

    dfGreenRaw["Superficie totale in mq"] = dfGreenRaw["Superficie totale in mq"].apply(lambda x: float(str(x).replace(",",".")))
    dfGreenRaw = dfGreenRaw.groupby(by="Zona").sum()
    dfGreenRaw = dfGreenRaw.reset_index()

    dfZones = pd.read_html('https://en.wikipedia.org/wiki/Municipalities_of_Milan',
                              flavor='bs4')
    dfZones = dfZones[1][:9]



    # Merging two Data frames and calculating the new column

    dfGreen = pd.concat([dfGreenRaw, dfZones],axis = 1)[["Zona","Superficie totale in mq","Area(km2)"]]
    #Had to rename column because geojson file had ZONADEC variable for zone number.
    #I'll need that when creating a map.
    dfGreen.columns = ["ZONADEC","GreenArea", "TotalArea"]

    #Converting m2 to km2
    dfGreen["GreenArea"] = dfGreen["GreenArea"]/1000000
    #Calculating concentration
    dfGreen["GreenConc"] = dfGreen["GreenArea"]/dfGreen["TotalArea"]

    if savePickle:
        dfGreenRaw.to_pickle(dfPath+'dfGreenRaw.pkl')
        dfZones.to_pickle(dfPath+'dfZones.pkl')
        dfGreen.to_pickle(dfPath+"dfGreen.pkl")

    return dfGreen

# ### 5. Air Quality
# In this section I analyze data on contamination for 2019 and 2020 obtained from stations located in Milano.
# I will calculate an Eco score which is an inverted value of mean normalized concentrations of contaminants.


def getAirQualityDataframe(resource = ['https://dati.comune.milano.it/dataset/3e752fec-06fd-421b-ae9b-4d5d7a177640/resource/698a58e6-f276-44e1-92b1-3d2b81a4ad47/download/qaria_datoariagiornostazione_2020-01-08.csv',
                                      'https://dati.comune.milano.it/dataset/ccf8b61d-728f-46e7-bee9-e685c7b6cd35/resource/88c1e729-420e-433f-9397-875b54aa471d/download/qaria_datoariagiornostazione_2021-01-01.csv'],
                          dfPath = "data/",
                          savePickle = True,
                          plot = False):

    """
    The function returns a dataframe with following features:
    - Station number (id_amat): int
    - Absolute median value of contaminant concentrations (valore): float
    - Median value of scaled contaminant concentrations (normv): float
    - Station name (name): str
    - Coordinates of a station as a list [latitude, longitude] (coords): list of floats
    - Latitude of a station (lt): float
    - Longitude of a station (lg): float


    Inputs:

        resource    (list of str):  URL of source, by now only default value should be used,
                            default: "https://dati.comune.milano.it/dataset/da6bc86d-c27f-4256-84eb-86c35dad7d0e/resource/bd55cd57-4dd7-4d72-b182-de4f4b7de8c6/download/ds339_territorioambiente_aree-verdi-zona-superficie_2014.csv"

        dfPath      (str):  path to save dataframes as pickle files,
                            default: "data/"

        savePickle  (bool): True, if pickle files should be saved to dfPath,
                            default: True

        plot  (bool):       if True, html bar plots for each station will be saved to dfPath,
                            default: False

    Outputs:

        pandas DataFrame
    """

    for i,r in enumerate(resource):
        if i==0:
            try:
                dfAirRaw = pd.read_csv(r, sep=None, engine='python')
            except:
                dfAirRaw=pd.DataFrame()
                print('Trouble getting CSV from ', r)
        else:
            try:
                dfT = pd.read_csv(r, sep=None, engine='python')
                dfAirRaw = pd.concat([dfAirRaw,dfT])
            except:
                print('Trouble getting CSV from ', r)
    if len(dfAirRaw)==0:
        print('Trouble getting external CSV for Air. Trying to get local file.')
        dfAirRaw = pd.read_pickle(dfPath+'dfAirRaw.pkl')
    dfAirRaw.dropna(inplace = True)

    dfAir = dfAirRaw
    dfAir['data']=pd.to_datetime(dfAir['data'], format='%Y-%m-%d')
    dfAir["normv"] = dfAir['valore'] / dfAir.groupby('inquinante')['valore'].transform('max')

    dfAir = dfAir.groupby(by="stazione_id").median()

    dfAir = dfAir.reset_index()
    dfAir.columns = ["id_amat", "valore", "normv"]


    # Retrieving data from geojson for stations.
    #Source: https://dati.comune.milano.it/dataset/ds484_stazioni_di_monitoraggio_inquinanti_atmosferici_dellarpa_sit/resource/635c6508-b335-48b1-b3c8-d43e78ad3380

    stationsPath = 'https://dati.comune.milano.it/dataset/d6960c75-0a02-4fda-a85f-3b1c4aa725d6/resource/635c6508-b335-48b1-b3c8-d43e78ad3380/download/qaria_stazione.geojson'

    try:
        stationsData = requests.get(stationsPath).json()
        dctStations = {"id_amat":[],
                       "name" : [],
                       "coords" : []}

        for i in stationsData["features"]:
            dctStations["id_amat"].append(i["properties"]["id_amat"])
            dctStations["name"].append(i["properties"]["nome"])
            dctStations["coords"].append([i["geometry"]["coordinates"][1], i["geometry"]["coordinates"][0]])

            dfStations = pd.DataFrame(dctStations)
    except:
        dfStations = pd.read_pickle(dfPath+"dfStations.pkl")
    dfAirStations = dfAir.merge(dfStations, left_on='id_amat', right_on='id_amat')

    # Need to separate the coordinates for further modelling
    dfAirStations["lt"] = dfAirStations["coords"].map(lambda x: x[0])
    dfAirStations["lg"] = dfAirStations["coords"].map(lambda x: x[1])

    if savePickle:
        dfAirRaw.to_pickle(dfPath+'dfAirRaw.pkl')
        dfAir.to_pickle(dfPath+'dfAir.pkl')
        dfStations.to_pickle(dfPath+"dfStations.pkl")
        dfAirStations.to_pickle(dfPath+"dfAirStations.pkl")

    if plot:
        for station in dfAirRaw["stazione_id"].unique():
            f = px.bar(dfAirRaw, x='data', y='normv', color='inquinante', title=f"Station #{station}")
            f.write_html(dfPath+f"Air_Station_{station}.html")
    return dfAirStations


def getLoc(address, annot = True, api_key = googleCreds.GOOGLE_API_KEY):
    """
    The function returns coordinates of a given address.

    Input:
    address (str): address
    annot (bool): if True, messages on result are displayed
    api_key (str): API key for GoogleV3 geocoder,
                   can be obtained at https://console.cloud.google.com/ (look for Geocoding API)

    Output:
    list(float): [latitude, longitude] or np.nan if not found
    """
    try:
        geolocator = GoogleV3(api_key = api_key)
        location = geolocator.geocode(address)
        if annot:
            print(address + " was succesfully added\n")
        return [location[1][0], location[1][1]]

    except:
        if annot:
            print(address + " was skipped. Probably was not found\n")
        return np.nan


def getAccommodationDF(minPrice = 500, maxPrice = 5000, maxPages = 10, dfPath = "data/", savePickle = True):

    """
    The function returns a dataframe with following features:
    - Accommodation id (id): str
    - Accommodation type (type): str
    - Accommodation address (address): str
    - Accommodation price (price): float
    - Coordinates of an accommodation as a list [latitude, longitude] (coords): list of floats

    The data is scrapped from: https://www.immobiliare.it/

    Inputs:

    minPrice    (float): minimum price (rent),
                default: 500

    maxPrice    (float): maxmum price (rent),
                default: 5000

    maxPages    (float): number of result pages to be processed (50 items per page),
                default: 10

    dfPath      (str):  path to save dataframes as pickle files,
                default: "data/"

    savePickle  (bool): True, if pickle files should be saved to dfPath,
          default: True

    Outputs:

    pandas DataFrame
    """
    minPrice, maxPrice = int(minPrice), int(maxPrice)

    urlList = [f"https://www.immobiliare.it/affitto-case/milano/?criterio=rilevanza&prezzoMinimo={minPrice}&prezzoMassimo={maxPrice}"]
    urlList+=[f"https://www.immobiliare.it/affitto-case/milano/?criterio=rilevanza&prezzoMinimo={minPrice}&prezzoMassimo={maxPrice}&pag={i+1}" for i in range(maxPages)]

    objects = {"id":[],
               "type":[],
               "address":[],
               "price":[]}

    for url in urlList:
        numOfObjects = 0
        for i in range(10): #We try 10 times to get data from the page until we get result
            session = requests.session()
            time.sleep(2*random.random())
            response = session.get(url)
            print(url)
            print(response.status_code)
            soup = BeautifulSoup(response.text, 'html.parser')

            try:
                for element in zip(soup.find_all('a', class_='Card_in-card__title__234gH'),soup.find_all('li', class_="Features_nd-list__item__3hWVx Features_in-feat__item__2-hIE Features_in-feat__item--main__3EFFl RealEstateListCard_in-realEstateListCard__features--main__2uSci")):
                    objID = element[0]['href'].split("/")[-2]
                    print(objID)
                    objType = element[0]['title'].split()[0]
                    print(objType)
                    objAddress = ' '.join(element[0]['title'].split()[1:])
                    print(objAddress)
                    objPrice = int(element[1].text.split("/")[0].split()[1].replace('.',''))
                    print(objPrice)
                    print('-'*25)
                    objects["id"].append(objID)
                    objects["type"].append(objType)
                    objects["address"].append(objAddress)
                    objects["price"].append(objPrice)
            except:
                print('No objects found on the page')

            numOfObjects = len(objects['id'])
            print(numOfObjects)
            if numOfObjects != 0:
                break

    print(f"All successful. {len(objects['id'])} objects has been added")

    dfObjects = pd.DataFrame(objects)
    dfObjects["coords"] = dfObjects["address"].map(getLoc)
    dfObjects.dropna(inplace = True)

    if len(dfObjects)!=0 and savePickle:
        dfObjects.to_pickle(dfPath+'dfAccommodationsExpanded.pkl')
    print(dfObjects)
    return dfObjects
