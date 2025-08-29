L0: # Randomly initialize GPR
    lui         x0, 0x3D9C
    addi        x0, x0, 0x506
    lui         x1, 0xDFD0D
    addi        x1, x1, 0xFFFFFE44
    lui         x2, 0xD0359
    addi        x2, x2, 0x278
    lui         x3, 0xE05CB
    addi        x3, x3, 0xFFFFF871
    lui         x4, 0x9DE45
    addi        x4, x4, 0xFFFFF9A4
    lui         x5, 0x719CD
    addi        x5, x5, 0x7E4
    lui         x6, 0x76FD5
    addi        x6, x6, 0x71C
    lui         x7, 0xE446B
    addi        x7, x7, 0xFFFFFC16
    lui         x8, 0x4753B
    addi        x8, x8, 0xFFFFFFF8
    lui         x9, 0xB85F4
    addi        x9, x9, 0xFFFFFF20
    lui         x10, 0x5B55B
    addi        x10, x10, 0x410
    lui         x11, 0x4BF4
    addi        x11, x11, 0x12E
    lui         x12, 0xABDAB
    addi        x12, x12, 0xFFFFFCCA
    lui         x13, 0x9EF9B
    addi        x13, x13, 0x208
    lui         x14, 0xAD7D
    addi        x14, x14, 0x7A5
    lui         x15, 0xBDC6F
    addi        x15, x15, 0x64D
    lui         x16, 0xC4F28
    addi        x16, x16, 0xFFFFF9D7
    lui         x17, 0xF53AA
    addi        x17, x17, 0x728
    lui         x18, 0x56DE6
    addi        x18, x18, 0xFFFFFD70
    lui         x19, 0x986F6
    addi        x19, x19, 0x5FF
    lui         x20, 0x3D67E
    addi        x20, x20, 0xFFFFFE87
    lui         x21, 0xC5184
    addi        x21, x21, 0xFFFFF8A6
    lui         x22, 0x21FB9
    addi        x22, x22, 0xFFFFFEBD
    lui         x23, 0x21CC5
    addi        x23, x23, 0x495
    lui         x24, 0x9C5CE
    addi        x24, x24, 0x24C
    lui         x25, 0x9B301
    addi        x25, x25, 0xFFFFF9A8
    lui         x26, 0x667BB
    addi        x26, x26, 0x13E
    lui         x27, 0x4BE1B
    addi        x27, x27, 0x22B
    lui         x28, 0x79EA6
    addi        x28, x28, 0x161
    lui         x29, 0x86C04
    addi        x29, x29, 0xFFFFFCF3
    lui         x30, 0xBBC32
    addi        x30, x30, 0xFFFFFEC3
    lui         x31, 0x3864D
    addi        x31, x31, 0xFFFFFF6B
L1: # Test 0-0: sub
    sub         x25, x15, x17
    lui         x23, 0xC88C5
    addi        x23, x23, 0xFFFFFF25
    bne         x25, x23, fail
    nop
L2: # Test 0-1: sub
    sub         x6, x11, x9
    lui         x21, 0x4C600
    addi        x21, x21, 0x20E
    bne         x6, x21, fail
    nop
L3: # Test 0-2: sub
    sub         x17, x7, x25
    lui         x3, 0x1BBA6
    addi        x3, x3, 0xFFFFFCF1
    bne         x17, x3, fail
    nop
L4: # Test 0-3: sub
    sub         x26, x22, x20
    lui         x16, 0xE493B
    addi        x16, x16, 0x36
    bne         x26, x16, fail
    nop
L5: # Test 0-4: sub
    sub         x22, x28, x6
    lui         x24, 0x2D8A6
    addi        x24, x24, 0xFFFFFF53
    bne         x22, x24, fail
    nop
L6: # Test 1-0: srl
    srl         x15, x9, x15
    lui         x13, 0x5C
    addi        x13, x13, 0x2F9
    bne         x15, x13, fail
    nop
L7: # Test 1-1: srl
    srl         x28, x22, x12
    lui         x21, 0xB6
    addi        x21, x21, 0x297
    bne         x28, x21, fail
    nop
L8: # Test 1-2: srl
    srl         x4, x30, x12
    lui         x21, 0x2EF
    addi        x21, x21, 0xC7
    bne         x4, x21, fail
    nop
L9: # Test 1-3: srl
    srl         x15, x29, x26
    lui         x26, 0x0
    addi        x26, x26, 0x21B
    bne         x15, x26, fail
    nop
L10: # Test 1-4: srl
    srl         x4, x29, x17
    lui         x22, 0x4
    addi        x22, x22, 0x360
    bne         x4, x22, fail
    nop
L11: # Test 2-0: sra
    sra         x9, x27, x1
    lui         x16, 0x4BE2
    addi        x16, x16, 0xFFFFFB22
    bne         x9, x16, fail
    nop
L12: # Test 2-1: sra
    sra         x9, x20, x30
    lui         x31, 0x7AD0
    addi        x31, x31, 0xFFFFFBD0
    bne         x9, x31, fail
    nop
L13: # Test 2-2: sra
    sra         x13, x20, x18
    lui         x17, 0x4
    addi        x17, x17, 0xFFFFFD67
    bne         x13, x17, fail
    nop
L14: # Test 2-3: sra
    sra         x12, x19, x4
    lui         x29, 0x986F6
    addi        x29, x29, 0x5FF
    bne         x12, x29, fail
    nop
L15: # Test 2-4: sra
    sra         x3, x19, x26
    lui         x25, 0x0
    addi        x25, x25, 0xFFFFFFF3
    bne         x3, x25, fail
    nop
L16: # Test 3-0: sltu
    sltu        x29, x5, x2
    lui         x31, 0x0
    addi        x31, x31, 0x1
    bne         x29, x31, fail
    nop
L17: # Test 3-1: sltu
    sltu        x14, x15, x27
    lui         x28, 0x0
    addi        x28, x28, 0x1
    bne         x14, x28, fail
    nop
L18: # Test 3-2: sltu
    sltu        x31, x5, x20
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x31, x2, fail
    nop
L19: # Test 3-3: sltu
    sltu        x3, x24, x30
    lui         x28, 0x0
    addi        x28, x28, 0x1
    bne         x3, x28, fail
    nop
L20: # Test 3-4: sltu
    sltu        x11, x13, x19
    lui         x29, 0x0
    addi        x29, x29, 0x1
    bne         x11, x29, fail
    nop
L21: # Test 4-0: or
    or          x12, x9, x1
    lui         x23, 0xDFFD0
    addi        x23, x23, 0xFFFFFFD4
    bne         x12, x23, fail
    nop
L22: # Test 4-1: or
    or          x7, x20, x8
    lui         x20, 0x7F780
    addi        x20, x20, 0xFFFFFFFF
    bne         x7, x20, fail
    nop
L23: # Test 4-2: or
    or          x21, x11, x17
    lui         x25, 0x4
    addi        x25, x25, 0xFFFFFD67
    bne         x21, x25, fail
    nop
L24: # Test 4-3: or
    or          x9, x11, x7
    lui         x13, 0x7F780
    addi        x13, x13, 0xFFFFFFFF
    bne         x9, x13, fail
    nop
L25: # Test 4-4: or
    or          x19, x27, x1
    lui         x1, 0xDFF20
    addi        x1, x1, 0xFFFFFE6F
    bne         x19, x1, fail
    nop
L26: # Test 5-0: xor
    xor         x22, x22, x19
    lui         x23, 0xDFF1C
    addi        x23, x23, 0xFFFFFD0F
    bne         x22, x23, fail
    nop
L27: # Test 5-1: xor
    xor         x13, x12, x9
    lui         x30, 0xA08B0
    addi        x30, x30, 0x2B
    bne         x13, x30, fail
    nop
L28: # Test 5-2: xor
    xor         x3, x28, x30
    lui         x26, 0xA08B0
    addi        x26, x26, 0x2A
    bne         x3, x26, fail
    nop
L29: # Test 5-3: xor
    xor         x25, x29, x9
    lui         x21, 0x7F780
    addi        x21, x21, 0xFFFFFFFE
    bne         x25, x21, fail
    nop
L30: # Test 5-4: xor
    xor         x28, x26, x7
    lui         x8, 0xDFFD0
    addi        x8, x8, 0xFFFFFFD5
    bne         x28, x8, fail
    nop
L31: # Test 6-0: slli
    slli        x30, x2, 0x12
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x30, x24, fail
    nop
L32: # Test 6-1: slli
    slli        x21, x16, 0x15
    lui         x6, 0x64400
    addi        x6, x6, 0x0
    bne         x21, x6, fail
    nop
L33: # Test 6-2: slli
    slli        x29, x28, 0x1F
    lui         x9, 0x80000
    addi        x9, x9, 0x0
    bne         x29, x9, fail
    nop
L34: # Test 6-3: slli
    slli        x27, x14, 0x16
    lui         x12, 0x400
    addi        x12, x12, 0x0
    bne         x27, x12, fail
    nop
L35: # Test 6-4: slli
    slli        x18, x11, 0x1C
    lui         x1, 0x10000
    addi        x1, x1, 0x0
    bne         x18, x1, fail
    nop
L36: # Test 7-0: srli
    srli        x5, x0, 0x10
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x5, x16, fail
    nop
L37: # Test 7-1: srli
    srli        x25, x30, 0x9
    lui         x4, 0x0
    addi        x4, x4, 0x0
    bne         x25, x4, fail
    nop
L38: # Test 7-2: srli
    srli        x2, x4, 0x1C
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x2, x1, fail
    nop
L39: # Test 7-3: srli
    srli        x1, x28, 0x15
    lui         x17, 0x0
    addi        x17, x17, 0x6FF
    bne         x1, x17, fail
    nop
L40: # Test 7-4: srli
    srli        x22, x8, 0x9
    lui         x12, 0x700
    addi        x12, x12, 0xFFFFFE7F
    bne         x22, x12, fail
    nop
L41: # Test 8-0: srai
    srai        x10, x21, 0x14
    lui         x31, 0x0
    addi        x31, x31, 0x644
    bne         x10, x31, fail
    nop
L42: # Test 8-1: srai
    srai        x19, x9, 0x19
    lui         x1, 0x0
    addi        x1, x1, 0xFFFFFFC0
    bne         x19, x1, fail
    nop
L43: # Test 8-2: srai
    srai        x6, x18, 0x1A
    lui         x27, 0x0
    addi        x27, x27, 0x4
    bne         x6, x27, fail
    nop
L44: # Test 8-3: srai
    srai        x10, x28, 0x1E
    lui         x17, 0x0
    addi        x17, x17, 0xFFFFFFFF
    bne         x10, x17, fail
    nop
L45: # Test 8-4: srai
    srai        x9, x13, 0x15
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFD04
    bne         x9, x4, fail
    nop
L46: # Test 9-0: slti
    slti        x5, x7, 0x584
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x5, x9, fail
    nop
L47: # Test 9-1: slti
    slti        x20, x7, 0xFFFFFAF4
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x20, x1, fail
    nop
L48: # Test 9-2: slti
    slti        x18, x26, 0x366
    lui         x1, 0x0
    addi        x1, x1, 0x1
    bne         x18, x1, fail
    nop
L49: # Test 9-3: slti
    slti        x11, x21, 0x18F
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x11, x9, fail
    nop
L50: # Test 9-4: slti
    slti        x12, x31, 0xFFFFFBA0
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x12, x24, fail
    nop
L51: # Test 10-0: andi
    andi        x10, x7, 0xFFFFFB1A
    lui         x17, 0x7F780
    addi        x17, x17, 0xFFFFFB1A
    bne         x10, x17, fail
    nop
L52: # Test 10-1: andi
    andi        x10, x24, 0xD
    lui         x3, 0x0
    addi        x3, x3, 0x0
    bne         x10, x3, fail
    nop
L53: # Test 10-2: andi
    andi        x20, x2, 0x73
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x20, x12, fail
    nop
L54: # Test 10-3: andi
    andi        x20, x21, 0x3FD
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x20, x14, fail
    nop
L55: # Test 10-4: andi
    andi        x5, x11, 0xFFFFFDAA
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x5, x21, fail
    nop
L56: # Test 11-0: ori
    ori         x29, x3, 0xFFFFF8E4
    lui         x9, 0x0
    addi        x9, x9, 0xFFFFF8E4
    bne         x29, x9, fail
    nop
L57: # Test 11-1: ori
    ori         x10, x22, 0x4B4
    lui         x19, 0x700
    addi        x19, x19, 0xFFFFFEFF
    bne         x10, x19, fail
    nop
L58: # Test 11-2: ori
    ori         x30, x5, 0xFFFFFD83
    lui         x17, 0x0
    addi        x17, x17, 0xFFFFFD83
    bne         x30, x17, fail
    nop
L59: # Test 11-3: ori
    ori         x12, x21, 0xFFFFFA88
    lui         x11, 0x0
    addi        x11, x11, 0xFFFFFA88
    bne         x12, x11, fail
    nop
L60: # Test 11-4: ori
    ori         x2, x20, 0x6E3
    lui         x20, 0x0
    addi        x20, x20, 0x6E3
    bne         x2, x20, fail
    nop
L61: # Test 12-0: lui
    lui         x13, 0x7594D
    lui         x30, 0x7594D
    addi        x30, x30, 0x0
    bne         x13, x30, fail
    nop
L62: # Test 12-1: lui
    lui         x22, 0xC2A83
    lui         x23, 0xC2A83
    addi        x23, x23, 0x0
    bne         x22, x23, fail
    nop
L63: # Test 12-2: lui
    lui         x16, 0xA438
    lui         x15, 0xA438
    addi        x15, x15, 0x0
    bne         x16, x15, fail
    nop
L64: # Test 12-3: lui
    lui         x11, 0xF1165
    lui         x23, 0xF1165
    addi        x23, x23, 0x0
    bne         x11, x23, fail
    nop
L65: # Test 12-4: lui
    lui         x17, 0x60CBE
    lui         x9, 0x60CBE
    addi        x9, x9, 0x0
    bne         x17, x9, fail
    nop
L66: # Test 13-0: auipc
    auipc       x12, 0xF472E
    lui         x3, 0xF4B2E
    addi        x3, x3, 0x614
    bne         x12, x3, fail
    nop
L67: # Test 13-1: auipc
    auipc       x31, 0xAFC6F
    lui         x29, 0xB006F
    addi        x29, x29, 0x628
    bne         x31, x29, fail
    nop
L68: # Test 13-2: auipc
    auipc       x4, 0x97B8E
    lui         x28, 0x97F8E
    addi        x28, x28, 0x63C
    bne         x4, x28, fail
    nop
L69: # Test 13-3: auipc
    auipc       x20, 0xB434B
    lui         x25, 0xB474B
    addi        x25, x25, 0x650
    bne         x20, x25, fail
    nop
L70: # Test 13-4: auipc
    auipc       x30, 0x9B0AD
    lui         x23, 0x9B4AD
    addi        x23, x23, 0x664
    bne         x30, x23, fail
    nop
win: # Win label
    lui         x4, 0x0
    addi        x4, x4, 0x0
    ebreak
    nop
    nop
    nop
    nop
fail: # Fail label
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFFFF
    ebreak
    