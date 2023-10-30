# f
¿Do you want to learn to talk with computers and other coders?
f is a hypothetical programming language, created to explore the limits of formal syntax that can be easy to understand.

    Warning: This can be your first or last programming language.

**Other popular names:** "λ", "Efe", "pseudo code".

**Meaning:** Efe has multiple very well known meanings: "pay respects", "fuck", "fail", and of course the classic "functions".

## Hello.

Hey, this is probably the code that Steve Jobs used to introduce the first Macintosh to the world. Press F to pay respects.

```
show script text "Hello. "
```

## Variables

You can define any type of value using the `=` (equal) token.

```
age = 3
```

And then you can update the value.

```
age = 4
```

Did you know that some coders and languages hates variables? they prefer constants or any other possibility as lazy, static, public, private, etc. With f you don't need to worry about this unnecesary concepts.

## Basic Types

You can communicate with the computer and other coders using many data types: `Text, Number, Boolean, List`

```
one third = 0.3...
the ultimate question of life the universe and everything = 42
c = 186,282 miles per second
diseased = 0xD15EA5ED
coding is cool = true
list = 0, 1, 1, 2, 3, 5, 8, 13
```

## Start Coding

The idea behind coding is very simple, the computer receives some input from you or the humans that are using your programs and then the computer process the input and returns an output.

Let's start with a practical example. This piece of code is intended to find out if a certain complex number belongs to the mandelbrot set.

```
Iterations = Number

is <c>, <z> Complex in mandelbrot Iterations = 
    if z > 2 : false
    if iterations == 0 : true 
    z = z ^ 2 + c
    is c, z in mandelbrot (iterations - 1)

f = 
    c = Complex 0.5, 0.5
    iterations = 1000
    if is c in mandelbrot iterations:
        show c, " is likely in the Mandelbrot set."
    else:
        show c, " is not in the Mandelbrot set."
```

Oops! Is this too much?

Are you confortable with this type of problems? If not, maybe this is a great opportunity to show you the strong of f to make complex things easier.

So let's show you the mandelbrot first:

```
                                                                *                                

                                                            **                                   
                                                         ****** *                                
                                                         ********                                
                                                          *****                                  
                                                    *************** *                            
                                               ***********************  ***                      
                                           *   ****************************       ?               
                                           ********************************                      
                                           *********************************  *                  
                                          ************************************                   
                           ** ******     ************************************                    
                          *************  ************************************                    
                         *************** ***********************************                     
                     ******************************************************                      
 ****************************************************************0*******                        
                     ******************************************************                      
                         *************** ***********************************                     
                          *************  ************************************                    
                           ** ******     ************************************                    
                                          ************************************                   
                                           *********************************  *                  
                                           ********************************                      
                                           *   ****************************                      
                                               ***********************  ***                      
                                                    *************** *                            
                                                          *****                                  
                                                         ********                                
                                                         ****** *                                
                                                            **                                   

                                                                *
```

You don't need to know too much about complex numbers, you just need to know they are created with a couple of numbers `c = Complex 0.5, 0.5` (That is column 83 and row 8 aprox in our drawing above, represented with `?`). So basically the program tell you if that complex number is `*` (part of the set) or ` ` (not part of the set).

So let's go line by line. We start indicating that iterations is a number.

```
Iterations = Number
``` 

Then we have a function name definition. Let's talk about functions more deeply in the next section.

```
is <c>, <z> Complex in mandelbrot Iterations = 
```



## Functions

### Inputs

`<c>, <z> Complex` You can define any function input with  `<>` (less than, greater than) tokens. Then you shall indicate the type of the inputs using upper case words. 

* You can play around with the inputs position, you can define inputs in the middle or at the end. 
* Efe will look forward to find the type of the input, if there is no input will show `Unknown Type Error`.
* The input name will be infered from the type as in `Iterations`.
* All the inputs are optional. Efe will use the default values from the type. So you can use this function in multiple ways:

```
c = Complex 0.5, 0.5
z = Complex 0.4, 0.4
iterations = 30
result = is c, z in mandelbrot iterations
result = is c in mandelbrot iterations
```

* You can define default value inside the `<>`.

```
is <c>, <z> Complex in mandelbrot <iterations = 1000> = 
```

* You can define use cases (not very usefull in this example) inside the `<>`.

```
is <c>, <z> Complex in mandelbrot <0> Iterations = true
is <c>, <z > 2> Complex in mandelbrot Iterations = false
```

* You can define function with no inputs. In the next example every time you use `z` Efe will calculate the value as is indicated. Efe will use cache calculations, since all functions will return exactly the same output for the same input.

```
z = z ^ 2 + c
```

### Return

Every function shall return an output. As we mentioned above, every function without exeption shall return exactly the same output for the same given input.

* The output can be predefined. All the variables in f are just functions without inputs.

```
iterations = 1000
```

* The output can be the result of using other function.

```
c = Complex 0.5, 0.5
result = is c in mandelbrot iterations
```

* The output can use the same function. In this case you shall use the function with a different input, and you shall include a escape use case.

```
is <c>, <z> Complex in mandelbrot Iterations = 
    > ...
    is c, z in mandelbrot (iterations - 1)
```

* The output SHALL NOT be `Nothing`. In the next example the function is not completed because creating the variable `z` returns `Nothing`. So you will see `Function Incomplete Error`.

```
is <c>, <z> Complex in mandelbrot Iterations = 
    z = z ^ 2 + c

```

### Conditionals

Efe includes hundreds of helpfull functions.
Conditionals are a group of functions usefull to tell the computer what to do in different cases.

* If `if Condition Lambda`

```
if age > 18 : "Adult"
```

* If else `if Condition <true lambda> else <false lambda> Lambda`

```
if is c in mandelbrot iterations :
    show c, " is likely in the Mandelbrot set."
else :
    show c, " is not in the Mandelbrot set."
```

* When `when Cases`

```
when
    z > 2 : false
    iterations == 0 : true
```

* When `when Value Cases otherwise Otherwise`

```
age = ask "How old are you?"
babies = 0
seniors = 0
you are = when age
    0 ... 2 : 
        babies = babies + 1
        return "Baby"
    3 ... 12 : "Child"
    13 ... 19 : "Teenager"
    20 ... 64 : "Adult"
    otherwise :
        seniors = seniors + 1
        return "Senior"
```

### Lambdas (this is not fun, you can skip it)

Yes you are right this is a functional programming language. So we use functions for everything.
You can create lambdas starting with `:` (colon) token. Efe will allocate all the variables you could need, in order to make that lambda able to return always the same output for the same input.

Every time a lambda modify some exeternal variable, what is really happening is, the lambda is returning two outputs, the mandatory output and the modified variables outputs. Efe will connect those outputs to the indicated variables.

### Loops

Efe doesn't have loops at all, just kiding we are not haskell.

* Loop repeat `loop Inputs (Repeat -> Inputs)`

```
ice creams = 3
pizzas = 0
loop helados, pizzas :
    if pizzas > 10 : Done
    show "Eat ice cream"
    show "Cook pizza"
    repeat ice creams - 1, pizzas + 1
```

* Iterate completed `iterate List (lambda)`

```
ingredients = List
total = iterate 5 times :
    answer = ask "What do you want in your pizza? answer 'done' to finish."
    if answer == "done" : count ingredients
    if completed : count ingredients
    ingredients + answer
```

`Number times` is a function that return a list from 0 to number.

Sorry I forgot we were explaining the mandelbrot code, let's return to that topic showing one alternative code for the same problem.

```
is <c>, <z> Complex in mandelbrot Iterations =
    repeat iterations : 
        if z > 2 : false
        if completed : true
        z = z ^ 2 + c
```

* For each stop `for each element in list lambda`. I'm hungry so let's cook pizza.

```
Ingredient = 
    name = Text,
    quantity = Number
ingredients = List "Pepperoni", "Onions", "Ham"
ingredients table = Sqlite3 "SELECT * FROM available_ingredients" as <Ingredient> List
for each ingredient in ingredients :
    ingredient = find ingredient in ingredients table 
    if ingredient _ quantity > 0 : cook ingredient
    else : stop
```

There are many other popular loops:

* `filter each element in list with rule`
* `for each element in list / accumulate in accumulated starting with initial value`
* `for each element in list / map with transformer`

... [continuara]

### Custom Types

### Inputs Outputs

We have multiple functions to manage inputs and outputs for your program.

* Show `show <Anything> List -> Output`

```
result = show "Hello", 4, true
result => Output(Text("Hello Number(4) Boolean(true)"), System(), Time(), Program())
```

#### System
#### Libraries


<!-- 



You can define any type of value using the `=` (equal) token. As you noticed we can indicate that Iterations is a Number.


 


Every coder loves functions (actually this is not true) but if you want to teach the computer to do something, you need to learn about functions.

We used the `=` to create two functions. `is c, z in mandelbrot iterations` Will detect if a complex number is in the mandelbrot set after the amount of iterations. `f` is the main function that will be executed every time you run the program.



f will do some things automatically. It will create default values for the inputs, tipically will use `0`, `Empty`, `false`, etc.

So you can use the function defined without setting the `z`.





1. You can define new functions using the equal token after the name.

```
helloworld = "Hello World!"
```

2. You can name your function.

Using spaces and lower case only:

```
hello world = "Hello World!"
```

Using the quote token and whatever text you want:

```
"👋🌏" = "Hello World!"
```

5. You can indicate inputs to your functions.

Adding the input name at the end or at the beginning of the function name:

```
square of x = x * x
x al cuadrado = x * x
```

Using the data type name:

```
add Number to Text = text + number
```

Using the less than an greater than tokens:

```
circunference of a <radius>circle = 2 * π * radius
```

Using the slash token: (I'm not sure how useful is this)

```
using a Number you can get / next = number + 1
you can get the / next / number of a Number = number + 1
```


6. You can define new data types using the arrow token.

```
Student ->
    name,
    grade
```

7. You can access functions inside your new type with the underscore token.

```
you can / promote / the Student = student _ grade = + 1
```

8. You can use parenthesis token to explicitly group operation sequences.

9. You cannot use nothing functions from the exterior. just one level?

10. You can infer the inputs you need only when you are inside a lambda.

11. If you have all the inputs you need in the lambda, you are ready to go.

12. The lambda token is ":" and the definition of params that the lambda receive.

13. There are pre defined functions to help you communicate your ideas.

15. Se puede escribir en una sóla linea con diamantes o punto.

18. You can access and transform entities using underscore token.


### TO DO

20. Is everything a list? what is a list?

19. How to use indentation?

21. Is the name of a function completle pointless?

22. What is inmutabilidad y porque la necesitamos?

23. Pattern matching: pattern, type, var name and destroy?

*Defining a function with simple Type*

```
function with <explicit param name> and explicit Type
function with implicit Param name and explicit type
function with <"pattern"> and explicit Type and implicit param name
function with <<"pattern"> explicit param name> and explicit Type
```

*Defining a function with simple Complex Type*

```
function with <explicit param name> and explicit <<Text> Complex> Type
function with implicit <<Text> Complex> Param name and explicit type
function with <"pattern"> and explicit <<Text> Complex> Type and implicit param name
function with <<"pattern"> explicit param name> and explicit <<Text> Complex> Type
```

*Defining a function with simple Complex Type are like patterns*

```
function with <Cat> List
function with <Dog> List
function with <Empty> List
function with <<Small> Cat> List
```

*Just pattern and Type?*

```
function with <things> <start, ...rest> List
function with <Empty> List
function with <<4, 5>> List
function with <"0"> List
function with <element name> List
```

*calling a function*

```
call with some implicit param name
call with some <explicit param name>
call with some "explicit value"
```

24. Recursion

25. Lambdas: Some -> Other

https://www.youtube.com/watch?v=mhkoWp5Akww&ab_channel=TheVimeagen


https://www.youtube.com/watch?v=tDexugp8EmM&ab_channel=ThePrimeTime

More languages and cool things
https://www.youtube.com/watch?v=MKb4WD6mioE

## Examples

### CLI Todo list

 -->
