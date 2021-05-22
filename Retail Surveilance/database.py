# Database Module
# Connects to a database
# Does CRUD operations

import mysql.connector
import numpy as np

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "",
    database = "retail_dataset"
)

my_cursor = db.cursor()

# Return all data
def read():
    sql = "SELECT * FROM customers"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

# Return all data - Filtered by time
def readByTime(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

# Return all purchases - Filtered by time
def readNumberOfPurchases(aTime, lTime):
    sql = f"COUNT(customer_id) FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    result = np.array(result)
    return result

# Return all customers - Filtered by time
def numberOfCustomers(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE arrive_time > '{aTime}' AND leave_time < '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

