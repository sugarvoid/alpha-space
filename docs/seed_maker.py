from random import choices, randint
from string import ascii_lowercase
from datetime import date, datetime, timezone, timedelta
import time
import json


class SeedObject():
    def __init__(self, date, seed):
        self.date = date
        self.seed = seed

def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)

def get_three_letters(): 
    return "".join(choices(ascii_lowercase, k=3))

def get_new_seed()-> str:
    return (f"{random_with_N_digits(3)}{get_three_letters()}")

def add_day():
    pass
    #unix_date = datetime.now(timezone.utc) + timedelta(days=1)



def export_to_file(json_s):
    with open("out_put.json", "w") as outfile:
        outfile.write(json_s)


s = SeedObject('2022-12-22', '123aaa')




data = [ ]


def add_seed_to_list(s: SeedObject):
    data.append({
        'Date': s.date,
        'Seed': s.seed,
    },)


for x in range(10):
     print(f"{random_with_N_digits(3)}{get_three_letters()}")

unix_date = datetime.now(timezone.utc) + timedelta(days=1)
#unix_date = datetime.utcfromtimestamp(unix_time).strftime('%Y-%m-%d')

print("unix time is", unix_date.strftime("%Y-%m-%d"))

jsonString = json.dumps(data, indent=4)




export_to_file(jsonString)

