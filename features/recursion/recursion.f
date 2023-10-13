

pack List = 
    list = <<Text> List> List
    pending list = list
    create list <pending list> Empty> = list _ reverse 
    create list <start, ..rest> List, <start list, ..rest list> <List> List = 
            if start == start list:
                pending list = rest
                list = (start + start list) + rest list
                repeat 
            else: 
                pending list = rest
                list = (List start) + list
                repeat 
    create list
      