
var assert = require('assert');

// function pack(list, super_list = []){
//     if(list.length == 0){
//         return super_list
//     }

//     const [head, tail] = list
//     const [super_head, ...super_tail] = super_list
//     const head_super_head = (super_head || [])[0]

//     if(
//         head === head_super_head
//          ){
//          return pack(tail, [ [head, ...super_head], ...super_tail])
//     }

//     if(
//         head !== head_super_head
//          ){
//          return pack(tail, [[head], ...super_list]) 
//     }

// }

// function pack(list, super_list = []){
//     if (!Array.isArray(list)){
//         return
//     }
//     return list.reduce((acc, el, i)=>{
//         const [super_head, ...super_tail] = acc
//         const head_super_head = (super_head || [])[0]

//         if(
//             el === head_super_head
//                 ){
//                 return [ [el, ...super_head], ...super_tail]
//         }
    
//         if(
//             el !== head_super_head
//                 ){
//                 return [[el], ...acc] 
//         }
//     }, super_list)
// }

function test(){
    var packed = pack([])
    assert.deepEqual(packed, []);

    //a

    var packed = pack(["a"])
    assert.deepEqual(packed, [["a"]]);

    var packed = pack(["a"], [["a"]])
    assert.deepEqual(packed, [["a", "a"]]);

    var packed = pack(["a"], [["b"]])
    assert.deepEqual(packed, [["a"], ["b"]]);

    // //a, b
    var packed = pack(["b", "a"])
    assert.deepEqual(packed, [["a"], ["b"]]);

    var packed = pack(["a", "b"], [["a"]])
    assert.deepEqual(packed, [["b"], ["a", "a"]]);
    
    // full
    var packed = pack(["a", "a", "a", "a", "b", "c", "c", "a", "a"])
    assert.deepEqual(packed.reverse(), [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"]]);

    console.log('tests passed')
}
test()
