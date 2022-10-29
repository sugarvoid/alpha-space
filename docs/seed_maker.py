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
    return "".join(choices(ascii_lowercase, k=4))

def get_new_seed()-> str:
    return (f"{random_with_N_digits(4)}{get_three_letters()}")

def add_day():
    pass
    #unix_date = datetime.now(timezone.utc) + timedelta(days=1)



def export_to_file(json_s):
    with open("random_seeds.json", "w") as outfile:
        outfile.write(json_s)


# s = SeedObject('2022-12-22', '123aaa')


def make_year_of_seeds():

    day = datetime.now(timezone.utc)

    for i in range(356):
        date = day.strftime("%Y-%m-%d")
        seed = get_new_seed()

        s = SeedObject(date, seed)
        add_seed_to_list(s)

        day = day + timedelta(days=1)
    print('done')


def add_seed_to_list(s: SeedObject):
    data.append({
        'Date': s.date,
        'Seed': s.seed,
    },)

def make_rand_seed_array():
    for i in range(200):
        rand_seeds.append(get_new_seed())

# for x in range(10):
#      print(f"{random_with_N_digits(3)}{get_three_letters()}")

#unix_date = datetime.now(timezone.utc) + timedelta(days=1)
#unix_date = datetime.utcfromtimestamp(unix_time).strftime('%Y-%m-%d')

#print("unix time is", unix_date.strftime("%Y-%m-%d"))

data = [ ]
rand_seeds = []

make_rand_seed_array()
# make_year_of_seeds()

jsonString = json.dumps(rand_seeds, indent=4)
export_to_file(jsonString)


print(data)