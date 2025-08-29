L0: # Randomly initialize GPR
    lui         x0, 0x20AA2
    nop
    nop
    addi        x0, x0, 0x16F
    nop
    nop
    lui         x1, 0x68448
    nop
    nop
    addi        x1, x1, 0xFFFFFEF7
    nop
    nop
    lui         x2, 0x7F666
    nop
    nop
    addi        x2, x2, 0xFFFFFC66
    nop
    nop
    lui         x3, 0x92EF4
    nop
    nop
    addi        x3, x3, 0xFFFFFACB
    nop
    nop
    lui         x4, 0xC13AC
    nop
    nop
    addi        x4, x4, 0x60F
    nop
    nop
    lui         x5, 0x19C48
    nop
    nop
    addi        x5, x5, 0xFFFFFC8E
    nop
    nop
    lui         x6, 0x71A3C
    nop
    nop
    addi        x6, x6, 0x3F0
    nop
    nop
    lui         x7, 0x7053C
    nop
    nop
    addi        x7, x7, 0x7BA
    nop
    nop
    lui         x8, 0xEDA10
    nop
    nop
    addi        x8, x8, 0x1A5
    nop
    nop
    lui         x9, 0xA82C0
    nop
    nop
    addi        x9, x9, 0xFFFFFA4D
    nop
    nop
    lui         x10, 0xC1409
    nop
    nop
    addi        x10, x10, 0xFFFFF9D2
    nop
    nop
    lui         x11, 0xC238A
    nop
    nop
    addi        x11, x11, 0xFFFFFC23
    nop
    nop
    lui         x12, 0x7C69E
    nop
    nop
    addi        x12, x12, 0x366
    nop
    nop
    lui         x13, 0xB2D9E
    nop
    nop
    addi        x13, x13, 0x7EC
    nop
    nop
    lui         x14, 0x8F4B5
    nop
    nop
    addi        x14, x14, 0x5FE
    nop
    nop
    lui         x15, 0xADC08
    nop
    nop
    addi        x15, x15, 0xFFFFFB7F
    nop
    nop
    lui         x16, 0x99905
    nop
    nop
    addi        x16, x16, 0xFFFFFE41
    nop
    nop
    lui         x17, 0xE2D11
    nop
    nop
    addi        x17, x17, 0xFFFFF98E
    nop
    nop
    lui         x18, 0x55C01
    nop
    nop
    addi        x18, x18, 0xFFFFF8C1
    nop
    nop
    lui         x19, 0x3C087
    nop
    nop
    addi        x19, x19, 0xFFFFFDB3
    nop
    nop
    lui         x20, 0xBE873
    nop
    nop
    addi        x20, x20, 0xFFFFFDA7
    nop
    nop
    lui         x21, 0xF2F97
    nop
    nop
    addi        x21, x21, 0x69
    nop
    nop
    lui         x22, 0x70D50
    nop
    nop
    addi        x22, x22, 0x2A5
    nop
    nop
    lui         x23, 0xCB1C2
    nop
    nop
    addi        x23, x23, 0xFFFFFCFC
    nop
    nop
    lui         x24, 0xB4CE1
    nop
    nop
    addi        x24, x24, 0xFFFFFFA8
    nop
    nop
    lui         x25, 0xE916D
    nop
    nop
    addi        x25, x25, 0xFFFFF9B7
    nop
    nop
    lui         x26, 0x2D4ED
    nop
    nop
    addi        x26, x26, 0x32C
    nop
    nop
    lui         x27, 0xE32A5
    nop
    nop
    addi        x27, x27, 0xFFFFFE2F
    nop
    nop
    lui         x28, 0xBFB0D
    nop
    nop
    addi        x28, x28, 0x5E1
    nop
    nop
    lui         x29, 0xC5F3E
    nop
    nop
    addi        x29, x29, 0x721
    nop
    nop
    lui         x30, 0x58A2F
    nop
    nop
    addi        x30, x30, 0xFFFFFD05
    nop
    nop
    lui         x31, 0xAC45A
    nop
    nop
    addi        x31, x31, 0xFFFFFF5E
    nop
    nop
L1: # Test 0-0: addi
    addi        x4, x21, 0x247
    nop
    nop
    lui         x21, 0xF2F97
    nop
    nop
    addi        x21, x21, 0x2B0
    nop
    nop
    bne         x4, x21, fail
    nop
    nop
L2: # Test 1-0: sll
    sll         x27, x15, x10
    nop
    nop
    lui         x18, 0xEDFC0
    nop
    nop
    addi        x18, x18, 0x0
    nop
    nop
    bne         x27, x18, fail
    nop
    nop
L3: # Test 2-0: sra
    sra         x16, x23, x27
    nop
    nop
    lui         x23, 0xCB1C2
    nop
    nop
    addi        x23, x23, 0xFFFFFCFC
    nop
    nop
    bne         x16, x23, fail
    nop
    nop
L4: # Test 3-0: srai
    srai        x15, x2, 0x5
    nop
    nop
    lui         x16, 0x3FB3
    nop
    nop
    addi        x16, x16, 0x2E3
    nop
    nop
    bne         x15, x16, fail
    nop
    nop
L5: # Test 4-0: sltiu
    sltiu       x30, x19, 0x7F3
    nop
    nop
    lui         x21, 0x0
    nop
    nop
    addi        x21, x21, 0x0
    nop
    nop
    bne         x30, x21, fail
    nop
    nop
L6: # Test 5-0: slt
    slt         x12, x7, x28
    nop
    nop
    lui         x9, 0x0
    nop
    nop
    addi        x9, x9, 0x0
    nop
    nop
    bne         x12, x9, fail
    nop
    nop
L7: # Test 6-0: lui
    lui         x19, 0xC8828
    nop
    nop
    lui         x21, 0xC8828
    nop
    nop
    addi        x21, x21, 0x0
    nop
    nop
    bne         x19, x21, fail
    nop
    nop
L8: # Test 6-1: lui
    lui         x30, 0xC2603
    nop
    nop
    lui         x6, 0xC2603
    nop
    nop
    addi        x6, x6, 0x0
    nop
    nop
    bne         x30, x6, fail
    nop
    nop
L9: # Test 7-0: auipc
    auipc       x1, 0xA43AD
    nop
    nop
    lui         x24, 0xA47AD
    nop
    nop
    addi        x24, x24, 0x480
    nop
    nop
    bne         x1, x24, fail
    nop
    nop
L10: # Test 7-1: auipc
    auipc       x6, 0xB4C22
    nop
    nop
    lui         x29, 0xB5022
    nop
    nop
    addi        x29, x29, 0x4B0
    nop
    nop
    bne         x6, x29, fail
    nop
    nop
L11: # Test 8-0: j
    j           L12
    nop
    nop
    j           fail
    nop
    nop
L12: # Test 8-1: j
    j           L13
    nop
    nop
    j           fail
    nop
    nop
L13: # Test 9-0: jal
    jal         x11, L14
    nop
    nop
    j           fail
    nop
    nop
L14: # jal target
    lui         x25, 0x400
    nop
    nop
    addi        x25, x25, 0x514
    nop
    nop
    bne         x11, x25, fail
    nop
    nop
L15: # Test 9-1: jal
    jal         x3, L16
    nop
    nop
    j           fail
    nop
    nop
L16: # jal target
    lui         x21, 0x400
    nop
    nop
    addi        x21, x21, 0x550
    nop
    nop
    bne         x3, x21, fail
    nop
    nop
L17: # Test 10-0: jalr
    lui         x20, 0x401
    nop
    nop
    addi        x20, x20, 0xFFFFF848
    nop
    nop
    jalr        x19, 0xFFFFFD70(x20)
    nop
    nop
    j           fail
    nop
    nop
L18: # jalr target
    lui         x5, 0x400
    nop
    nop
    addi        x5, x5, 0x5A4
    nop
    nop
    bne         x19, x5, fail
    nop
    nop
L19: # Test 10-1: jalr
    lui         x31, 0x400
    nop
    nop
    addi        x31, x31, 0x300
    nop
    nop
    jalr        x8, 0x30C(x31)
    nop
    nop
    j           fail
    nop
    nop
L20: # jalr target
    lui         x23, 0x400
    nop
    nop
    addi        x23, x23, 0x5F8
    nop
    nop
    bne         x8, x23, fail
    nop
    nop
L21: # Test 11-0: beq
    beq         x11, x3, fail
    nop
    nop
L22: # Test 11-1: beq
    beq         x16, x11, fail
    nop
    nop
L23: # Test 12-0: bne
    bne         x22, x26, L24
    nop
    nop
    j           fail
    nop
    nop
L24: # Test 12-1: bne
    bne         x31, x29, L25
    nop
    nop
    j           fail
    nop
    nop
L25: # Test 13-0: blt
    blt         x11, x26, L26
    nop
    nop
    j           fail
    nop
    nop
L26: # Test 13-1: blt
    blt         x1, x17, L27
    nop
    nop
    j           fail
    nop
    nop
L27: # Test 14-0: bge
    bge         x4, x11, fail
    nop
    nop
L28: # Test 14-1: bge
    bge         x5, x11, L29
    nop
    nop
    j           fail
    nop
    nop
L29: # Test 15-0: bltu
    bltu        x6, x20, fail
    nop
    nop
L30: # Test 15-1: bltu
    bltu        x20, x9, fail
    nop
    nop
L31: # Test 16-0: bgeu
    bgeu        x7, x4, fail
    nop
    nop
L32: # Test 16-1: bgeu
    bgeu        x19, x4, fail
    nop
    nop
win: # Win label
    lui         x4, 0x0
    nop
    nop
    addi        x4, x4, 0x0
    nop
    nop
    j           end
    nop
    nop
fail: # Fail label
    lui         x4, 0x0
    nop
    nop
    addi        x4, x4, 0xFFFFFFFF
    nop
    nop
    j           end
    nop
    nop
end:
    ebreak