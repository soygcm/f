Book =
    pages = Number,
    author = Text,
    read = false,
    editorial = Text,

Books = <Book> List
Numbers = <<Integer> Number> List

mark Book as read =
    book _ read = true

f =
    lots of lottery = Numbers 4, 5, 8, 5.6 >> Error: 5.6 is not an Integer Number
    
    book = Book 341, "Mr Good", "Casa Nova"
    books = Books
        pages = 200,
        author = "Robert",
        editorial = "Ramanaski",
        pages = 523,
        author = "Boris"
        editorial = "Simie"
    

    