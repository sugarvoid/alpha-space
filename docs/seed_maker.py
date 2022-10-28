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

def add_day():
    pass
    #unix_date = datetime.now(timezone.utc) + timedelta(days=1)

def export_to_file(json_s):
    with open("out_put.json", "w") as outfile:
        outfile.write(json_s)


s = SeedObject('2022-12-22', '123aaa')




data = [ ]

d = s.date
sv = s.seed

data.append({
        'Date': d,
        'Seed': sv,
    },)

data.append({
        'Date': d,
        'Seed': sv,
    },)

data.append({
    'Date': d,
    'Seed': sv,
},)



list_to_export = [
    {
        'Date': '2022-12-22',
        'Seed': '123aaa',
    },
    {
        'Date': '2022-10-22',
        'Seed': '123bbb',
    },

]


# for x in range(10):
#     print(f"{random_with_N_digits(3)}{get_three_letters()}")

unix_date = datetime.now(timezone.utc) + timedelta(days=1)
#unix_date = datetime.utcfromtimestamp(unix_time).strftime('%Y-%m-%d')

print("unix time is", unix_date.strftime("%Y-%m-%d"))

jsonString = json.dumps(data, indent=4)




export_to_file(jsonString)

