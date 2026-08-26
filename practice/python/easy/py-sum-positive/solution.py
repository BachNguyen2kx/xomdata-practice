# Xom Data · Total receipts
# Problem: https://xomdata.com/practice/py-sum-positive
# Solved: 2026-08-26

def sum_positive(numbers):
    a = 0
    for i in range(len(numbers)):
        if numbers[i] > 0:
            a += numbers[i]
    return a
