function access(object, action){
    return {...object, ...action(object)}
}

function main(){
    var cosas = {
        zapatos: 4,
        tenis: 2
    }
    console.log(cosas)
    cosas = access(cosas, ({zapatos})=>{
        return {
            zapatos: zapatos + 1
        }
    })
    // cosas = {...cosas, zapatos: cosas.zapatos+1}
    console.log(cosas)
}

main()