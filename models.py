

from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import PolynomialFeatures
import numpy as np
import pickle

def getOptimalNN(n_input, n_samples, n_classes = 1, classification = False, alpha = 5, n_layers = 1):
    """
    source: https://stats.stackexchange.com/questions/181/how-to-choose-the-number-of-hidden-layers-and-nodes-in-a-feedforward-neural-netw
    alpha [0,10]

    | Number of Hidden Layers | Result |

     0 - Only capable of representing linear separable functions or decisions.

     1 - Can approximate any function that contains a continuous mapping
    from one finite space to another.

     2 - Can represent an arbitrary decision boundary to arbitrary accuracy
    with rational activation functions and can approximate any smooth
    mapping to any accuracy.

    """

    res = [n_input]
    for i in range(n_layers):
        res.append(int(n_samples/(alpha*(n_input+n_classes))))
    if classification:
        print("Check n_classes if softmax is used. By default n_classes=1 which is suitable for regression")
    res.append(n_classes)
    return res

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
    pf = PolynomialFeatures(degree=3)
    X = pf.fit_transform(data[["lt","lg"]])

    y = data[["normv"]]
    lr = LinearRegression()
    lr.fit(X,y)
    pkl_filename = 'models/normv_lt_lg_LinearRegression.pkl'
    with open(pkl_filename, 'wb') as file:
        pickle.dump(lr, file)
    return lr

#
# pf = PolynomialFeatures(degree=3)
# X = pf.fit_transform(dfAirScaledMedianStations[["lt","lg"]])
#
# y = dfAirScaledMedianStations[["normv"]]
# lr = LinearRegression()
# lr.fit(X,y)
#
# print(lr.coef_)
# print(lr.intercept_)



# In[51]:
#
#
# #checking
# predictContamination(45.474098, 9.23478)
#
#
# # Saving the model for further map creation.
#
# # In[52]:
#
#
# import pickle
#
# pkl_filename = "lr.pkl"
# with open(pkl_filename, 'wb') as file:
#     pickle.dump(lr, file)
