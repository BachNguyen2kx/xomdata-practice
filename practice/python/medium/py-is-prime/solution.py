# Xom Data · Check prime number
# Problem: https://xomdata.com/practice/py-is-prime
# Solved: 2026-08-26

def is_prime(n):
    if n<2:
        return False
    if n>=2:
        i=2
        while i < n:
            if n % i == 0:
                return False
            i += 1
        return True

    pass
