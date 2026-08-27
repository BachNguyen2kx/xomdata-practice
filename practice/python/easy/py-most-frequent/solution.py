# Xom Data · Most frequent character
# Problem: https://xomdata.com/practice/py-most-frequent
# Solved: 2026-08-27

def most_frequent(text):
    max_count = 0
    result = ""

    for char in text:
        count = text.count(char)

        if count > max_count:
            max_count = count
            result = char

    return result
