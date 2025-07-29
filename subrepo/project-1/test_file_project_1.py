# Some mathematical operations.
def add(a, b):
    """Compute the sum of two numbers.
    Args:
        a (int, float): The first number.
        b (int, float): The second number.

    Returns:
        int, float: The sum of a and b.
    """
    return a + b

def subtract(a, b):
    """Compute the difference between two numbers.
    Args:
        a (int, float): The first number.
        b (int, float): The second number.

    Returns:
        int, float: The difference of a and b.
    """
    return a - b

def multiply(a, b):
    """Compute the product of two numbers.
    Args:
        a (int, float): The first number.
        b (int, float): The second number.  
    Returns:
        int, float: The product of a and b. 
    """
    return a * b

def divide(a, b):
    """Compute the division of two numbers.
    Args:
        a (int, float): The numerator.
        b (int, float): The denominator.

    Returns:
        float: The result of a divided by b.
    
    Raises:
        ZeroDivisionError: If b is zero.
    """
    if b == 0:
        raise ZeroDivisionError("Division by zero is not allowed.")
    return a / b
