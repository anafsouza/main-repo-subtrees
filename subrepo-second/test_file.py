def fibbonacci_number(n):
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibbonacci_number(n - 1) + fibbonacci_number(n - 2)