
import numpy as np
import tflearn
import pandas as pd
from tflearn.layers.core import input_data, dropout, fully_connected
from tflearn.layers.estimator import regression
import scipy.io as sio
from sklearn import cross_validation


LR = 1e-3  # learning rate


def neural_network_model(input_size):

    network = input_data(shape = [None, input_size], name='input')

    network = fully_connected(network, 128, activation='relu')
    network = dropout(network, 0.8)

    network = fully_connected(network, 256, activation='relu')
    network = dropout(network, 0.8)

    network = fully_connected(network, 512, activation='relu')
    network = dropout(network, 0.8)

    network = fully_connected(network, 256, activation='relu')
    network = dropout(network, 0.8)

    network = fully_connected(network, 128, activation='relu')
    network = dropout(network, 0.8)

    network = fully_connected(network, 5, activation='softmax')
    network = regression(network, optimizer='adam', learning_rate=LR, loss='categorical_crossentropy', name='targets')

    model = tflearn.DNN(network, tensorboard_dir='log')

    return model


def train_model(X, Y):


    model = neural_network_model(input_size = len(X[0]))

    model.fit({'input':X},{'targets':Y}, n_epoch=5, snapshot_step=500, show_metric=True, run_id='Deep_classifier')

    return model


xmat_contents = sio.loadmat('x.mat')
ymat_contents = sio.loadmat('y.mat')
x_predict_mat = sio.loadmat('x_nn_predict.mat')

X = np.array(xmat_contents['x'])
Y = np.array(ymat_contents['y'])
X_predict = np.array(x_predict_mat['x_nn_predict'])

X_train, X_test, Y_train, Y_test = cross_validation.train_test_split(X, Y, test_size=0.2)

# train the network
#model = train_model(X_train, Y_train)
#model.save('deep_classifier2.model')
# read the result after training
model = neural_network_model(input_size = len(X[0]))
model.load('deep_classifier2.model')

#Y_modelresult = model.predict(X_test)
Y_modelresult = model.predict(X_predict)


# calculate training accuracy
accuracy = 0

#print(Y_modelresult)

for i in range(0, len(Y_modelresult)):
    lowValY = max(Y_modelresult[i]) # label
    low_values_flags = Y_modelresult[i] < lowValY
    high_values_flags = Y_modelresult[i] >= lowValY
    Y_modelresult[i][low_values_flags] = 0
    Y_modelresult[i][high_values_flags] = 1
    if np.array_equal(Y_modelresult[i], Y_test[i]):
        accuracy += 1

accuracy /= len(Y_modelresult)

y_nn_predict1 = Y_modelresult

print (accuracy)


for i in range(0 , len(Y_modelresult)):
    for j in range(0, len(Y_modelresult[i])):
        if Y_modelresult[i][j] == 1:
            y_nn_predict1[i][j:] = 1

y_nn_predict = y_nn_predict1[:,:-1]


print (y_nn_predict)
#print (Y_modelresult)

sio.savemat('y_nn_predict.mat', mdict={'y_nn_predict' : y_nn_predict})

df = pd.DataFrame(y_nn_predict)
df.to_csv("y_nn_predict.csv")


