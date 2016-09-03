import string

ALPHABET = list(string.ascii_lowercase)

def is_pangram(sentence):
    return set(sentence.lower()).issuperset(set(ALPHABET))
