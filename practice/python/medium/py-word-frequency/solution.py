# Xom Data · Word frequency count in text
# Problem: https://xomdata.com/practice/py-word-frequency
# Solved: 2026-08-26

def word_frequency(text):
    words = text.split()
    result = {}
    for word in words:
        if word in result:
            result[word] += 1
        else:
            result[word] = 1
    return result
