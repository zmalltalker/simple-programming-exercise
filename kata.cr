# Yes, we *do* need a `for` macro
macro for(expr)
  {{expr.args.first.args.first}}.each do |{{expr.name.id}}|
    {{expr.args.first.block.body}}
  end
end

def asForLoop(numbers : Array(Int))
  sum = 0
  for number in numbers do
     sum = sum + number
  end
  sum
end

def asWhileLoop(numbers : Array(Int))
  sum = 0
  i = 0
  while i < numbers.size
    sum = sum + numbers[i]
    i = i + 1
  end
  return sum
end

def asRecursive(numbers : Array(Int))
  asRecursive(numbers, 0)
end

def asRecursive(numbers : Array(Int), sum : Int)
  return sum if numbers.empty?
  result = sum + numbers.pop
  asRecursive(numbers, result)
end

def runExample(results : Array(Int))
  results.each do |result|
    puts result
  end
  if results.all? {|r| r == 21 }
    exit(0)
  else
    exit(1)
  end
end

results = [asForLoop([1,2,3,4,5,6]),
           asWhileLoop([1,2,3,4,5,6]),
           asRecursive([1,2,3,4,5,6])]

runExample(results)
