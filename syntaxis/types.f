Book =
    pages = Number,
    author = Text,
    read = false,
    editorial = Text,

Article =
    pages = Number,
    author = Text,
    read = false,
    date = Text

Books = <Book> List
Lottery Numbers = <<Integer> Number> List

mark Book as read =
    book _ read = true

Book to article =
    Article book _ pages, book _ author, book _ read, "May"

f =
    lots of lottery = Lottery Numbers 4, 5, 8, 5.6 >> Error: 5.6 is not an Integer Number
    
    book = Book 341, "Mr Good", "Casa Nova"
    books = Books
        pages = 200,
        author = "Robert",
        editorial = "Ramanaski",
        pages = 523,
        author = "Boris"
        editorial = "Simie"

    book = book
        _ read = true

    article =
        book to article

    article blueprint =
        title = "Abogados",
        description = "La historia de los abogados"

    learn with bp = 
        article blueprint 
        "Top 10 consejos para programr", 
        "Aprenderas de expertos lo mejor para programar"

    title = learn with bp _ title

    show if book _ read:
        "You have read the book"
    else:
        "You haven't read the book"

    