L0: # Randomly initialize GPR
    lu12i.w     $r0, 0xB3E26
    nop
    nop
    ori         $r0, $r0, 0xC50
    nop
    nop
    lu12i.w     $r1, 0x1C739
    nop
    nop
    ori         $r1, $r1, 0x8EB
    nop
    nop
    lu12i.w     $r2, 0x2BAEF
    nop
    nop
    ori         $r2, $r2, 0xD16
    nop
    nop
    lu12i.w     $r3, 0x7A21E
    nop
    nop
    ori         $r3, $r3, 0xD99
    nop
    nop
    lu12i.w     $r4, 0xB1C31
    nop
    nop
    ori         $r4, $r4, 0xA84
    nop
    nop
    lu12i.w     $r5, 0xC78F6
    nop
    nop
    ori         $r5, $r5, 0x1EB
    nop
    nop
    lu12i.w     $r6, 0xBC6BD
    nop
    nop
    ori         $r6, $r6, 0x4FB
    nop
    nop
    lu12i.w     $r7, 0x5BBA8
    nop
    nop
    ori         $r7, $r7, 0xAB3
    nop
    nop
    lu12i.w     $r8, 0x55ECC
    nop
    nop
    ori         $r8, $r8, 0xC3B
    nop
    nop
    lu12i.w     $r9, 0x3266B
    nop
    nop
    ori         $r9, $r9, 0x82D
    nop
    nop
    lu12i.w     $r10, 0xCEA77
    nop
    nop
    ori         $r10, $r10, 0x1E6
    nop
    nop
    lu12i.w     $r11, 0xECEF2
    nop
    nop
    ori         $r11, $r11, 0x381
    nop
    nop
    lu12i.w     $r12, 0x959CA
    nop
    nop
    ori         $r12, $r12, 0x4AC
    nop
    nop
    lu12i.w     $r13, 0x2701A
    nop
    nop
    ori         $r13, $r13, 0x125
    nop
    nop
    lu12i.w     $r14, 0xE5B73
    nop
    nop
    ori         $r14, $r14, 0x9BD
    nop
    nop
    lu12i.w     $r15, 0xA8E89
    nop
    nop
    ori         $r15, $r15, 0x1CD
    nop
    nop
    lu12i.w     $r16, 0xD497
    nop
    nop
    ori         $r16, $r16, 0x74C
    nop
    nop
    lu12i.w     $r17, 0x188DB
    nop
    nop
    ori         $r17, $r17, 0x25C
    nop
    nop
    lu12i.w     $r18, 0x9EEAB
    nop
    nop
    ori         $r18, $r18, 0xF1C
    nop
    nop
    lu12i.w     $r19, 0xA6E7C
    nop
    nop
    ori         $r19, $r19, 0x132
    nop
    nop
    lu12i.w     $r20, 0x3093F
    nop
    nop
    ori         $r20, $r20, 0x94C
    nop
    nop
    lu12i.w     $r21, 0xF89EC
    nop
    nop
    ori         $r21, $r21, 0xD69
    nop
    nop
    lu12i.w     $r22, 0x9B2AF
    nop
    nop
    ori         $r22, $r22, 0xA0D
    nop
    nop
    lu12i.w     $r23, 0xB4F21
    nop
    nop
    ori         $r23, $r23, 0x7ED
    nop
    nop
    lu12i.w     $r24, 0xA1972
    nop
    nop
    ori         $r24, $r24, 0x9DD
    nop
    nop
    lu12i.w     $r25, 0xF2217
    nop
    nop
    ori         $r25, $r25, 0x8F
    nop
    nop
    lu12i.w     $r26, 0x4AEB7
    nop
    nop
    ori         $r26, $r26, 0xA9A
    nop
    nop
    lu12i.w     $r27, 0xBCE91
    nop
    nop
    ori         $r27, $r27, 0x641
    nop
    nop
    lu12i.w     $r28, 0x39D9E
    nop
    nop
    ori         $r28, $r28, 0xB87
    nop
    nop
    lu12i.w     $r29, 0xFBAB3
    nop
    nop
    ori         $r29, $r29, 0xE8C
    nop
    nop
    lu12i.w     $r30, 0xCC476
    nop
    nop
    ori         $r30, $r30, 0x127
    nop
    nop
    lu12i.w     $r31, 0x679D7
    nop
    nop
    ori         $r31, $r31, 0xCD8
    nop
    nop
L1: # Test 0-0: sub.w
    sub.w       $r3, $r20, $r23
    nop
    nop
    lu12i.w     $r31, 0x7BA1E
    nop
    nop
    ori         $r31, $r31, 0x15F
    nop
    nop
    bne         $r3, $r31, fail
    nop
    nop
L2: # Test 0-1: sub.w
    sub.w       $r6, $r3, $r18
    nop
    nop
    lu12i.w     $r2, 0xDCB72
    nop
    nop
    ori         $r2, $r2, 0x243
    nop
    nop
    bne         $r6, $r2, fail
    nop
    nop
L3: # Test 1-0: sra.w
    sra.w       $r26, $r10, $r8
    nop
    nop
    lu12i.w     $r8, 0xFFFFF
    nop
    nop
    ori         $r8, $r8, 0xFF9
    nop
    nop
    bne         $r26, $r8, fail
    nop
    nop
L4: # Test 1-1: sra.w
    sra.w       $r5, $r10, $r21
    nop
    nop
    lu12i.w     $r2, 0xFFE75
    nop
    nop
    ori         $r2, $r2, 0x3B8
    nop
    nop
    bne         $r5, $r2, fail
    nop
    nop
L5: # Test 2-0: slt
    slt         $r19, $r30, $r18
    nop
    nop
    ori         $r26, $r0, 0x0
    nop
    nop
    bne         $r19, $r26, fail
    nop
    nop
L6: # Test 2-1: slt
    slt         $r27, $r28, $r11
    nop
    nop
    ori         $r11, $r0, 0x0
    nop
    nop
    bne         $r27, $r11, fail
    nop
    nop
L7: # Test 3-0: sltu
    sltu        $r3, $r25, $r17
    nop
    nop
    ori         $r20, $r0, 0x0
    nop
    nop
    bne         $r3, $r20, fail
    nop
    nop
L8: # Test 3-1: sltu
    sltu        $r25, $r4, $r15
    nop
    nop
    ori         $r6, $r0, 0x0
    nop
    nop
    bne         $r25, $r6, fail
    nop
    nop
L9: # Test 4-0: slli.w
    slli.w      $r30, $r20, 0xB
    nop
    nop
    ori         $r18, $r0, 0x0
    nop
    nop
    bne         $r30, $r18, fail
    nop
    nop
L10: # Test 4-1: slli.w
    slli.w      $r0, $r19, 0x19
    nop
    nop
    ori         $r4, $r0, 0x0
    nop
    nop
    bne         $r0, $r4, fail
    nop
    nop
L11: # Test 5-0: srli.w
    srli.w      $r14, $r23, 0x18
    nop
    nop
    ori         $r2, $r0, 0xB4
    nop
    nop
    bne         $r14, $r2, fail
    nop
    nop
L12: # Test 5-1: srli.w
    srli.w      $r11, $r19, 0x15
    nop
    nop
    ori         $r24, $r0, 0x0
    nop
    nop
    bne         $r11, $r24, fail
    nop
    nop
L13: # Test 6-0: slti
    slti        $r25, $r14, 0x735
    nop
    nop
    ori         $r30, $r0, 0x1
    nop
    nop
    bne         $r25, $r30, fail
    nop
    nop
L14: # Test 6-1: slti
    slti        $r1, $r24, -0x23E
    nop
    nop
    ori         $r28, $r0, 0x0
    nop
    nop
    bne         $r1, $r28, fail
    nop
    nop
L15: # Test 7-0: sltui
    sltui       $r15, $r4, 0x735
    nop
    nop
    ori         $r10, $r0, 0x1
    nop
    nop
    bne         $r15, $r10, fail
    nop
    nop
L16: # Test 7-1: sltui
    sltui       $r29, $r25, 0x4C5
    nop
    nop
    ori         $r22, $r0, 0x1
    nop
    nop
    bne         $r29, $r22, fail
    nop
    nop
L17: # Test 8-0: xori
    xori        $r13, $r0, 0x7AA
    nop
    nop
    ori         $r25, $r0, 0x7AA
    nop
    nop
    bne         $r13, $r25, fail
    nop
    nop
L18: # Test 8-1: xori
    xori        $r18, $r15, 0x1AC
    nop
    nop
    ori         $r7, $r0, 0x1AD
    nop
    nop
    bne         $r18, $r7, fail
    nop
    nop
L19: # Test 9-0: lu12i.w
    lu12i.w     $r7, 0x1939E
    nop
    nop
    lu12i.w     $r6, 0x1939E
    nop
    nop
    bne         $r7, $r6, fail
    nop
    nop
L20: # Test 9-1: lu12i.w
    lu12i.w     $r13, -0x4BCD3
    nop
    nop
    lu12i.w     $r12, 0xB432D
    nop
    nop
    bne         $r13, $r12, fail
    nop
    nop
L21: # Test 10-0: pcaddu12i
    pcaddu12i   $r31, 0x259D7
    nop
    nop
    lu12i.w     $r28, 0x419D7
    nop
    nop
    ori         $r28, $r28, 0x600
    nop
    nop
    bne         $r31, $r28, fail
    nop
    nop
L22: # Test 10-1: pcaddu12i
    pcaddu12i   $r28, -0x1AB42  #1c000600
    nop
    nop
    lu12i.w     $r4, 0x14BE
    nop
    nop
    ori         $r4, $r4, 0x630
    nop
    nop
    bne         $r28, $r4, fail
    nop
    nop
win: # Win label
    ori         $r4, $r0, 0x0
    nop
    nop
    halt
    nop
    nop
fail: # Fail label
    lu12i.w     $r4, 0xFFFFF
    nop
    nop
    ori         $r4, $r4, 0xFFF
    nop
    nop
    halt
    nop
    nop