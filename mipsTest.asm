b branch #jumps straight to our branch, skips over other junk


li $v0, 5
syscall


move $t0, $v0
li $v0, 1
move $a0, $t0 #Getting ready to print with location and starter
syscall


li $v0, 11
li $a0, 10
syscall


add $t1, $t0, 3 #destination, number #1, number #2
li $v0, 1
move $a0, $t1
syscall


li $v0, 11
li $a0, 10
syscall


sub $t2, $t0, 1 #destination, first# - second#
li $v0, 1
move $a0, $t2
syscall


li $v0, 11
li $a0, 10
syscall


mult $t1, $t2 #one number# * another number#
mflo $t3 #move from low register to t3
li $v0, 1
move $a0, $t3
syscall


li $v0, 11
li $a0, 10
syscall


div $t1, $t2 #first# divided by second#
mflo $t4 #move quotient from low register to t4 (remainder in high register)
li $v0, 1
move $a0, $t4
syscall


branch: #label for branch; it's like a function but not
li $t5, 9
li $v0, 1
move $a0, $t5
syscall