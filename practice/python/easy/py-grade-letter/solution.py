# Xom Data · Letter grade from score
# Problem: https://xomdata.com/practice/py-grade-letter
# Solved: 2026-08-26

def grade_letter(score):
    match score // 10:
        case 10 | 9:
            return "A"
        case 8:
            return "B"
        case 7:
            return "C"
        case 6:
            return "D"
        case _:
            return "F"
