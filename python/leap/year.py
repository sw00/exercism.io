def is_leap_year(year):
    divisors = [4, 100, 400]
    leap_rules = [[True, True, True], [True, False, False]]

    results = [year % d == 0 for d in divisors]

    return results in leap_rules
