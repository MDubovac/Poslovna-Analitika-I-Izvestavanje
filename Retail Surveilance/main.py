# Main Module
# Uses the data from service.py
# Check for user input

import os
from service import *
from ascii import *

# Welcome Message
print("All The Actions:")

# Check if the user is finished
finished = False

while finished == False:
    # Print Main menu && ask a question
    print(mainMenu)
    question = input("Enter the id of the wanted action: ")
    
    # Show all data
    if question == "1":
        os.system("cls")
        os.system("clear")
        allData() 

    # Show all data (by time)
    elif question == "2": 
        os.system("cls")
        os.system("clear")
        aTime = str(input("Enter the 1st time param: "))
        lTime = str(input("Enter the 2nd time param: "))
        getDataByTime(aTime, lTime)
    
    # Show all customers in store (by time)
    elif question == "3": 
        os.system("cls")
        os.system("clear")
        aTime = str(input("Enter the 1st time param: "))
        lTime = str(input("Enter the 2nd time param: "))
        countCustromers(aTime, lTime)

    # Exit the app
    elif question == "4":
        print("Bye!")
        finished = True
        exit()
    
    # In case no valid answer has been provided
    else:
        os.system("cls")
        os.system("clear")
        print("Please select a valid number.")

