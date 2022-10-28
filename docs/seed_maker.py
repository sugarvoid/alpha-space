from random import choices, randint
from string import ascii_lowercase



def random_with_N_digits(n):
    range_start = 10**(n-1)
    range_end = (10**n)-1
    return randint(range_start, range_end)

def get_three_letters(): 
    return "".join(choices(ascii_lowercase, k=3))


for x in range(1000):
    print(f"{random_with_N_digits(3)}{get_three_letters()}")




