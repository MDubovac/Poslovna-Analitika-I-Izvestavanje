import mysql.connector

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
    return len(result)

