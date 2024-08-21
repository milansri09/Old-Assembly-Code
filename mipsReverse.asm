.data


newLine: .asciiz "\n"
headerLabel: .asciiz "Here are your results: \n"


intro: .asciiz "Choose A Number:  "


list: .word -1


.text


li $t3, 4



li $t1, 0 #current place in list


inputLoop: 


la $a0, intro
li $v0, 4
syscall


li $a0,0
li $v0, 5
syscall


move $t0, $v0
ble $t0, 0, finalInputLoop
mult $t1, $t3
mflo $t2
sw $t0, list($t2)
addi $t1, $t1, 1
b inputLoop


finalInputLoop: 


subi $t1, $t1, 1


la $a0, headerLabel
li $v0, 4
syscall


printOut: 
mult $t1, $t3
mflo $t2
lw $v1, list($t2)
move $a0, $v1
li $v0, 1
syscall
la $a0, newLine
li $v0, 4
syscall
ble $t1, 0, endLoop
subi $t1, $t1, 1
b printOut


endLoop: