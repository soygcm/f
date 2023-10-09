> CLI To do list
> This program uses a file to save a list
> Ussage
>   Adding new elements:
>       f todo.f add [task description]
>   List all the tasks:
>       f todo.f list

> Let start defining the file name for the data base

db = "todo.txt"

> Let define some data types

Task =
    done = Boolean,
    description = Text

Line = Text
File Name = Text
Arguments = <Text> List
Tasks = <Task> List
Command = Text

> We need to define the functions

> These are for using files from the system:

get tasks from File = 
    lines = read the lines of file
    map each line in lines:
        task from line

using System / get tasks from <db> File Name  =
    file = open file name from system
    get tasks from file

using System / save Tasks in a <db> File Name  =
    open file from system
    write tasks in file
    save file

> These are to work with tasks:

get task from Line =
    get / description and done = split line with "|"
    description = description and done in position 0
    done = description and done in position 1
    Task description, done

get task from Arguments  =
    description = arguments in position 2
    Task
        description = description, 
        done = false

get the / line for the db / from the Task  =
    text (description, done)

add Task to Tasks =
    tasks + task line for the db

> These are to show messages in the CLI

Show list of Tasks =
    show "To-Do List:"
    for each task in tasks:
        using <number> as index starting in 1:
            show text (number, ". ", task)

Show tutorial =
    show "Usage: f todo.f add|list|remove [task]"

Show add task tutorial =
    show "Usage: f todo.f add [task]"

> This are the main functions

using System and File Name <db> /  
Show list in cli =
    we need to get the / tasks = get tasks from db
    show list of tasks

using System, File Name <db> and Show we can /  
add with Arguments =
    we need to know if / Arguments have no task description =
        size of arguments < 3
    if arguments have no task description:
        show add task tutorial
    else:
        tasks = get tasks from db
        task = get task from arguments
        add task to tasks
        save tasks in a db
        

using Arguments, System, Show and File Name <db> /  
execute Command<"add"> = add with arguments

using System, Show and File Name <db> /  
execute Command<"list"> = show list in cli

> This is the main program

f =
    we need to know if / Arguments have no commands =
        size of arguments < 2
    arguments = arguments from cli
    if arguments have no commands: show tutorial
    command = arguments in position 1
    execute command

