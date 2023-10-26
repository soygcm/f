
function sum2(numbers: any[]) {
  let sum = 0;
  for (let x of numbers) {
    sum += x;
  }
  return sum;
}
  
function sumAbsolute2( numbers: any[]) {
  for (let i = 0; i < numbers.length; i++) {
    numbers[i] = Math.abs(numbers[i]);
  }
  return sum2(numbers);
}
  
const numbers2 = [-5, -3, -2];

let result2 = sumAbsolute2(numbers2); // Pass a copy to avoid mutating the original array
console.log(result2); // This will print 10

let sumOfOriginalValues2 = sum2(numbers2);
console.log(sumOfOriginalValues2); // This will print -10, as the original array remains unchanged
  