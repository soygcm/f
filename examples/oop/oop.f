
Balance = Money
Ammount = Money
Bank Account =
    balance = Balance,
    owner = Text

Bank Account deposit Ammount = 
    bank account
        _ balance = balance + amount

Bank Account withdraw Ammount = 
    bank account
        _ balance = balance - amount

f = 
    my account = Bank Account ( Ammount 43 )
    my account = 
        my account 
            _ balance = 50
    show my account _ balance => 50


Size = Number
Text to chunks of Size = 
    size = 7
    cosa = 3.428
    chunks = List
    start = 0
    end = 7
    loop : 
        chunks + (text take start to end)
        start + 7
        end + 7
        repeat 
    return chunks





