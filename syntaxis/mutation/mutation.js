function sum(numbers) {
    let sum = 0;
    for (let x of numbers) {
      sum += x;
    }
    return sum;
  }
  
  function sumAbsolute(numbers ) {
    for (let i = 0; i < numbers.length; i++) {
      numbers[i] = Math.abs(numbers[i]);
    }
    return sum(numbers);
  }
  
  let numbers = [-5, -3, -2];
  
  let result = sumAbsolute(numbers); // Pass a copy to avoid mutating the original array
  console.log(result); // This will print 10
  
  let sumOfOriginalValues = sum(numbers);
  console.log(sumOfOriginalValues); // This will print -10, as the original array remains unchanged
  