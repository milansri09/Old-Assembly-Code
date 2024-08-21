li $t0, 0 #storing starting number of 0 in $t0
li $t1, 100 #ending variable, 1-100 (exclusive for beginning)
li $t2, 0 #current sum starting at 0


loop: 
addi $t0, $t0, 1 #add 1 to $t0 and put back in $t0
bgt $t0, 100, finale # if $t0 > 100, go to finale
move $a0, $t2 #move current sum to $a0
li $v0, 1
syscall
la $a0, plusSign #print out a "+"
li $v0, 4
syscall
move $a0, $t0 #move number being added to current sum to $ao
li $v0, 1
syscall
la $a0, equalSign #print out an "="
li $v0, 4
syscall
add $t2, $t0, $t2 #add to the sum and put back in $t2
move $a0, $t2 #print new sum
li $v0, 1
syscall
la $a0, newLine #insert linebreak
li $v0, 4
syscall
b loop #jump back to top of loop


finale:
la $a0, finalSum #load address for finalSum
li $v0, 4
syscall
move $a0, $t2 #move $t2 to $a0
li $v0, 1
syscall

.data #creates data section to prep for actual code

finalSum: .asciiz "Your final output is: " 
newLine: .asciiz "\n"
plusSign: .asciiz " + "
equalSign: .asciiz " = "