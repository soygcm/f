func sum(_ numbers: [Int]) -> Int {
    var sum = 0
    for x in numbers {
        sum += x
    }
    return sum
}

func sumAbsolute(_ numbers: [Int]) -> Int {
    for i in 0..<numbers.count {
        numbers[i] = abs(numbers[i])
    }
    return sum(numbers)
}

var numbers = [-5, -3, -2]
let result = sumAbsolute(numbers)
print(result)

let sumOfOriginalValues = sum(numbers)
print(sumOfOriginalValues)