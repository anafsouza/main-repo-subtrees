def first_dict_key(d):
    """Return the first key of a dictionary."""
    if not d:
        return None
    return next(iter(d))