According to Alan Kay, OOP is about messagin, and many other folks say you can do OOP with fp languages, let's try.

```smalltalk
Object subclass: BankAccount [
    | balance |

    BankAccount>>initialize: initialBalance [
        balance := initialBalance.
    ]

    BankAccount>>deposit: amount [
        balance := balance + amount.
    ]

    BankAccount>>withdraw: amount [
        balance := balance - amount.
    ]

    BankAccount>>balance [
        ^balance.
    ]
]

myAccount := BankAccount new.
myAccount initialize: 1000. "Initial balance of $1000"
myAccount deposit: 500. "Deposit $500"
myAccount withdraw: 200. "Withdraw $200"
balance := myAccount balance. "Check the balance"
```