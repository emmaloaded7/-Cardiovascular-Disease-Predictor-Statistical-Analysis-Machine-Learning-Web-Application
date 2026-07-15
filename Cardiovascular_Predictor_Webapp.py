import numpy as np
import pickle
import streamlit as st

# Loading the trained model
loaded_model = pickle.load(open("C:/Users/User/Documents/Machine/trained_model.sav", "rb"))

# Creating a function for prediction on the webapp

def cardiovascular_prediction(input_data):

    input_data_numpy = np.array(input_data)
    input_data_reshape = input_data_numpy.reshape(1, -1)

    prediction = loaded_model.predict(input_data_reshape)
    print(prediction)

    if prediction[0] == 0:
        return "This individual does not have Cardiovascular Disease"

    else:
        return "This individual has Cardiovascular Disease"


    # Creating a web app

def main():
    st.title("Cardiovascular Prediction Webapp")

    # Input data for user



    age = st.text_input("Age")
    gender = st.text_input("Gender")
    chestpain = st.text_input("Chestpain")
    restingBP = st.text_input("Resting BP")
    serumcholestrol = st.text_input("Serum Cholestrol")
    fastingbloodsugar = st.text_input("Fasting Bloodsugar")
    restingrelectro = st.text_input("Resting Relectro")
    maxheartrate = st.text_input("Max Heart Rate")
    exerciseangia = st.text_input("Exercise And Antigen")
    oldpeak = st.text_input("Old Peak")
    slope = st.text_input("Slope")
    noofmajorvessels = st.text_input("No of Major Vessels")

    # The code for prediction

    diagnosis = ""

    # Creating button

    if st.button("Result"):

        diagnosis = cardiovascular_prediction([age, gender, chestpain, restingBP,
                                           serumcholestrol, fastingbloodsugar,
                                           restingrelectro, maxheartrate,
                                           exerciseangia, oldpeak, slope,
                                           noofmajorvessels])

        st.success(diagnosis)

if __name__ == "__main__":
    main()