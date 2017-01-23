#Write three functions that compute the sum of the numbers in a given list using a for-loop, a while-loop, and recursion.
#

def as_for_loop(list)
  result = 0
  for n in list
    result = result + n
  end
  return result
end

def as_while_loop(list)
  result = 0
  while !list.empty?
    i = list.shift
    result += i
  end
  result
end

def as_recursion(list, value=0)
  return value if list.empty?
  n = list.shift
  as_recursion(list, n+value)
end

def list
  [1, 2, 3, 4, 5, 6]
end

$exitcode = 0

def dbg(items, result)
  print items, result, "\n"
  $exitcode = $exitcode + 1 if result != 21
end

dbg "As for loop: ", as_for_loop(list)
dbg "As while loop: ", as_while_loop(list)
dbg "As recursion: ", as_recursion(list)
exit $exitcode
