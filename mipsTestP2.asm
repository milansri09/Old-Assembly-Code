.data #allows us to type in strings


sentence: .asciiz "Milan is amazing"
#variable name: .asciiz (text plus adddition of  "\0" as null terminator) "sentence to be printed"


sentence2: .asciiz "Milan is humble"


.text #gets us prepped for regular assembly text


la $a0, sentence #load address $destination, variable
li $v0, 4 #getting ready for printing a string
syscall #can skip move statement since we already load address into $ao