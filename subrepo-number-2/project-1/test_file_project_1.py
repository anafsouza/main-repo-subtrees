def fibbonacci_number(n):
    """Compute the nth Fibonacci number.

    Args:
        n: The position in the Fibonacci sequence.

    Returns:
        The nth Fibonacci number.
    """
    
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibbonacci_number(n - 1) + fibbonacci_number(n - 2)
    
def factorial(n):
    """Compute the factorial of a number.

    Args:
        n: The number to compute the factorial for.

    Returns:
        The factorial of n.
    """
    
    if n < 0:
        raise ValueError("Factorial is not defined for negative numbers.")
    elif n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)
