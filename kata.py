import sys

def numbers():
    return [1,2,3,4,5,6]

def as_for_loop(list):
    result = 0
    for n in list:
        result = result + n

    return result

def as_while_loop(list):
    result = 0
    while len(list) > 0:
        result += list.pop(0)

    return result

def as_recursion(list, value=0):
    if len(list) == 0:
        return value

    n = list.pop(0)
    return as_recursion(list, n+value)

print "As for loop: ", as_for_loop(numbers())
print "As while loop: ", as_while_loop(numbers())
print "As recursion: ", as_recursion(numbers())

exit_code = 0
results_ok = [(result == 21) for result in [as_for_loop(numbers()), as_while_loop(numbers()), as_recursion(numbers())]]

for r in results_ok:
    if not r:
        exit_code += 1

sys.exit(exit_code)
