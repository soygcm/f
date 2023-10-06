
<Generic> Perform = (Element -> Nothing) Lambda

for each <Element> in <Element> List /  
Perform action with <Element> = 
    while (list _ has elements):
        pefrom (elements _ next)

Element = Generic
<Generic> Rule = (Generic -> Boolean) Lambda

for each <Element> in a <Element> List /  
using <Number> as index starting in <offset> Number /  
Perform action with <Element> =
    perform( ( index of element in list ) + offset )
    

/ filter each <Element> in <Element> List / that <match> an <Element> Rule  = 
    filtered list = List
    while (list _ has elements):
        if match (elements _ next):
            filtered list = filtered list + element

/ filter <Element> List / that <match> an <Element> Rule = 
    filter each element in list / that match