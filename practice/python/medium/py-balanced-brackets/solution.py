# Xom Data · Valid parentheses
# Problem: https://xomdata.com/practice/py-balanced-brackets
# Solved: 2026-09-07

def is_balanced(text):
    count = 0
    for char in text:
        if char == "(":
            count += 1

        elif char == ")":
            count -= 1

            if count < 0:
                return False

    return count == 0
