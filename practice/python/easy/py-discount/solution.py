# Xom Data · Compute price after discount
# Problem: https://xomdata.com/practice/py-discount
# Solved: 2026-08-26

def final_price(price, percent):
    return round((price - percent/100*price),2)
