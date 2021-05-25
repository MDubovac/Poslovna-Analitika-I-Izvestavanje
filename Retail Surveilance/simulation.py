# Simulation Module
# Simulates the number of customers in a day
# Adds them to the database

from database import *
import random

# Simulate prices and products
for i in range(100):

    prices = [0.99, 1.99, 2.99, 3.99, 4.99, 5.99, 6.99, 7.99, 9.99, 10.99, 11.99, 12.99, 13.99, 14.99, 15.99]

    rez = random.randint(0, 7)

    if rez == 0:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("09:00:00", "10:00:00", prod, total)

    elif rez == 1:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("10:00:00", "11:00:00", prod, total)

    elif rez == 2:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("11:00:00", "12:00:00", prod, total)

    elif rez == 3:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("12:00:00", "13:00:00", prod, total)

    elif rez == 4:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("13:00:00", "14:00:00", prod, total)

    elif rez == 5:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("14:00:00", "15:00:00", prod, total)

    elif rez == 6:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("15:00:00", "16:00:00", prod, total)

    else:
        prod = random.randint(1, 15)
        total = prod * prices[random.randint(0, 14)]
        insertTime("16:00:00", "17:00:00", prod, total)






