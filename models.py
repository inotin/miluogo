from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import PolynomialFeatures
import numpy as np
import pickle


def predictContamination(lt, lg, model):
    """ The function returns contamination values based on location
    Input:
    lt (float): latitude
    lg (float): longitude

    Output:
    Scaled contamaination value
    """
    pf = PolynomialFeatures(degree=3)
    return model.predict(pf.fit_transform([np.array([lt,lg])]))[0][0]

def generateContaminationModel(data):
    """
    The function generates linear regression model with the 3rd degree
    polynomial features for contamination and saves it as pickle file for the
    further use
    Input:
    data (pandas dataframe): dataframe with columns 'lt' - latitude,
                                                    'lg' - longnitude,
                                                    'normv' - contamination value

    Output:
    sklearn fitted linear regression model
    """
    pf = PolynomialFeatures(degree=3)
    X = pf.fit_transform(data[["lt","lg"]])

    y = data[["normv"]]
    lr = LinearRegression()
    lr.fit(X,y)
    pkl_filename = 'models/normv_lt_lg_LinearRegression.pkl'
    with open(pkl_filename, 'wb') as file:
        pickle.dump(lr, file)
    return lr
