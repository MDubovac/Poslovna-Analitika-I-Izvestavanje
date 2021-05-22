# Service Module
# Implements CRUD operations from database.py
# Data format:
#     Primitive => print()
#     Complex    => DataFrame()

from database import *
from datetime import datetime
import pandas as pd
from tabulate import tabulate

# Implement read()
def allData():
    data = []

    for r in read():
        data.append({
            "Vreme Dolaska": str(r[1]),
            "Vreme Odlaska": str(r[2]),
            "Kupljeno Proizvoda": r[3],
            "Zarada": "$" + str(r[4])
        })

    df = pd.DataFrame(data)
    print(tabulate(df, headers='keys', tablefmt='psql'))

# Implement readByTime()
def getDataByTime(aTime, lTime):
    data = []

    for r in readByTime(aTime, lTime):
        data.append({
            "Kupljeno Proizvoda": r[3],
            "Zarada": r[4]
        })

    df = pd.DataFrame(data)
    print(tabulate(df, headers='keys', tablefmt='psql'))


# Implement readNumberOfPurchases()
def countPurchases(aTime, lTime):
    data = [] 
    for r in readNumberOfPurchases(aTime, lTime):
        data.append({
            "Kupljeno Proizvoda": r[3],
            "Vreme Placanja": str(r[2])
        })

    df = pd.DataFrame(data)

    print(tabulate(df, headers='keys', tablefmt='psql'))

# Implement countCustromers()
def countCustromers(aTime, lTime):
    data = numberOfCustomers(aTime, lTime)
    print(f"The number of customers: {len(data)}")
