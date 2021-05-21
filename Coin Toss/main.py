import random

glava = 0 
pismo = 0

for i in range(1000):
        rez = random.randint(0, 2)
        if rez == 0 or rez == 1:
                glava += 1
        else:
                pismo += 1
                        

print(f"Glava: {glava}")
print(f"Pismo: {pismo}")