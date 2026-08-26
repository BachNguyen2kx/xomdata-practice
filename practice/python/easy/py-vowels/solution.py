# Xom Data · Count vowels in a name
# Problem: https://xomdata.com/practice/py-vowels
# Solved: 2026-08-26

def count_vowels(name):
    count = 0
    for char in name:
        if char.lower() in "aeiou":
            count += 1

    return count
