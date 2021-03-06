

# [ RUN ] parsing code... 

# let var id : int := intlit ; function id ( id : int ) : int begin return id * intlit ; end ; in id := id ( id ) ; id ( id ) ; end  

# ----------------------------------------
# Table: # Variables
# Name: m
# ----------------------------------------
# Scope: 0
# Type: int
# Dimension: 0
# Parameters: -
# Parameter types: -
# Parameter dimensions: -
# Return type: -


# ----------------------------------------
# Table: # Types
# Name: float
# ----------------------------------------
# Scope: 0
# Type: float
# Dimension: 0
# Parameters: -
# Parameter types: -
# Parameter dimensions: -
# Return type: -


# ----------------------------------------
# Table: # Types
# Name: int
# ----------------------------------------
# Scope: 0
# Type: int
# Dimension: 0
# Parameters: -
# Parameter types: -
# Parameter dimensions: -
# Return type: -


# ----------------------------------------
# Table: # Functions
# Name: exit
# ----------------------------------------
# Scope: 0
# Type: -
# Dimension: -
# Parameters: [i]
# Parameter types: [int]
# Parameter dimensions: [0]
# Return type: -


# ----------------------------------------
# Table: # Functions
# Name: fact
# ----------------------------------------
# Scope: 0
# Type: -
# Dimension: -
# Parameters: [n]
# Parameter types: [int]
# Parameter dimensions: [0]
# Return type: int


# ----------------------------------------
# Table: # Functions
# Name: flush
# ----------------------------------------
# Scope: 0
# Type: -
# Dimension: -
# Parameters: []
# Parameter types: []
# Parameter dimensions: []
# Return type: -


# ----------------------------------------
# Table: # Functions
# Name: not
# ----------------------------------------
# Scope: 0
# Type: -
# Dimension: -
# Parameters: [i]
# Parameter types: [int]
# Parameter dimensions: [0]
# Return type: int


# ----------------------------------------
# Table: # Functions
# Name: printi
# ----------------------------------------
# Scope: 0
# Type: -
# Dimension: -
# Parameters: [i]
# Parameter types: [int]
# Parameter dimensions: [0]
# Return type: -
# ----------------------------------------



# [ OK ] successful parse...


# ----------------------------------------
# Generate IR CODE ...
# ----------------------------------------
#     assign, m, 5,
# fact:
#     mult, n, 2, t0
#     return, t0, ,
# main:
#     callr, m, fact, m
#     call, printi, m
#     return, , ,
# ----------------------------------------


# Default select cfg technique to optimize IR code ...

# Detect block 0 IR line : 5 ~ 8


#----------------------------------------
# Generate ASM CODE ...
#----------------------------------------
# Beginning of the data section

.data
m: 		.word 	5
num_5: 		.word 	5
n: 		.word 	0
num_2: 		.word 	2
t0: 		.word 	0

# Beginning of the code section

.text
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

    # IR:    assign, m, 5,
    la $t9, num_5
    lw $t8, 0($t9)
    la $t9, m
    sw $t8, 0($t9)

    # IR: goto, main0
    j main0

fact:

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

    # IR:    mult, n, 2, t0
    la $t9, num_2
    lw $t9, 0($t9)
    mult $a0, $t9
    mflo $a0
    la $t9, t0
    sw $a0, 0($t9)

    # IR:    return, t0, ,
    la $t9, t0
    lw $t8, 0($t9)
    move $v0, $t8
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

    # Enter block and load vars into registers ... 

    la $t9, m
    lw $t0, 0($t9)

    # IR:    callr, m, fact, m
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
    move $a0, $t0
    jal fact
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
    move $t0, $v0

    # IR:    call, printi, m
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
    move $a0, $t0
    jal lib_printi
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

    # Leave block and save registers into vars ... 

    la $t9, m
    sw $t0, 0($t9)

    # IR:    return, , ,
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
#----------------------------------------

