function access(object, action){
    var new_object = action(object)
    if(typeof new_object !== "object"){
        return new_object
    }
    for (const key in new_object) {
        if (!object.hasOwnProperty(key)) {
            return new_object
        }
    }
    return {...object, ...action(object)}
}

function Book({pages, author}){
    return {
        pages,
        author,
        read: false
    }
}

function Article({pages, author, date}){
    return {
        pages,
        author,
        date
    }
}

function main(){

    var book = Book({pages: 4, author: "Robert"})
    console.log(book)

    book = access(book, ({})=>{
        return {
            read: true
        }
    })

    console.log(book)

    var is_read = access(book, ({read})=>{
        return read
    })

    var article = access(book, ({author, pages})=>{
        return Article({author, pages, date: "Marzo"})
    })

    console.log(article)

    if(is_read){
        console.log("You have read the book")
    }else{
        console.log("You haven't read the book")
    }

}

main()