import Darwin
func byForLoop(numbers: [Int]) -> Int {
    var sum = 0
    for num in numbers {
        sum = sum + num
    }
    return sum
}

func byWhileLoop(numbers: [Int]) -> Int {
    var sum = 0
    var i = 0
    while true {
        if (i == numbers.count){
            break
        }
        sum = sum + numbers[i]
        i = i + 1
    }
    return sum
}

func isCorrectAnswer(number: Int) -> Int {
    return (number == 21) ? 0 : 1
}

func byRecursion(numbers: [Int], sum: Int) -> Int {
    var _numbers = numbers
    if (numbers.count == 0){
        return sum
    }
    let n = _numbers.removeLast()
    let sum = sum + n
    return byRecursion(numbers: _numbers, sum: sum)
}

let numbers = [1, 2, 3, 4, 5, 6]

let result = byForLoop(numbers: numbers)
let result2 = byWhileLoop(numbers: numbers)
let result3 = byRecursion(numbers: numbers, sum: 0)

print(result)
print(result2)
print(result3)

var exitCodes = [isCorrectAnswer(number:result),
                isCorrectAnswer(number:result2),
                isCorrectAnswer(number:result3)]
let exitCode = exitCodes.reduce(0, +)
exit(Int32(exitCode))
