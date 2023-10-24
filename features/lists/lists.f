
<Generic> Perform = Element -> Nothing

for each <Element> in <Element> List /  
Perform action with <Element> = 
    while (list _ has elements):
        perform (elements _ next)

Element = Generic
Rule = Element -> Boolean

for each <Element> in a <Element> List /  
using <Number> as index starting in <offset> Number /  
Perform action with <Element> = 
    perform( ( index of element in list ) + offset )
>> Shall be recursive, since get the index is expensive

/ filter each <Element> in <Element> List /  
that <match> Rule  = 
    filtered list = List
    while (list _ has elements):
        if match (elements _ next):
            filtered list = filtered list + element

/ filter <Element> List / that <match> Rule = 
    filter each element in list / that match