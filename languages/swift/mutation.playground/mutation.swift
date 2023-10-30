func sum(_ numbers: [Int]) -> Int {
    var sum = 0
    for x in numbers {
        sum += x
    }
    return sum
}

func sumAbsolute(_ numbers: [Int]) -> Int {
    var tempNumbers = numbers
    for i in 0..<numbers.count {
        tempNumbers[i] = abs(tempNumbers[i])
    }
    return sum(tempNumbers)
}

// var numbers = [-5, -3, -2]
// let result = sumAbsolute(numbers)
// print(result)

// let sumOfOriginalValues = sum(numbers)
// print(sumOfOriginalValues)


struct BankAccount{
    private var _ammount: Int
    let owner: String

    var ammount: Int { self._ammount }

    init(ammount: Int, owner: String){
        _ammount = ammount
        self.owner = owner
    }

    mutating func deposit(ammount: Int){
        self._ammount += ammount
    }
}

func main(){
    var account = BankAccount(ammount: 34, owner: "Peter")
    account.deposit(ammount: 3)
    account = BankAccount(ammount: 50, owner: account.owner)
    print(account)
}

main()