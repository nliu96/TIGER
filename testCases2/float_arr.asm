    # Beginning of the data section
    .data
n1:      .word 0
i0:      .word 0
i:       .word 0
B0:      .word 0
A0:      .space 20
num_0:   .word 0
num_4:   .word 4
num_5:   .word 5
num_5_0: .float 5.0
num_1_5: .float 1.5
num_2_5: .float 2.5
var1:    .word 0
var0:    .word 0
num_1:   .word 1

    # Beginning of the code section
    .text
lib_exit: 
    # Callee Convention (entering exit):
    sw $s0, -4($sp)
    sw $s1, -8($sp)
    sw $s2, -12($sp)
    sw $s3, -16($sp)
    sw $s4, -20($sp)
    sw $s5, -24($sp)
    sw $s6, -28($sp)
    sw $s7, -32($sp)
    addi $sp, $sp, -32
    sw $ra, -4($sp)
    addi $sp, $sp, -4
    li $v0, 17
    syscall
    addi $sp, $sp, 4
    lw $ra, -4($sp)
    addi $sp, $sp, 32
    lw $s0, -4($sp)
    lw $s1, -8($sp)
    lw $s2, -12($sp)
    lw $s3, -16($sp)
    lw $s4, -20($sp)
    lw $s5, -24($sp)
    lw $s6, -28($sp)
    lw $s7, -32($sp)
    jr $ra

lib_printi: 
    # Callee Convention (entering printi):
    sw $s0, -4($sp)
    sw $s1, -8($sp)
    sw $s2, -12($sp)
    sw $s3, -16($sp)
    sw $s4, -20($sp)
    sw $s5, -24($sp)
    sw $s6, -28($sp)
    sw $s7, -32($sp)
    addi $sp, $sp, -32
    sw $ra, -4($sp)
    addi $sp, $sp, -4
    li $v0, 1
    syscall
    addi $sp, $sp, 4
    lw $ra, -4($sp)
    addi $sp, $sp, 32
    lw $s0, -4($sp)
    lw $s1, -8($sp)
    lw $s2, -12($sp)
    lw $s3, -16($sp)
    lw $s4, -20($sp)
    lw $s5, -24($sp)
    lw $s6, -28($sp)
    lw $s7, -32($sp)
    jr $ra

lib_not:
    sw $s0, -4($sp)
    sw $s1, -8($sp)
    sw $s2, -12($sp)
    sw $s3, -16($sp)
    sw $s4, -20($sp)
    sw $s5, -24($sp)
    sw $s6, -28($sp)
    sw $s7, -32($sp)
    addi $sp, $sp, -32
    sw $ra, -4($sp)
    addi $sp, $sp, -4
    
    # IR: assign, var0, 0,
    la $t0, num_0
    lw $t1, 0($t0)
    move $s8, $t1
    
    # IR: brneq, i1, 0, _if_label0
    li $t1, 0
    bne $a0, $t1, _if_label0
    
    # IR: assign, var0, 1,
    li $t1, 1
    move $s8, $t1
_if_label0:
    
    # IR: breq, var0, 0, _if_label1
    li $t1, 0
    beq $s8, $t1, _if_label1
    
    # IR: assign, i1, 1,
    li $t1, 1
    move $a0, $t1
    
    # IR: goto, _if_label2, ,
    j _if_label2
_if_label1:
    # IR: assign, i1, 0,
    li $t1, 0
    move $a0, $t1
_if_label2:
lib_not_end:
    
    # IR: return, i1, ,
    # Callee Convention (exiting not):
    move $v0, $a0
    addi $sp, $sp, 4
    lw $ra, -4($sp)
    addi $sp, $sp, 32
    lw $s0, -4($sp)
    lw $s1, -8($sp)
    lw $s2, -12($sp)
    lw $s3, -16($sp)
    lw $s4, -20($sp)
    lw $s5, -24($sp)
    lw $s6, -28($sp)
    lw $s7, -32($sp)
    jr $ra

main:

    # IR: assign, A0, 5, 2.5
    la $t0, num_2_5
    lwc1 $f1, 0($t0)
    la $t0, A0
    swc1 $f1, 4($t0)
    swc1 $f1, 8($t0)
    swc1 $f1, 12($t0)
    swc1 $f1, 16($t0)
    swc1 $f1, 20($t0)

    # IR: assign, i0, 0,
    la $t0, num_0
    lw $t1, 0($t0)
    move $s8, $t1

    # IR: goto, main0
    j main0
printf0_end:
printf0:
    sw $s0, -4($sp)
    sw $s1, -8($sp)
    sw $s2, -12($sp)
    sw $s3, -16($sp)
    sw $s4, -20($sp)
    sw $s5, -24($sp)
    sw $s6, -28($sp)
    sw $s7, -32($sp)
    addi $sp, $sp, -32
    sw $ra, -4($sp)
    addi $sp, $sp, -4

    # IR: add, n1, 5.0, var0
    la $t0, num_5_0
    lwc1 $f1, 0($t0)
    add.s $f19, $f12, $f1

    # IR: assign, B0, var0,

    # IR: return, , ,
    # Callee Convention (exiting printf0):
    addi $sp, $sp, 4
    lw $ra, -4($sp)
    addi $sp, $sp, 32
    lw $s0, -4($sp)
    lw $s1, -8($sp)
    lw $s2, -12($sp)
    lw $s3, -16($sp)
    lw $s4, -20($sp)
    lw $s5, -24($sp)
    lw $s6, -28($sp)
    lw $s7, -32($sp)
    jr $ra
main0:
    sw $s0, -4($sp)
    sw $s1, -8($sp)
    sw $s2, -12($sp)
    sw $s3, -16($sp)
    sw $s4, -20($sp)
    sw $s5, -24($sp)
    sw $s6, -28($sp)
    sw $s7, -32($sp)
    addi $sp, $sp, -32
    sw $ra, -4($sp)
    addi $sp, $sp, -4

    # IR: array_store, A0, 4, 1.5
    la $t0, num_1_5
    lwc1 $f1, 0($t0)
    la $t0, num_4
    lw $t2, 0($t0)
    sll $t2, $t2, 2
    la $t0, A0
    add $t0, $t0, $t2
    srl $t2, $t2, 2
    swc1 $f1, 0($t0)

    # IR: assign, i0, 0,
    la $t0, num_0
    lw $t1, 0($t0)
    move $s8, $t1
loop_label0:

    # IR: brgt, i0, 5, loop_label1
    la $t0, num_5
    lw $t1, 0($t0)
    bgt $s8, $t1, loop_label1

    # IR: array_load, var1, A0, i0
    sll $s8, $s8, 2
    la $t0, A0
    add $t0, $t0, $s8
    srl $s8, $s8, 2
    lwc1 $f19, 0($t0)

    # IR: call, printf, var1
    sw $t4, -4($sp)
    sw $t5, -8($sp)
    sw $t6, -12($sp)
    sw $t7, -16($sp)
    sw $t8, -20($sp)
    sw $t9, -24($sp)
    addi $sp, $sp, -24
    swc1 $f12, -4($sp)
    swc1 $f13, -8($sp)
    swc1 $f14, -12($sp)
    addi $sp, $sp, -12
    sw $a0, -4($sp)
    sw $a1, -8($sp)
    sw $a2, -12($sp)
    sw $a3, -16($sp)
    addi $sp, $sp, -16
    mov.s $f12, $f19
    jal printf
    addi $sp, $sp, 16
    lw $a0, -4($sp)
    lw $a1, -8($sp)
    lw $a2, -12($sp)
    lw $a3, -16($sp)
    addi $sp, $sp, 12
    lwc1 $f12, -4($sp)
    lwc1 $f13, -8($sp)
    lwc1 $f14, -12($sp)
    addi $sp, $sp, 24
    lw $t4, -4($sp)
    lw $t5, -8($sp)
    lw $t6, -12($sp)
    lw $t7, -16($sp)
    lw $t8, -20($sp)
    lw $t9, -24($sp)

    # IR: add, i0, 1, i0
    la $t0, num_1
    lw $t1, 0($t0)
    add $s8, $s8, $t1

    # IR: goto, loop_label0, ,
    j loop_label0
loop_label1:

    # IR: return, , ,
    # Callee Convention (exiting main0):
    addi $sp, $sp, 4
    lw $ra, -4($sp)
    addi $sp, $sp, 32
    lw $s0, -4($sp)
    lw $s1, -8($sp)
    lw $s2, -12($sp)
    lw $s3, -16($sp)
    lw $s4, -20($sp)
    lw $s5, -24($sp)
    lw $s6, -28($sp)
    lw $s7, -32($sp)
    jr $ra
