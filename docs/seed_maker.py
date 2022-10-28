from random import choices, randint
from string import ascii_lowercase
from datetime import date, datetime, timezone, timedelta
import time



def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)

def get_three_letters(): 
    return "".join(choices(ascii_lowercase, k=3))

def add_day():
    pass
    #unix_date = datetime.now(timezone.utc) + timedelta(days=1)

for x in range(10):
    print(f"{random_with_N_digits(3)}{get_three_letters()}")

unix_date = datetime.now(timezone.utc) + timedelta(days=1)
#unix_date = datetime.utcfromtimestamp(unix_time).strftime('%Y-%m-%d')

print("unix time is", unix_date.strftime("%Y-%m-%d"))


