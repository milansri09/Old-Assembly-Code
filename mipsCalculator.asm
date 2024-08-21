li $v0, 5 #input for getting first number
syscall
move $t0, $v0 #place input in $t0


li $v0, 11 #line break
li $a0, 10
syscall


li $v0, 5 #input for getting second number
syscall
move $t1, $v0 #place input in $t1


li $v0, 11 #line break
li $a0, 10
syscall


li $v0, 12 #input for getting a character
syscall
move $t2, $v0 #place input in $t2


li $v0, 11 #line break
li $a0, 10
syscall


beq $t2, 43, addition #check if character in $t2 is equal to addition character; jump to addition branch
beq $t2, 45, subtraction #check if character in $t2 is equal to subtraction character; jump to subtraction branch
beq $t2, 42, multiplication #check if character in $t2 is equal to multiplication character; jump to multiplication branch
beq $t2, 47, division #check if character in $t2 is equal to division character; jump to division branch
b finale #if it's nothing else we've already stated above, go to "finale" (like an "else" statement)

addition: #create addition branch
add $t3, $t0, $t1
b output #jump to output branch to print


subtraction: #create subtraction branch
sub $t3, $t0, $t1
b output #jump to output branch to print


multiplication: #create multiplication branch
mult $t0, $t1
mflo $t3
b output #jump to output branch to print


division: #create division branch
div $t0, $t1
mflo $t3
mfhi $t4
b output #jump to output branch to print (don't technically need since output branch directly follows this)


output: #create print branch
li $v0, 1
move $a0, $t3
syscall


bne $t2, 47, finale #if the operating sign isn't the division sign, jump to the "finale" branch


li $v0, 11 #line break
li $a0, 10
syscall


remainder: #create branch to print remainder from division
li $v0, 11 #character print
li $a0, 82 #ASCII value for "R" loaded into $a0
syscall

li $v0, 1 #print numerator
move $a0, $t4
syscall

li $v0, 11 #print fraction bar
li $a0, 47 #ASCII value for "/"
syscall

li $v0, 1 #print denominator
move $a0, $t1
syscall


finale: #end stopping point in program

