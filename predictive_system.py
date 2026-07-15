import numpy as np
import pickle

# Loading the trained modelpredictive_system.py
loaded_model = pickle.load(open("C:/Users/User/Documents/Machine/trained_model.sav", "rb"))

input_data = [40,1,0,94,229,0,1,115,0,3.7,1,1]
input_data_numpy = np.array(input_data)
input_data_reshape = input_data_numpy.reshape(1, -1)

prediction = loaded_model.predict(input_data_reshape)
print(prediction)

if prediction[0] == 0:
    print("This individual does not have Cardiovascular Disease")

else:
    print("This individual has Cardiovascular Disease")