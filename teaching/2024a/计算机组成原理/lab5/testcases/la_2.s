L0: # Randomly initialize GPR
    lu12i.w     $r0, 0x4DBCF
    nop
    nop
    ori         $r0, $r0, 0x432
    nop
    nop
    lu12i.w     $r1, 0x2445A
    nop
    nop
    ori         $r1, $r1, 0xEA6
    nop
    nop
    lu12i.w     $r2, 0x5FB20
    nop
    nop
    ori         $r2, $r2, 0x8BC
    nop
    nop
    lu12i.w     $r3, 0x75E8B
    nop
    nop
    ori         $r3, $r3, 0x927
    nop
    nop
    lu12i.w     $r4, 0x16A9
    nop
    nop
    ori         $r4, $r4, 0x96F
    nop
    nop
    lu12i.w     $r5, 0x8DEC1
    nop
    nop
    ori         $r5, $r5, 0x8DA
    nop
    nop
    lu12i.w     $r6, 0x495FE
    nop
    nop
    ori         $r6, $r6, 0x9CB
    nop
    nop
    lu12i.w     $r7, 0xE8B3E
    nop
    nop
    ori         $r7, $r7, 0xDE8
    nop
    nop
    lu12i.w     $r8, 0x8BE1E
    nop
    nop
    ori         $r8, $r8, 0xFD0
    nop
    nop
    lu12i.w     $r9, 0x3BCE3
    nop
    nop
    ori         $r9, $r9, 0x2A1
    nop
    nop
    lu12i.w     $r10, 0x83998
    nop
    nop
    ori         $r10, $r10, 0xEA4
    nop
    nop
    lu12i.w     $r11, 0x9F999
    nop
    nop
    ori         $r11, $r11, 0x793
    nop
    nop
    lu12i.w     $r12, 0x2E0FA
    nop
    nop
    ori         $r12, $r12, 0x8A8
    nop
    nop
    lu12i.w     $r13, 0xF2F30
    nop
    nop
    ori         $r13, $r13, 0xD62
    nop
    nop
    lu12i.w     $r14, 0x4019
    nop
    nop
    ori         $r14, $r14, 0x80A
    nop
    nop
    lu12i.w     $r15, 0x6109E
    nop
    nop
    ori         $r15, $r15, 0xAD9
    nop
    nop
    lu12i.w     $r16, 0xC676
    nop
    nop
    ori         $r16, $r16, 0x8FB
    nop
    nop
    lu12i.w     $r17, 0xAD8BA
    nop
    nop
    ori         $r17, $r17, 0x1BD
    nop
    nop
    lu12i.w     $r18, 0xDD3B7
    nop
    nop
    ori         $r18, $r18, 0x3EB
    nop
    nop
    lu12i.w     $r19, 0x83F8A
    nop
    nop
    ori         $r19, $r19, 0x517
    nop
    nop
    lu12i.w     $r20, 0xCB8CD
    nop
    nop
    ori         $r20, $r20, 0xA5E
    nop
    nop
    lu12i.w     $r21, 0x7FD17
    nop
    nop
    ori         $r21, $r21, 0xBC1
    nop
    nop
    lu12i.w     $r22, 0xA7E69
    nop
    nop
    ori         $r22, $r22, 0xDE8
    nop
    nop
    lu12i.w     $r23, 0x6B9E1
    nop
    nop
    ori         $r23, $r23, 0x751
    nop
    nop
    lu12i.w     $r24, 0xF2089
    nop
    nop
    ori         $r24, $r24, 0xF91
    nop
    nop
    lu12i.w     $r25, 0xCA329
    nop
    nop
    ori         $r25, $r25, 0xFA7
    nop
    nop
    lu12i.w     $r26, 0x6BC44
    nop
    nop
    ori         $r26, $r26, 0xDC7
    nop
    nop
    lu12i.w     $r27, 0x60CD1
    nop
    nop
    ori         $r27, $r27, 0x34
    nop
    nop
    lu12i.w     $r28, 0x7A04
    nop
    nop
    ori         $r28, $r28, 0xAFA
    nop
    nop
    lu12i.w     $r29, 0xD954
    nop
    nop
    ori         $r29, $r29, 0x809
    nop
    nop
    lu12i.w     $r30, 0x5FC66
    nop
    nop
    ori         $r30, $r30, 0x19E
    nop
    nop
    lu12i.w     $r31, 0xF6925
    nop
    nop
    ori         $r31, $r31, 0x31A
    nop
    nop
L1: # Test 0-0: ld.w
    lu12i.w     $r28, 0x1C800
    nop
    nop
    ori         $r28, $r28, 0xC67
    nop
    nop
    ld.w        $r4, $r28, 0x41D
    nop
    nop
    ori         $r8, $r0, 0x0
    nop
    nop
    bne         $r4, $r8, fail
    nop
    nop
L2: # Test 1-0: ld.h
    lu12i.w     $r18, 0x1C800
    nop
    nop
    ori         $r18, $r18, 0x745
    nop
    nop
    ld.h        $r21, $r18, 0x13B
    nop
    nop
    ori         $r13, $r0, 0x0
    nop
    nop
    bne         $r21, $r13, fail
    nop
    nop
L3: # Test 2-0: ld.bu
    lu12i.w     $r6, 0x1C800
    nop
    nop
    ori         $r6, $r6, 0x9D5
    nop
    nop
    ld.bu       $r12, $r6, -0x38F
    nop
    nop
    ori         $r23, $r0, 0x0
    nop
    nop
    bne         $r12, $r23, fail
    nop
    nop
L4: # Test 3-0: st.h
    lu12i.w     $r15, 0x1C802
    nop
    nop
    ori         $r15, $r15, 0xD6
    nop
    nop
    st.h        $r18, $r15, -0x2F4
    nop
    nop
    lu12i.w     $r12, 0x1C802
    nop
    nop
    ori         $r12, $r12, 0x17A
    nop
    nop
    ld.bu       $r13, $r12, -0x39A
    nop
    nop
    ori         $r18, $r0, 0x0
    nop
    nop
    bne         $r13, $r18, fail
    nop
    nop
    lu12i.w     $r31, 0x1C802
    nop
    nop
    ori         $r31, $r31, 0x2B6
    nop
    nop
    ld.bu       $r1, $r31, -0x4D6
    nop
    nop
    ori         $r30, $r0, 0x0
    nop
    nop
    bne         $r1, $r30, fail
    nop
    nop
    lu12i.w     $r9, 0x1C801
    nop
    nop
    ori         $r9, $r9, 0x999
    nop
    nop
    ld.bu       $r21, $r9, 0x447
    nop
    nop
    ori         $r16, $r0, 0x0
    nop
    nop
    bne         $r21, $r16, fail
    nop
    nop
    lu12i.w     $r19, 0x1C801
    nop
    nop
    ori         $r19, $r19, 0x74F
    nop
    nop
    ld.bu       $r4, $r19, 0x691
    nop
    nop
    ori         $r21, $r0, 0x0
    nop
    nop
    bne         $r4, $r21, fail
    nop
    nop
L5: # Test 4-0: st.b
    lu12i.w     $r14, 0x1C801
    nop
    nop
    ori         $r14, $r14, 0xC9C
    nop
    nop
    st.b        $r26, $r14, -0x72
    nop
    nop
    lu12i.w     $r7, 0x1C801
    nop
    nop
    ori         $r7, $r7, 0xEDF
    nop
    nop
    ld.bu       $r6, $r7, -0x2B7
    nop
    nop
    ori         $r12, $r0, 0x0
    nop
    nop
    bne         $r6, $r12, fail
    nop
    nop
    lu12i.w     $r3, 0x1C801
    nop
    nop
    ori         $r3, $r3, 0x686
    nop
    nop
    ld.bu       $r22, $r3, 0x5A2
    nop
    nop
    ori         $r23, $r0, 0x0
    nop
    nop
    bne         $r22, $r23, fail
    nop
    nop
    lu12i.w     $r30, 0x1C801
    nop
    nop
    ori         $r30, $r30, 0x64D
    nop
    nop
    ld.bu       $r14, $r30, 0x5DB
    nop
    nop
    ori         $r21, $r0, 0x0
    nop
    nop
    bne         $r14, $r21, fail
    nop
    nop
    lu12i.w     $r17, 0x1C801
    nop
    nop
    ori         $r17, $r17, 0x8B8
    nop
    nop
    ld.bu       $r7, $r17, 0x370
    nop
    nop
    ori         $r8, $r0, 0x0
    nop
    nop
    bne         $r7, $r8, fail
    nop
    nop
L6: # Test 5-0: b
    b           L7
    nop
    nop
    b           fail
    nop
    nop
L7: # Test 6-0: bl
    bl          L8
    nop
    nop
    b           fail
    nop
    nop
L8: # bl target
    lu12i.w     $r3, 0x1C000
    nop
    nop
    ori         $r3, $r3, 0x5F8
    nop
    nop
    bne         $r1, $r3, fail
    nop
    nop
L9: # Test 7-0: jirl
    lu12i.w     $r27, 0x1C013
    nop
    nop
    ori         $r27, $r27, 0x600
    nop
    nop
    jirl        $r1, $r27, -0x12FA0
    nop
    nop
    b           fail
    nop
    nop
L10: # jirl target
    lu12i.w     $r7, 0x1C000
    nop
    nop
    ori         $r7, $r7, 0x64C
    nop
    nop
    bne         $r1, $r7, fail
    nop
    nop
L11: # Test 8-0: beq
    beq         $r23, $r19, fail
    nop
    nop
L12: # Test 9-0: bne
    bne         $r13, $r21, fail
    nop
    nop
L13: # Test 10-0: blt
    blt         $r18, $r16, fail
    nop
    nop
L14: # Test 11-0: bge
    bge         $r4, $r9, fail
    nop
    nop
L15: # Test 12-0: bltu
    bltu        $r21, $r4, fail
    nop
    nop
L16: # Test 13-0: bgeu
    bgeu        $r1, $r21, win
    nop
    nop
    b           fail
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
