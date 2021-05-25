# Database Module
# Connects to a database
# Does CRUD operations

import mysql.connector
import numpy as np
import random


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
    sql = f"SELECT * FROM customers WHERE from_time >= '{aTime}' AND to_time <= '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

# Return all customers - Filtered by time
def numberOfCustomers(aTime, lTime):
    sql = f"SELECT * FROM customers WHERE from_time >= '{aTime}' AND to_time <= '{lTime}'"
    my_cursor.execute(sql)
    result = my_cursor.fetchall()
    return result

# Insert into db
def insertTime(aTime, lTime, pBought, pPaid):
    sql = f"INSERT INTO customers (from_time ,to_time, products_bought, price_paid) VALUES ('{aTime}', '{lTime}', '{pBought}', '{pPaid}')"
    my_cursor.execute(sql)
    db.commit()
