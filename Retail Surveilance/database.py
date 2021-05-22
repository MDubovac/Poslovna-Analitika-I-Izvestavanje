import mysql.connector
import numpy as np

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "retail_dataset"
)

my_cursor = db.cursor()

def read():
    sql = "SELECT * FROM customers"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

def readByTime(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

def readNumberOfPurchases(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    result = np.array(result)
    return result

def numberOfCustomers(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return 
