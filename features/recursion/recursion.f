> Impreative way? can this be translated to recursive? It is in some way
pack List = 
    packed list = <List> List 
    pending list = list
    pack <Empty> <pending list> / <packed list> = packed list
    pack <pending list> <start of pending, ..rest of pending> /  
    <packed list | Empty> <start of packed list, ..rest of packed list> =
        start of start packed list = start of packed list _ 0
        if start of pending == start of start packed list:
            pending list = rest of pending
            packed list = (start of pending + start of packed list) + rest of packed list
            pack pending list / packed list
        else: 
            pending list = rest of pending
            packed list = (List start of pending) + packed list
            pack pending list / packed list
    reverse pack pending list Empty

> Impreative way? using or not recursion? What?
pack element to packed list = Element -> <<Element>List> List -> <<Element>List> List
pack Element to <start of packed list, ..rest of packed list> <packed list> = 
    start of start packed list = start of packed list _ head
    if element == start of start packed list:
        (element + start of packed list) + rest of packed list 
    else: 
        (List element) + packed list

pack Element to Empty = 
    pack element to List (List element)

pack List = 
    reverse for each element in list / 
    accumulate in <packed list> starting with Empty:
        pack element to packed list

> Impreative way with mutation? could it be recursive?
pack List = 
    packed list = Empty
    for each element in list:
        packed list = pack element to packed list
        Nothing Else
    return reverse packed list
