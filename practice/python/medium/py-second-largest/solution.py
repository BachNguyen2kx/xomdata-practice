# Xom Data · Second largest value
# Problem: https://xomdata.com/practice/py-second-largest
# Solved: 2026-09-07

def second_largest(numbers):
    numbers = sorted(set(numbers), reverse=True)

    if len(numbers) < 2:
        return None

    return numbers[1]
