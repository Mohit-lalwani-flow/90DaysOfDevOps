## Challenge Tasks

### Task 1: Your First Script

1. picture

2. What happens if you remove the shebang line?

    if we remove shebang line then kernel will not able to know which shell we are using , 

    #!/bin/bash -> shell is in binaries , thats why we mention bin before shell name 


    the OS will not know which interpreter to use for the script, potentially causing the execution to fail if the correct interpreter is not explicitly specified when the script is run

3. What you learned (3 key points) 

    learnt about echo command and shebang line. 
    how to give permission to file. 
    and how to execute script file .



### Task 2: Variables

1. picture

2. Try using single quotes vs double quotes — what's the difference?

    (i) single quote (' .. ') : everything inside this consider literals ,variable will not able to expand their values , the literal $NAME will print ,escape sequence (\n , \\ , \') and command ('.. $(command) .. ') --> everthing prints literally


    (ii) double qoute (" ... ") : it does not consider literals,
    variable able to expand their values like - $NAME ->Mohit Lalwani . and similarly escape sequences and command can also able to expand their values . this is more dynamic then single quote.

3. What you learned (3 key points) 

    how to assign variable in script file. 
    echo have to way to print '' and "". 
    difference between '' and "" .


### Task 3: User Input with read

1. picture

2. What you learned (2 key points) 

    how to take input from user. 
    and how to print the user output via echo. 


### Task 4: If-Else Conditions

1. picture

2. picture

3. What you learned (3 key points) 

    how to check this or that via if elseif else fi (conditional statement). 
    -f -> used for check of file. similarly -d for directory 
    -gt , -gte , -lt , lte 


### Task 5: Combine It All

1. picture

2. What you learned (1 key points) 

    how to check status of service via shell script. 
    

