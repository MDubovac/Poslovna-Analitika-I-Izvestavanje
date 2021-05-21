from database import *
import pandas as pd

# Get all
def allData():
    data = []

    for r in read():
        data.append({
            "Vreme Dolaska": r[1],
            "Vreme Odlaska": r[2],
            "Kupljeno Proizvoda": r[3],
            "Zarada": r[4]
        })

    df = pd.DataFrame(data)
    print(df)

# Get by time 
def getDataByTime(aTime, lTime):
    data = []

    for r in readByTime(aTime, lTime):
        data.append({
            "Kupljeno Proizvoda": r[3],
            "Zarada": r[4]
        })

    df = pd.DataFrame(data)
    print(df)


# Count the purchases by time 
def countPurchases(aTime, lTime):
    data = readNumberOfPurchases(aTime, lTime)
    print(f"Prodato je {data} proizvoda.")

