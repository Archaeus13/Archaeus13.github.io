L0: # Randomly initialize GPR
    lu12i.w     $r0, 0x3225B
    ori         $r0, $r0, 0xA15
    lu12i.w     $r1, 0xA5A95
    ori         $r1, $r1, 0x228
    lu12i.w     $r2, 0xAB0E1
    ori         $r2, $r2, 0x9C7
    lu12i.w     $r3, 0x2E189
    ori         $r3, $r3, 0xA07
    lu12i.w     $r4, 0x52C9C
    ori         $r4, $r4, 0xD3B
    lu12i.w     $r5, 0x49321
    ori         $r5, $r5, 0x365
    lu12i.w     $r6, 0x9C121
    ori         $r6, $r6, 0xCE8
    lu12i.w     $r7, 0x35252
    ori         $r7, $r7, 0x806
    lu12i.w     $r8, 0x7B874
    ori         $r8, $r8, 0x44E
    lu12i.w     $r9, 0xC16E1
    ori         $r9, $r9, 0x7C3
    lu12i.w     $r10, 0x800E4
    ori         $r10, $r10, 0xE03
    lu12i.w     $r11, 0xFA912
    ori         $r11, $r11, 0xCED
    lu12i.w     $r12, 0xFCACF
    ori         $r12, $r12, 0xE88
    lu12i.w     $r13, 0xACC37
    ori         $r13, $r13, 0x236
    lu12i.w     $r14, 0xE6C96
    ori         $r14, $r14, 0x9C2
    lu12i.w     $r15, 0x647D4
    ori         $r15, $r15, 0xCD8
    lu12i.w     $r16, 0x27E4D
    ori         $r16, $r16, 0xE0D
    lu12i.w     $r17, 0x1F25E
    ori         $r17, $r17, 0x80
    lu12i.w     $r18, 0xEC8F7
    ori         $r18, $r18, 0x296
    lu12i.w     $r19, 0xEE3D
    ori         $r19, $r19, 0x810
    lu12i.w     $r20, 0x43452
    ori         $r20, $r20, 0x9
    lu12i.w     $r21, 0x2F419
    ori         $r21, $r21, 0x4D0
    lu12i.w     $r22, 0xFE56A
    ori         $r22, $r22, 0x3B0
    lu12i.w     $r23, 0x5C787
    ori         $r23, $r23, 0x8F9
    lu12i.w     $r24, 0x7D279
    ori         $r24, $r24, 0x1DE
    lu12i.w     $r25, 0x4BB00
    ori         $r25, $r25, 0xC03
    lu12i.w     $r26, 0x3B8A3
    ori         $r26, $r26, 0x495
    lu12i.w     $r27, 0x7BC70
    ori         $r27, $r27, 0x9D8
    lu12i.w     $r28, 0x59F14
    ori         $r28, $r28, 0xE15
    lu12i.w     $r29, 0xDD55B
    ori         $r29, $r29, 0xA73
    lu12i.w     $r30, 0x671F2
    ori         $r30, $r30, 0xA19
    lu12i.w     $r31, 0xF094C
    ori         $r31, $r31, 0xAB2
L1: # Test 0-0: add.w
    add.w       $r20, $r18, $r5
    lu12i.w     $r11, 0x35C18
    ori         $r11, $r11, 0x5FB
    bne         $r20, $r11, fail
    nop
L2: # Test 0-1: add.w
    add.w       $r5, $r16, $r2
    lu12i.w     $r9, 0xD2F2F
    ori         $r9, $r9, 0x7D4
    bne         $r5, $r9, fail
    nop
L3: # Test 0-2: add.w
    add.w       $r27, $r2, $r2
    lu12i.w     $r20, 0x561C3
    ori         $r20, $r20, 0x38E
    bne         $r27, $r20, fail
    nop
L4: # Test 0-3: add.w
    add.w       $r22, $r9, $r2
    lu12i.w     $r25, 0x7E011
    ori         $r25, $r25, 0x19B
    bne         $r22, $r25, fail
    nop
L5: # Test 0-4: add.w
    add.w       $r4, $r12, $r24
    lu12i.w     $r28, 0x79D49
    ori         $r28, $r28, 0x66
    bne         $r4, $r28, fail
    nop
L6: # Test 1-0: sub.w
    sub.w       $r26, $r26, $r28
    lu12i.w     $r24, 0xC1B5A
    ori         $r24, $r24, 0x42F
    bne         $r26, $r24, fail
    nop
L7: # Test 1-1: sub.w
    sub.w       $r10, $r23, $r18
    lu12i.w     $r5, 0x6FE90
    ori         $r5, $r5, 0x663
    bne         $r10, $r5, fail
    nop
L8: # Test 1-2: sub.w
    sub.w       $r27, $r12, $r11
    lu12i.w     $r14, 0xC6EB7
    ori         $r14, $r14, 0x88D
    bne         $r27, $r14, fail
    nop
L9: # Test 1-3: sub.w
    sub.w       $r28, $r27, $r20
    lu12i.w     $r18, 0x70CF4
    ori         $r18, $r18, 0x4FF
    bne         $r28, $r18, fail
    nop
L10: # Test 1-4: sub.w
    sub.w       $r13, $r28, $r10
    lu12i.w     $r26, 0xE63
    ori         $r26, $r26, 0xE9C
    bne         $r13, $r26, fail
    nop
L11: # Test 2-0: sll.w
    sll.w       $r19, $r24, $r21
    lu12i.w     $r12, 0xA42F0
    bne         $r19, $r12, fail
    nop
L12: # Test 2-1: sll.w
    sll.w       $r15, $r14, $r10
    lu12i.w     $r12, 0x375BC
    ori         $r12, $r12, 0x468
    bne         $r15, $r12, fail
    nop
L13: # Test 2-2: sll.w
    sll.w       $r5, $r31, $r13
    lu12i.w     $r14, 0x20000
    bne         $r5, $r14, fail
    nop
L14: # Test 2-3: sll.w
    sll.w       $r26, $r11, $r12
    lu12i.w     $r6, 0xC185F
    ori         $r6, $r6, 0xB00
    bne         $r26, $r6, fail
    nop
L15: # Test 2-4: sll.w
    sll.w       $r29, $r11, $r28
    lu12i.w     $r25, 0x80000
    bne         $r29, $r25, fail
    nop
L16: # Test 3-0: srl.w
    srl.w       $r23, $r9, $r27
    lu12i.w     $r16, 0x69
    ori         $r16, $r16, 0x797
    bne         $r23, $r16, fail
    nop
L17: # Test 3-1: srl.w
    srl.w       $r8, $r17, $r9
    ori         $r27, $r0, 0x1F2
    bne         $r8, $r27, fail
    nop
L18: # Test 3-2: srl.w
    srl.w       $r4, $r14, $r1
    lu12i.w     $r6, 0x200
    bne         $r4, $r6, fail
    nop
L19: # Test 3-3: srl.w
    srl.w       $r15, $r14, $r21
    lu12i.w     $r21, 0x2
    bne         $r15, $r21, fail
    nop
L20: # Test 3-4: srl.w
    srl.w       $r15, $r9, $r7
    lu12i.w     $r22, 0x34BC
    ori         $r22, $r22, 0xBDF
    bne         $r15, $r22, fail
    nop
L21: # Test 4-0: sra.w
    sra.w       $r13, $r6, $r23
    ori         $r14, $r0, 0x0
    bne         $r13, $r14, fail
    nop
L22: # Test 4-1: sra.w
    sra.w       $r12, $r13, $r30
    ori         $r11, $r0, 0x0
    bne         $r12, $r11, fail
    nop
L23: # Test 4-2: sra.w
    sra.w       $r18, $r23, $r3
    ori         $r4, $r0, 0xD2F
    bne         $r18, $r4, fail
    nop
L24: # Test 4-3: sra.w
    sra.w       $r3, $r21, $r1
    ori         $r4, $r0, 0x20
    bne         $r3, $r4, fail
    nop
L25: # Test 4-4: sra.w
    sra.w       $r20, $r11, $r15
    ori         $r3, $r0, 0x0
    bne         $r20, $r3, fail
    nop
L26: # Test 5-0: sltu
    sltu        $r18, $r8, $r13
    ori         $r14, $r0, 0x0
    bne         $r18, $r14, fail
    nop
L27: # Test 5-1: sltu
    sltu        $r25, $r26, $r1
    ori         $r29, $r0, 0x0
    bne         $r25, $r29, fail
    nop
L28: # Test 5-2: sltu
    sltu        $r31, $r7, $r23
    ori         $r26, $r0, 0x0
    bne         $r31, $r26, fail
    nop
L29: # Test 5-3: sltu
    sltu        $r14, $r23, $r13
    ori         $r13, $r0, 0x0
    bne         $r14, $r13, fail
    nop
L30: # Test 5-4: sltu
    sltu        $r11, $r16, $r27
    ori         $r19, $r0, 0x0
    bne         $r11, $r19, fail
    nop
L31: # Test 6-0: or
    or          $r2, $r5, $r17
    lu12i.w     $r14, 0x3F25E
    ori         $r14, $r14, 0x80
    bne         $r2, $r14, fail
    nop
L32: # Test 6-1: or
    or          $r0, $r0, $r16
    ori         $r18, $r0, 0x0
    bne         $r0, $r18, fail
    nop
L33: # Test 6-2: or
    or          $r21, $r13, $r1
    lu12i.w     $r15, 0xA5A95
    ori         $r15, $r15, 0x228
    bne         $r21, $r15, fail
    nop
L34: # Test 6-3: or
    or          $r25, $r19, $r8
    ori         $r30, $r0, 0x1F2
    bne         $r25, $r30, fail
    nop
L35: # Test 6-4: or
    or          $r22, $r15, $r15
    lu12i.w     $r28, 0xA5A95
    ori         $r28, $r28, 0x228
    bne         $r22, $r28, fail
    nop
L36: # Test 7-0: xor
    xor         $r14, $r25, $r29
    ori         $r26, $r0, 0x1F2
    bne         $r14, $r26, fail
    nop
L37: # Test 7-1: xor
    xor         $r13, $r4, $r14
    ori         $r25, $r0, 0x1D2
    bne         $r13, $r25, fail
    nop
L38: # Test 7-2: xor
    xor         $r30, $r0, $r7
    lu12i.w     $r4, 0x35252
    ori         $r4, $r4, 0x806
    bne         $r30, $r4, fail
    nop
L39: # Test 7-3: xor
    xor         $r28, $r29, $r5
    lu12i.w     $r15, 0x20000
    bne         $r28, $r15, fail
    nop
L40: # Test 7-4: xor
    xor         $r26, $r19, $r17
    lu12i.w     $r1, 0x1F25E
    ori         $r1, $r1, 0x80
    bne         $r26, $r1, fail
    nop
L41: # Test 8-0: addi.w
    addi.w      $r22, $r30, -0xC9
    lu12i.w     $r7, 0x35252
    ori         $r7, $r7, 0x73D
    bne         $r22, $r7, fail
    nop
L42: # Test 8-1: addi.w
    addi.w      $r18, $r15, -0x2C8
    lu12i.w     $r2, 0x1FFFF
    ori         $r2, $r2, 0xD38
    bne         $r18, $r2, fail
    nop
L43: # Test 8-2: addi.w
    addi.w      $r19, $r22, 0x4B7
    lu12i.w     $r7, 0x35252
    ori         $r7, $r7, 0xBF4
    bne         $r19, $r7, fail
    nop
L44: # Test 8-3: addi.w
    addi.w      $r29, $r15, 0x204
    lu12i.w     $r31, 0x20000
    ori         $r31, $r31, 0x204
    bne         $r29, $r31, fail
    nop
L45: # Test 8-4: addi.w
    addi.w      $r26, $r14, 0x6F4
    ori         $r1, $r0, 0x8E6
    bne         $r26, $r1, fail
    nop
L46: # Test 9-0: slli.w
    slli.w      $r10, $r3, 0xD
    ori         $r11, $r0, 0x0
    bne         $r10, $r11, fail
    nop
L47: # Test 9-1: slli.w
    slli.w      $r17, $r12, 0x6
    ori         $r4, $r0, 0x0
    bne         $r17, $r4, fail
    nop
L48: # Test 9-2: slli.w
    slli.w      $r4, $r26, 0x15
    lu12i.w     $r14, 0x1CC00
    bne         $r4, $r14, fail
    nop
L49: # Test 9-3: slli.w
    slli.w      $r26, $r27, 0x15
    lu12i.w     $r17, 0x3E400
    bne         $r26, $r17, fail
    nop
L50: # Test 9-4: slli.w
    slli.w      $r18, $r20, 0xA
    ori         $r12, $r0, 0x0
    bne         $r18, $r12, fail
    nop
L51: # Test 10-0: srai.w
    srai.w      $r4, $r4, 0x14
    ori         $r8, $r0, 0x1CC
    bne         $r4, $r8, fail
    nop
L52: # Test 10-1: srai.w
    srai.w      $r5, $r28, 0x1C
    ori         $r4, $r0, 0x2
    bne         $r5, $r4, fail
    nop
L53: # Test 10-2: srai.w
    srai.w      $r14, $r11, 0xE
    ori         $r17, $r0, 0x0
    bne         $r14, $r17, fail
    nop
L54: # Test 10-3: srai.w
    srai.w      $r7, $r7, 0x7
    lu12i.w     $r9, 0x6A4
    ori         $r9, $r9, 0xA57
    bne         $r7, $r9, fail
    nop
L55: # Test 10-4: srai.w
    srai.w      $r12, $r31, 0x1A
    ori         $r9, $r0, 0x8
    bne         $r12, $r9, fail
    nop
L56: # Test 11-0: slti
    slti        $r22, $r19, -0x3C1
    ori         $r5, $r0, 0x0
    bne         $r22, $r5, fail
    nop
L57: # Test 11-1: slti
    slti        $r8, $r31, -0x7B4
    ori         $r11, $r0, 0x0
    bne         $r8, $r11, fail
    nop
L58: # Test 11-2: slti
    slti        $r17, $r5, -0x37B
    ori         $r1, $r0, 0x0
    bne         $r17, $r1, fail
    nop
L59: # Test 11-3: slti
    slti        $r9, $r18, -0x126
    ori         $r20, $r0, 0x0
    bne         $r9, $r20, fail
    nop
L60: # Test 11-4: slti
    slti        $r14, $r5, 0x144
    ori         $r31, $r0, 0x1
    bne         $r14, $r31, fail
    nop
L61: # Test 12-0: sltui
    sltui       $r4, $r2, -0x312
    ori         $r1, $r0, 0x1
    bne         $r4, $r1, fail
    nop
L62: # Test 12-1: sltui
    sltui       $r1, $r17, -0x52E
    ori         $r27, $r0, 0x1
    bne         $r1, $r27, fail
    nop
L63: # Test 12-2: sltui
    sltui       $r27, $r27, 0x2A1
    ori         $r15, $r0, 0x1
    bne         $r27, $r15, fail
    nop
L64: # Test 12-3: sltui
    sltui       $r19, $r12, 0x2CE
    ori         $r10, $r0, 0x1
    bne         $r19, $r10, fail
    nop
L65: # Test 12-4: sltui
    sltui       $r25, $r4, -0x782
    ori         $r5, $r0, 0x1
    bne         $r25, $r5, fail
    nop
L66: # Test 13-0: andi
    andi        $r7, $r29, 0xF9C
    ori         $r31, $r0, 0x204
    bne         $r7, $r31, fail
    nop
L67: # Test 13-1: andi
    andi        $r18, $r29, 0x76
    ori         $r16, $r0, 0x4
    bne         $r18, $r16, fail
    nop
L68: # Test 13-2: andi
    andi        $r27, $r3, 0x7A8
    ori         $r5, $r0, 0x0
    bne         $r27, $r5, fail
    nop
L69: # Test 13-3: andi
    andi        $r18, $r19, 0x207
    ori         $r30, $r0, 0x1
    bne         $r18, $r30, fail
    nop
L70: # Test 13-4: andi
    andi        $r0, $r1, 0x7C1
    ori         $r6, $r0, 0x0
    bne         $r0, $r6, fail
    nop
L71: # Test 14-0: ori
    ori         $r3, $r2, 0x102
    lu12i.w     $r24, 0x1FFFF
    ori         $r24, $r24, 0xD3A
    bne         $r3, $r24, fail
    nop
L72: # Test 14-1: ori
    ori         $r28, $r13, 0x52B
    ori         $r30, $r0, 0x5FB
    bne         $r28, $r30, fail
    nop
L73: # Test 14-2: ori
    ori         $r15, $r16, 0x907
    ori         $r6, $r0, 0x907
    bne         $r15, $r6, fail
    nop
L74: # Test 14-3: ori
    ori         $r24, $r29, 0x106
    lu12i.w     $r31, 0x20000
    ori         $r31, $r31, 0x306
    bne         $r24, $r31, fail
    nop
L75: # Test 14-4: ori
    ori         $r2, $r16, 0x202
    ori         $r20, $r0, 0x206
    bne         $r2, $r20, fail
    nop
L76: # Test 15-0: lu12i.w
    lu12i.w     $r13, 0x2DDC4
    lu12i.w     $r10, 0x2DDC4
    bne         $r13, $r10, fail
    nop
L77: # Test 15-1: lu12i.w
    lu12i.w     $r2, 0x45A2F
    lu12i.w     $r20, 0x45A2F
    bne         $r2, $r20, fail
    nop
L78: # Test 15-2: lu12i.w
    lu12i.w     $r21, -0x65E01
    lu12i.w     $r16, 0x9A1FF
    bne         $r21, $r16, fail
    nop
L79: # Test 15-3: lu12i.w
    lu12i.w     $r31, -0x33E0A
    lu12i.w     $r15, 0xCC1F6
    bne         $r31, $r15, fail
    nop
L80: # Test 15-4: lu12i.w
    lu12i.w     $r28, -0x496AC
    lu12i.w     $r31, 0xB6954
    bne         $r28, $r31, fail
    nop
L81: # Test 16-0: pcaddu12i
    pcaddu12i   $r30, 0x69979
    lu12i.w     $r18, 0x85979
    ori         $r18, $r18, 0x668
    bne         $r30, $r18, fail
    nop
L82: # Test 16-1: pcaddu12i
    pcaddu12i   $r13, -0x70E06
    lu12i.w     $r18, 0xAB1FA
    ori         $r18, $r18, 0x67C
    bne         $r13, $r18, fail
    nop
L83: # Test 16-2: pcaddu12i
    pcaddu12i   $r7, -0x670C2
    lu12i.w     $r20, 0xB4F3E
    ori         $r20, $r20, 0x690
    bne         $r7, $r20, fail
    nop
L84: # Test 16-3: pcaddu12i
    pcaddu12i   $r7, -0x43EE7
    lu12i.w     $r4, 0xD8119
    ori         $r4, $r4, 0x6A4
    bne         $r7, $r4, fail
    nop
L85: # Test 16-4: pcaddu12i
    pcaddu12i   $r4, 0x7FE91
    lu12i.w     $r7, 0x9BE91
    ori         $r7, $r7, 0x6B8
    bne         $r4, $r7, fail
    nop
win: # Win label
    ori         $r4, $r0, 0x0
    halt
    nop
    nop
    nop
    nop
fail: # Fail label
    lu12i.w     $r4, 0xFFFFF
    ori         $r4, $r4, 0xFFF
    halt
