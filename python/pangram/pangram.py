from string import ascii_lowercase

def is_pangram(sentence):
    return set(sentence.lower()).issuperset(set(ascii_lowercase))
