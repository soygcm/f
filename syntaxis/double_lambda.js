
function enumeratorStartingIn(startIn, list, element, perform){
    if(typeof startIn !== 'number'){
        return
    }

    if(!Array.isArray(list)){
        return
    }

    if(typeof perform !== 'function'){
        return
    }

    var index = list.indexOf(element)
    perform(index + startIn)
}

function forEach(list, perform){
    if(!Array.isArray(list)){
        return
    }

    if(typeof perform !== 'function'){
        return
    }

    for (let index = 0; index < list.length; index++) {
        const element = list[index];
        perform(element)
    }
}

function main(){
    var lista = [8,4,5]
    forEach(lista, (element)=>{
        enumeratorStartingIn(1, lista, element, (indice)=>{
            console.log(`${indice}. ${element}`)
        })
    })
}

main()