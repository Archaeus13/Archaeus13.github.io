L0: # Randomly initialize GPR
    lui         x0, 0xD20D1
    addi        x0, x0, 0xFFFFFEFF
    lui         x1, 0x44658
    addi        x1, x1, 0xFFFFFF3A
    lui         x2, 0xDAF
    addi        x2, x2, 0x7C5
    lui         x3, 0x999F9
    addi        x3, x3, 0xFFFFFA92
    lui         x4, 0xE4A20
    addi        x4, x4, 0xFFFFFD01
    lui         x5, 0x5113F
    addi        x5, x5, 0x302
    lui         x6, 0x28124
    addi        x6, x6, 0x28A
    lui         x7, 0xA0E8A
    addi        x7, x7, 0x5BD
    lui         x8, 0xAFD93
    addi        x8, x8, 0xB3
    lui         x9, 0x73529
    addi        x9, x9, 0x626
    lui         x10, 0xEFEC8
    addi        x10, x10, 0xFFFFFFD6
    lui         x11, 0xF89A1
    addi        x11, x11, 0x529
    lui         x12, 0x95BC6
    addi        x12, x12, 0xFFFFFC96
    lui         x13, 0xE4DF8
    addi        x13, x13, 0x7AF
    lui         x14, 0xDA30F
    addi        x14, x14, 0xFFFFFB5B
    lui         x15, 0xCE0AC
    addi        x15, x15, 0x10B
    lui         x16, 0xF509D
    addi        x16, x16, 0x168
    lui         x17, 0x1DFC8
    addi        x17, x17, 0x311
    lui         x18, 0xF8A14
    addi        x18, x18, 0xFFFFFB11
    lui         x19, 0xCCFB2
    addi        x19, x19, 0x57F
    lui         x20, 0xCD038
    addi        x20, x20, 0x2F9
    lui         x21, 0x666CE
    addi        x21, x21, 0xFFFFFAF4
    lui         x22, 0xFD1D6
    addi        x22, x22, 0x62B
    lui         x23, 0x28389
    addi        x23, x23, 0x712
    lui         x24, 0x275B0
    addi        x24, x24, 0xFFFFFE6F
    lui         x25, 0xA8F98
    addi        x25, x25, 0x671
    lui         x26, 0x42F01
    addi        x26, x26, 0xFFFFFBEE
    lui         x27, 0xB7FA6
    addi        x27, x27, 0xFFFFF84C
    lui         x28, 0x7851D
    addi        x28, x28, 0xFFFFFF66
    lui         x29, 0x73004
    addi        x29, x29, 0x6DB
    lui         x30, 0xD3999
    addi        x30, x30, 0x48E
    lui         x31, 0x68C12
    addi        x31, x31, 0xB
L1: # Test 0-0: jal
    jal         x25, L2
    j           fail
L2: # jal target
    lui         x22, 0x400
    addi        x22, x22, 0x104
    bne         x25, x22, fail
    j           L3
L3: # Test 0-1: jal
    jal         x10, L4
    j           fail
L4: # jal target
    lui         x11, 0x400
    addi        x11, x11, 0x11C
    bne         x10, x11, fail
    j           L5
L5: # Test 0-2: jal
    jal         x21, L6
    j           fail
L6: # jal target
    lui         x17, 0x400
    addi        x17, x17, 0x134
    bne         x21, x17, fail
    j           L7
L7: # Test 0-3: jal
    jal         x0, L8
    j           fail
L8: # jal target
    lui         x4, 0x0
    addi        x4, x4, 0x0
    bne         x0, x4, fail
    j           L9
L9: # Test 0-4: jal
    jal         x0, L10
    j           fail
L10: # jal target
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x0, x25, fail
    j           L11
L11: # Test 1-0: jalr
    lui         x16, 0x400
    addi        x16, x16, 0x383
    jalr        x20, 0xFFFFFE05(x16)
    j           fail
L12: # jalr target
    lui         x21, 0x400
    addi        x21, x21, 0x184
    bne         x20, x21, fail
    j           L13
L13: # Test 1-1: jalr
    lui         x5, 0x400
    addi        x5, x5, 0x509
    jalr        x1, 0xFFFFFC9F(x5)
    j           fail
L14: # jalr target
    lui         x12, 0x400
    addi        x12, x12, 0x1A4
    bne         x1, x12, fail
    j           L15
L15: # Test 1-2: jalr
    lui         x20, 0x400
    addi        x20, x20, 0xE8
    jalr        x6, 0xE0(x20)
    j           fail
L16: # jalr target
    lui         x18, 0x400
    addi        x18, x18, 0x1C4
    bne         x6, x18, fail
    j           L17
L17: # Test 1-3: jalr
    lui         x4, 0x400
    addi        x4, x4, 0x53C
    jalr        x0, 0xFFFFFCAC(x4)
    j           fail
L18: # jalr target
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x0, x16, fail
    j           L19
L19: # Test 1-4: jalr
    lui         x2, 0x400
    addi        x2, x2, 0x6D2
    jalr        x8, 0xFFFFFB36(x2)
    j           fail
L20: # jalr target
    lui         x23, 0x400
    addi        x23, x23, 0x204
    bne         x8, x23, fail
    j           L21
L21: # Test 2-0: beq
    beq         x10, x29, fail
    j           L22
L22: # Test 2-1: beq
    beq         x3, x11, fail
    j           L23
L23: # Test 2-2: beq
    beq         x18, x2, fail
    j           L24
L24: # Test 2-3: beq
    beq         x21, x14, fail
    j           L25
L25: # Test 2-4: beq
    beq         x27, x22, fail
    j           L26
L26: # Test 3-0: blt
    blt         x0, x11, L27
    j           fail
L27: # Test 3-1: blt
    blt         x6, x1, fail
    j           L28
L28: # Test 3-2: blt
    blt         x1, x17, fail
    j           L29
L29: # Test 3-3: blt
    blt         x28, x30, fail
    j           L30
L30: # Test 3-4: blt
    blt         x15, x30, L31
    j           fail
L31: # Test 4-0: lw
    lui         x9, 0x1003C
    addi        x9, x9, 0x71B
    lw          x8, 0x389(x9)
    lui         x17, 0x0
    addi        x17, x17, 0x0
    bne         x8, x17, fail
    j           L32
L32: # Test 4-1: lw
    lui         x8, 0x1001A
    addi        x8, x8, 0xFFFFFCF8
    lw          x16, 0xFFFFF978(x8)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x16, x13, fail
    j           L33
L33: # Test 4-2: lw
    lui         x1, 0x10013
    addi        x1, x1, 0x728
    lw          x6, 0xFFFFF9F8(x1)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x6, x13, fail
    j           L34
L34: # Test 4-3: lw
    lui         x18, 0x1002D
    addi        x18, x18, 0xFFFFFE18
    lw          x13, 0x30C(x18)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x13, x16, fail
    j           L35
L35: # Test 5-0: lbu
    lui         x22, 0x10020
    addi        x22, x22, 0xFFFFFC77
    lbu         x4, 0xFFFFFABC(x22)
    lui         x10, 0x0
    addi        x10, x10, 0x0
    bne         x4, x10, fail
    j           L36
L36: # Test 5-1: lbu
    lui         x1, 0x1001E
    addi        x1, x1, 0x5E7
    lbu         x6, 0xFFFFFFE6(x1)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x6, x9, fail
    j           L37
L37: # Test 5-2: lbu
    lui         x12, 0x1001D
    addi        x12, x12, 0xFFFFFC2B
    lbu         x1, 0x10D(x12)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x1, x15, fail
    j           L38
L38: # Test 5-3: lbu
    lui         x25, 0x10037
    addi        x25, x25, 0xFFFFFDEB
    lbu         x16, 0xFFFFFA78(x25)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x16, x20, fail
    j           L39
L39: # Test 6-0: sh
    lui         x14, 0x10026
    addi        x14, x14, 0x42
    sh          x14, 0x2AE(x14)
    lui         x4, 0x10026
    addi        x4, x4, 0x472
    lbu         x15, 0xFFFFFE7E(x4)
    lui         x4, 0x0
    addi        x4, x4, 0x42
    bne         x15, x4, fail
    lui         x30, 0x10026
    addi        x30, x30, 0x39B
    lbu         x0, 0xFFFFFF55(x30)
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x0, x24, fail
    lui         x30, 0x10027
    addi        x30, x30, 0xFFFFF8A3
    lbu         x13, 0xFFFFFA4D(x30)
    lui         x9, 0x0
    addi        x9, x9, 0x42
    bne         x13, x9, fail
    lui         x20, 0x10026
    addi        x20, x20, 0xFFFFFF7D
    lbu         x21, 0x373(x20)
    lui         x22, 0x0
    addi        x22, x22, 0x42
    bne         x21, x22, fail
    j           L40
L40: # Test 6-1: sh
    lui         x5, 0x1001B
    addi        x5, x5, 0xFFFFFD57
    sh          x26, 0x169(x5)
    lui         x13, 0x1001B
    addi        x13, x13, 0x532
    lbu         x0, 0xFFFFF98E(x13)
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x0, x28, fail
    lui         x3, 0x1001B
    addi        x3, x3, 0xFFFFFBEF
    lbu         x6, 0x2D1(x3)
    lui         x21, 0x0
    addi        x21, x21, 0xEE
    bne         x6, x21, fail
    lui         x11, 0x1001B
    addi        x11, x11, 0x3E
    lbu         x20, 0xFFFFFE82(x11)
    lui         x12, 0x0
    addi        x12, x12, 0xEE
    bne         x20, x12, fail
    lui         x27, 0x1001B
    addi        x27, x27, 0xFFFFF9CB
    lbu         x25, 0x4F5(x27)
    lui         x27, 0x0
    addi        x27, x27, 0xEE
    bne         x25, x27, fail
    j           L41
L41: # Test 6-2: sh
    lui         x16, 0x10023
    addi        x16, x16, 0x7E
    sh          x11, 0x562(x16)
    lui         x24, 0x10024
    addi        x24, x24, 0xFFFFF8B9
    lbu         x23, 0xFFFFFD27(x24)
    lui         x17, 0x0
    addi        x17, x17, 0x3E
    bne         x23, x17, fail
    lui         x12, 0x10024
    addi        x12, x12, 0xFFFFF871
    lbu         x13, 0xFFFFFD6F(x12)
    lui         x25, 0x0
    addi        x25, x25, 0x3E
    bne         x13, x25, fail
    lui         x29, 0x10023
    addi        x29, x29, 0x72C
    lbu         x16, 0xFFFFFEB4(x29)
    lui         x6, 0x0
    addi        x6, x6, 0x3E
    bne         x16, x6, fail
    lui         x30, 0x10023
    addi        x30, x30, 0x6E6
    lbu         x4, 0xFFFFFEFA(x30)
    lui         x12, 0x0
    addi        x12, x12, 0x3E
    bne         x4, x12, fail
    j           L42
L42: # Test 6-3: sh
    lui         x3, 0x1003E
    addi        x3, x3, 0xFFFFF87D
    sh          x3, 0xFFFFF867(x3)
    lui         x4, 0x1003E
    addi        x4, x4, 0xFFFFF8B3
    lbu         x9, 0xFFFFF831(x4)
    lui         x4, 0x0
    addi        x4, x4, 0x7D
    bne         x9, x4, fail
    lui         x6, 0x1003D
    addi        x6, x6, 0x7AA
    lbu         x26, 0xFFFFF93A(x6)
    lui         x3, 0x0
    addi        x3, x3, 0x7D
    bne         x26, x3, fail
    lui         x9, 0x1003D
    addi        x9, x9, 0xFFFFFFF3
    lbu         x6, 0xF1(x9)
    lui         x1, 0x0
    addi        x1, x1, 0x7D
    bne         x6, x1, fail
    lui         x29, 0x1003D
    addi        x29, x29, 0x3B
    lbu         x12, 0xA9(x29)
    lui         x31, 0x0
    addi        x31, x31, 0x7D
    bne         x12, x31, fail
    j           L43
L43: # Test 7-0: sb
    lui         x30, 0x1001E
    addi        x30, x30, 0xFFFFFD08
    sb          x11, 0xFFFFFF03(x30)
    lui         x4, 0x1001E
    addi        x4, x4, 0x129
    lbu         x15, 0xFFFFFADF(x4)
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x15, x30, fail
    lui         x18, 0x1001E
    addi        x18, x18, 0xFFFFFBBA
    lbu         x12, 0x4E(x18)
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x12, x24, fail
    lui         x8, 0x1001E
    addi        x8, x8, 0xFFFFFBE2
    lbu         x5, 0x26(x8)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x5, x25, fail
    lui         x16, 0x1001E
    addi        x16, x16, 0xFFFFF99B
    lbu         x4, 0x26D(x16)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x4, x9, fail
    j           L44
L44: # Test 7-1: sb
    lui         x9, 0x1003B
    addi        x9, x9, 0x7AB
    sb          x20, 0x450(x9)
    lui         x17, 0x1003C
    addi        x17, x17, 0xFFFFFCEE
    lbu         x30, 0xFFFFFF0A(x17)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x30, x9, fail
    lui         x16, 0x1003B
    addi        x16, x16, 0x52F
    lbu         x18, 0x6C9(x16)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x18, x19, fail
    lui         x15, 0x1003C
    addi        x15, x15, 0x3CE
    lbu         x6, 0xFFFFF82A(x15)
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x6, x24, fail
    lui         x27, 0x1003B
    addi        x27, x27, 0x6B4
    lbu         x3, 0x544(x27)
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x3, x28, fail
    j           L45
L45: # Test 7-2: sb
    lui         x10, 0x10020
    addi        x10, x10, 0x512
    sb          x31, 0x443(x10)
    lui         x5, 0x10021
    addi        x5, x5, 0xFFFFFB53
    lbu         x16, 0xFFFFFE01(x5)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x16, x15, fail
    lui         x3, 0x10021
    addi        x3, x3, 0xFFFFFCBB
    lbu         x28, 0xFFFFFC99(x3)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x28, x1, fail
    lui         x1, 0x10020
    addi        x1, x1, 0x17C
    lbu         x19, 0x7D8(x1)
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x19, x29, fail
    lui         x10, 0x10020
    addi        x10, x10, 0x277
    lbu         x0, 0x6DD(x10)
    lui         x3, 0x0
    addi        x3, x3, 0x0
    bne         x0, x3, fail
    j           L46
L46: # Test 7-3: sb
    lui         x25, 0x10035
    addi        x25, x25, 0x5EC
    sb          x31, 0x422(x25)
    lui         x25, 0x10036
    addi        x25, x25, 0xFFFFFCAC
    lbu         x8, 0xFFFFFD60(x25)
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x8, x2, fail
    lui         x9, 0x10036
    addi        x9, x9, 0xFFFFF9F3
    lbu         x17, 0x19(x9)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x17, x22, fail
    lui         x24, 0x10036
    addi        x24, x24, 0xFFFFFC75
    lbu         x9, 0xFFFFFD97(x24)
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x9, x11, fail
    lui         x24, 0x10035
    addi        x24, x24, 0x516
    lbu         x3, 0x4F6(x24)
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x3, x8, fail
    j           L47
L47: # Test 8-0: lh
    lui         x30, 0x10012
    addi        x30, x30, 0xFFFFFCE8
    lh          x17, 0x4D8(x30)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x17, x9, fail
    j           L48
L48: # Test 8-1: lh
    lui         x20, 0x1001F
    addi        x20, x20, 0xFFFFFDAD
    lh          x17, 0x6F3(x20)
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x17, x7, fail
    j           L49
L49: # Test 8-2: lh
    lui         x11, 0x1001D
    addi        x11, x11, 0xFFFFF80D
    lh          x21, 0xFFFFF88F(x11)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x21, x19, fail
    j           L50
L50: # Test 8-3: lh
    lui         x6, 0x10016
    addi        x6, x6, 0xFFFFFB8D
    lh          x15, 0xFFFFF8CB(x6)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x15, x16, fail
    j           win
win: # Win label
    lui         x4, 0x0
    addi        x4, x4, 0x0
    j           end
fail: # Fail label
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFFFF
    j           end
end:
    ebreak