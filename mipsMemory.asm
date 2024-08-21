.data


RememberThis: .word 100, 200, 300, 500, 400


.text 


lw $t0, RememberThis #loading 100 from RememberThis into $t0
addi $t0, $t0, 1
sw $t0, RememberThis + 4 #moving $t0 to RememberThis


li $t1, 0


loop:
lw $t2, RememberThis($t1)
beq $t2, 0, finale
addi $t1, $t1, 4
b loop 


finale: