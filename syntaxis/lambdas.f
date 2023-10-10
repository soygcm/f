values = <Number> List
Shape =
    name = <"triangle" | "square" | "circle"> Text,
    values = Values

area of triangle / from Values = 
    base = values _ 0
    hight = values _ 1
    (base * hight) / 2

Get Area = Values -> Number
Show area of Shape <Values> / with <get area from Values> Get Area =
    show get area from (shape _ values)

f = 
    triangle = Shape
        _ "triangulo", _ 40, 50,
    
    show area of triangle <base and height>: area of triangle



    

    