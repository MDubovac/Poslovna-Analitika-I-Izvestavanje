from database import *
from datetime import datetime
import pandas as pd
from tabulate import tabulate

# Get all
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

# Get by time 
def getDataByTime(aTime, lTime):
    data = []

    for r in readByTime(aTime, lTime):
        data.append({
            "Kupljeno Proizvoda": r[3],
            "Zarada": r[4]
        })

    df = pd.DataFrame(data)
    print(tabulate(df, headers='keys', tablefmt='psql'))


# Count the purchases by time 
def countPurchases(aTime, lTime):
    data = [] 
    for r in readNumberOfPurchases(aTime, lTime):
        data.append({
            "Kupljeno Proizvoda": r[3],
            "Vreme Placanja": str(r[2])
        })

    df = pd.DataFrame(data)

    print(tabulate(df, headers='keys', tablefmt='psql'))

