import string

ALPHABET = list(string.ascii_lowercase)

def is_pangram(sentence):
    if len(sentence) is 0:
        return False


    for a in ALPHABET:
        if not (a in str.lower(sentence)):
            return False

    return True
