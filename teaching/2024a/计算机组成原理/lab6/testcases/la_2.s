L0: # Randomly initialize GPR
    lu12i.w     $r0, 0x465A7
    ori         $r0, $r0, 0x2ED
    lu12i.w     $r1, 0x4C8AC
    ori         $r1, $r1, 0x28A
    lu12i.w     $r2, 0x713D6
    ori         $r2, $r2, 0xEDA
    lu12i.w     $r3, 0xE7445
    ori         $r3, $r3, 0x26E
    lu12i.w     $r4, 0x7999E
    ori         $r4, $r4, 0x477
    lu12i.w     $r5, 0xC70C4
    ori         $r5, $r5, 0xA7E
    lu12i.w     $r6, 0xED86C
    ori         $r6, $r6, 0x9E4
    lu12i.w     $r7, 0xD9FD1
    ori         $r7, $r7, 0x76A
    lu12i.w     $r8, 0xB14CA
    ori         $r8, $r8, 0x60F
    lu12i.w     $r9, 0xBE487
    ori         $r9, $r9, 0x436
    lu12i.w     $r10, 0x590A1
    ori         $r10, $r10, 0x92C
    lu12i.w     $r11, 0x54009
    ori         $r11, $r11, 0x525
    lu12i.w     $r12, 0xE4676
    ori         $r12, $r12, 0xFB1
    lu12i.w     $r13, 0x83BDF
    ori         $r13, $r13, 0x952
    lu12i.w     $r14, 0xEDFB2
    ori         $r14, $r14, 0xC66
    lu12i.w     $r15, 0x66CC0
    ori         $r15, $r15, 0xDAB
    lu12i.w     $r16, 0x6F2C5
    ori         $r16, $r16, 0xA21
    lu12i.w     $r17, 0xD0D8A
    ori         $r17, $r17, 0xA03
    lu12i.w     $r18, 0x3FE6F
    ori         $r18, $r18, 0xEF6
    lu12i.w     $r19, 0xBE4A9
    ori         $r19, $r19, 0x7F9
    lu12i.w     $r20, 0x8BAFD
    ori         $r20, $r20, 0xDA7
    lu12i.w     $r21, 0xD6FE4
    ori         $r21, $r21, 0x832
    lu12i.w     $r22, 0x6F19E
    ori         $r22, $r22, 0xE7A
    lu12i.w     $r23, 0x5643
    ori         $r23, $r23, 0x5B8
    lu12i.w     $r24, 0xDC5E5
    ori         $r24, $r24, 0xA1B
    lu12i.w     $r25, 0xC6477
    ori         $r25, $r25, 0x18
    lu12i.w     $r26, 0xD887
    ori         $r26, $r26, 0x7AD
    lu12i.w     $r27, 0x20176
    ori         $r27, $r27, 0xE80
    lu12i.w     $r28, 0xC655D
    ori         $r28, $r28, 0xBB7
    lu12i.w     $r29, 0xF652A
    ori         $r29, $r29, 0xBF3
    lu12i.w     $r30, 0x66B73
    ori         $r30, $r30, 0xCC0
    lu12i.w     $r31, 0xAAD39
    ori         $r31, $r31, 0x336
L1: # Test 0-0: ld.h
    lu12i.w     $r9, 0x1C801
    ori         $r9, $r9, 0x5AF
    ld.h        $r8, $r9, -0x3CB
    ori         $r5, $r0, 0x0
    bne         $r8, $r5, fail
    b           L2
L2: # Test 0-1: ld.h
    lu12i.w     $r20, 0x1C802
    ori         $r20, $r20, 0x2B1
    ld.h        $r3, $r20, -0x28B
    ori         $r10, $r0, 0x0
    bne         $r3, $r10, fail
    b           L3
L3: # Test 0-2: ld.h
    lu12i.w     $r16, 0x1C801
    ori         $r16, $r16, 0x369
    ld.h        $r8, $r16, 0x317
    ori         $r20, $r0, 0x0
    bne         $r8, $r20, fail
    b           L4
L4: # Test 0-3: ld.h
    lu12i.w     $r12, 0x1C801
    ori         $r12, $r12, 0x1AF
    ld.h        $r4, $r12, -0x309
    ori         $r27, $r0, 0x0
    bne         $r4, $r27, fail
    b           L5
L5: # Test 1-0: ld.b
    lu12i.w     $r17, 0x1C7FF
    ori         $r17, $r17, 0xA94
    ld.b        $r10, $r17, 0x731
    ori         $r2, $r0, 0x0
    bne         $r10, $r2, fail
    b           L6
L6: # Test 1-1: ld.b
    lu12i.w     $r5, 0x1C802
    ori         $r5, $r5, 0x164
    ld.b        $r16, $r5, -0x3D5
    ori         $r6, $r0, 0x0
    bne         $r16, $r6, fail
    b           L7
L7: # Test 1-2: ld.b
    lu12i.w     $r17, 0x1C800
    ori         $r17, $r17, 0x4B
    ld.b        $r19, $r17, 0x1FF
    ori         $r5, $r0, 0x0
    bne         $r19, $r5, fail
    b           L8
L8: # Test 1-3: ld.b
    lu12i.w     $r23, 0x1C802
    ori         $r23, $r23, 0x9D3
    ld.b        $r30, $r23, -0x365
    ori         $r29, $r0, 0x0
    bne         $r30, $r29, fail
    b           L9
L9: # Test 2-0: ld.hu
    lu12i.w     $r18, 0x1C801
    ori         $r18, $r18, 0xBA
    ld.hu       $r14, $r18, -0x45E
    ori         $r8, $r0, 0x0
    bne         $r14, $r8, fail
    b           L10
L10: # Test 2-1: ld.hu
    lu12i.w     $r19, 0x1C800
    ori         $r19, $r19, 0xAF6
    ld.hu       $r10, $r19, -0xB2
    ori         $r30, $r0, 0x0
    bne         $r10, $r30, fail
    b           L11
L11: # Test 2-2: ld.hu
    lu12i.w     $r20, 0x1C801
    ori         $r20, $r20, 0x951
    ld.hu       $r3, $r20, -0x26B
    ori         $r11, $r0, 0x0
    bne         $r3, $r11, fail
    b           L12
L12: # Test 2-3: ld.hu
    lu12i.w     $r29, 0x1C801
    ori         $r29, $r29, 0x708
    ld.hu       $r29, $r29, 0x140
    ori         $r6, $r0, 0x0
    bne         $r29, $r6, fail
    b           L13
L13: # Test 3-0: st.w
    lu12i.w     $r3, 0x1C800
    ori         $r3, $r3, 0x4AF
    st.w        $r4, $r3, -0x333
    lu12i.w     $r30, 0x1C7FF
    ori         $r30, $r30, 0xB5F
    ld.bu       $r8, $r30, 0x61D
    ori         $r23, $r0, 0x0
    bne         $r8, $r23, fail
    lu12i.w     $r19, 0x1C800
    ori         $r19, $r19, 0x518
    ld.bu       $r18, $r19, -0x39C
    ori         $r7, $r0, 0x0
    bne         $r18, $r7, fail
    lu12i.w     $r27, 0x1C7FF
    ori         $r27, $r27, 0x9CF
    ld.bu       $r0, $r27, 0x7AD
    ori         $r12, $r0, 0x0
    bne         $r0, $r12, fail
    lu12i.w     $r29, 0x1C7FF
    ori         $r29, $r29, 0xDE0
    ld.bu       $r25, $r29, 0x39C
    ori         $r1, $r0, 0x0
    bne         $r25, $r1, fail
    b           L14
L14: # Test 3-1: st.w
    lu12i.w     $r23, 0x1C800
    ori         $r23, $r23, 0x917
    st.w        $r26, $r23, 0x1F9
    lu12i.w     $r6, 0x1C801
    ori         $r6, $r6, 0x81
    ld.bu       $r2, $r6, -0x571
    ori         $r30, $r0, 0xAD
    bne         $r2, $r30, fail
    lu12i.w     $r25, 0x1C800
    ori         $r25, $r25, 0x752
    ld.bu       $r8, $r25, 0x3BE
    ori         $r2, $r0, 0xAD
    bne         $r8, $r2, fail
    lu12i.w     $r12, 0x1C800
    ori         $r12, $r12, 0xFD6
    ld.bu       $r22, $r12, -0x4C6
    ori         $r25, $r0, 0xAD
    bne         $r22, $r25, fail
    lu12i.w     $r31, 0x1C800
    ori         $r31, $r31, 0x706
    ld.bu       $r21, $r31, 0x40A
    ori         $r14, $r0, 0xAD
    bne         $r21, $r14, fail
    b           L15
L15: # Test 3-2: st.w
    lu12i.w     $r26, 0x1C802
    ori         $r26, $r26, 0x39B
    st.w        $r18, $r26, 0x7DD
    lu12i.w     $r19, 0x1C802
    ori         $r19, $r19, 0xF2B
    ld.bu       $r25, $r19, -0x3B3
    ori         $r22, $r0, 0x0
    bne         $r25, $r22, fail
    lu12i.w     $r2, 0x1C802
    ori         $r2, $r2, 0xA82
    ld.bu       $r23, $r2, 0xF6
    ori         $r15, $r0, 0x0
    bne         $r23, $r15, fail
    lu12i.w     $r27, 0x1C802
    ori         $r27, $r27, 0x533
    ld.bu       $r27, $r27, 0x645
    ori         $r5, $r0, 0x0
    bne         $r27, $r5, fail
    lu12i.w     $r22, 0x1C802
    ori         $r22, $r22, 0x74A
    ld.bu       $r23, $r22, 0x42E
    ori         $r29, $r0, 0x0
    bne         $r23, $r29, fail
    b           L16
L16: # Test 3-3: st.w
    lu12i.w     $r8, 0x1C803
    ori         $r8, $r8, 0x2F0
    st.w        $r16, $r8, -0x73C
    lu12i.w     $r1, 0x1C802
    ori         $r1, $r1, 0x9B9
    ld.bu       $r18, $r1, 0x1FB
    ori         $r15, $r0, 0x0
    bne         $r18, $r15, fail
    lu12i.w     $r18, 0x1C802
    ori         $r18, $r18, 0xD8F
    ld.bu       $r19, $r18, -0x1DB
    ori         $r29, $r0, 0x0
    bne         $r19, $r29, fail
    lu12i.w     $r23, 0x1C803
    ori         $r23, $r23, 0x267
    ld.bu       $r26, $r23, -0x6B3
    ori         $r4, $r0, 0x0
    bne         $r26, $r4, fail
    lu12i.w     $r26, 0x1C802
    ori         $r26, $r26, 0x6BE
    ld.bu       $r10, $r26, 0x4F6
    ori         $r22, $r0, 0x0
    bne         $r10, $r22, fail
    b           L17
L17: # Test 4-0: st.h
    lu12i.w     $r16, 0x1C801
    ori         $r16, $r16, 0x143
    st.h        $r22, $r16, -0x59F
    lu12i.w     $r26, 0x1C801
    ori         $r26, $r26, 0x217
    ld.bu       $r10, $r26, -0x673
    ori         $r18, $r0, 0x0
    bne         $r10, $r18, fail
    lu12i.w     $r3, 0x1C800
    ori         $r3, $r3, 0x3F6
    ld.bu       $r7, $r3, 0x7AE
    ori         $r2, $r0, 0x0
    bne         $r7, $r2, fail
    lu12i.w     $r6, 0x1C800
    ori         $r6, $r6, 0xD49
    ld.bu       $r26, $r6, -0x1A5
    ori         $r24, $r0, 0x0
    bne         $r26, $r24, fail
    lu12i.w     $r15, 0x1C800
    ori         $r15, $r15, 0x605
    ld.bu       $r27, $r15, 0x59F
    ori         $r13, $r0, 0x0
    bne         $r27, $r13, fail
    b           L18
L18: # Test 4-1: st.h
    lu12i.w     $r9, 0x1C7FF
    ori         $r9, $r9, 0xF8A
    st.h        $r16, $r9, 0x3E8
    lu12i.w     $r9, 0x1C800
    ori         $r9, $r9, 0x460
    ld.bu       $r8, $r9, -0xF0
    ori         $r9, $r0, 0x0
    bne         $r8, $r9, fail
    lu12i.w     $r8, 0x1C800
    ori         $r8, $r8, 0x4BF
    ld.bu       $r9, $r8, -0x14F
    ori         $r3, $r0, 0x0
    bne         $r9, $r3, fail
    lu12i.w     $r10, 0x1C800
    ori         $r10, $r10, 0x267
    ld.bu       $r0, $r10, 0x109
    ori         $r17, $r0, 0x0
    bne         $r0, $r17, fail
    lu12i.w     $r19, 0x1C800
    ld.bu       $r9, $r19, 0x370
    ori         $r23, $r0, 0x0
    bne         $r9, $r23, fail
    b           L19
L19: # Test 4-2: st.h
    lu12i.w     $r2, 0x1C802
    ori         $r2, $r2, 0x6B7
    st.h        $r0, $r2, -0x335
    lu12i.w     $r7, 0x1C802
    ori         $r7, $r7, 0x2F3
    ld.bu       $r18, $r7, 0x8D
    ori         $r16, $r0, 0x0
    bne         $r18, $r16, fail
    lu12i.w     $r11, 0x1C801
    ori         $r11, $r11, 0xFCD
    ld.bu       $r4, $r11, 0x3B3
    ori         $r30, $r0, 0x0
    bne         $r4, $r30, fail
    lu12i.w     $r5, 0x1C802
    ori         $r5, $r5, 0x3C3
    ld.bu       $r2, $r5, -0x43
    ori         $r15, $r0, 0x0
    bne         $r2, $r15, fail
    lu12i.w     $r16, 0x1C802
    ori         $r16, $r16, 0x3E1
    ld.bu       $r0, $r16, -0x61
    ori         $r9, $r0, 0x0
    bne         $r0, $r9, fail
    b           L20
L20: # Test 4-3: st.h
    lu12i.w     $r3, 0x1C802
    ori         $r3, $r3, 0x9E6
    st.h        $r9, $r3, -0x766
    lu12i.w     $r9, 0x1C802
    ori         $r9, $r9, 0x4C9
    ld.bu       $r1, $r9, -0x249
    ori         $r11, $r0, 0x0
    bne         $r1, $r11, fail
    lu12i.w     $r9, 0x1C801
    ori         $r9, $r9, 0xE9B
    ld.bu       $r23, $r9, 0x3E5
    ori         $r9, $r0, 0x0
    bne         $r23, $r9, fail
    lu12i.w     $r16, 0x1C801
    ori         $r16, $r16, 0xE7C
    ld.bu       $r24, $r16, 0x404
    ori         $r17, $r0, 0x0
    bne         $r24, $r17, fail
    lu12i.w     $r16, 0x1C801
    ori         $r16, $r16, 0xC6E
    ld.bu       $r29, $r16, 0x612
    ori         $r4, $r0, 0x0
    bne         $r29, $r4, fail
    b           L21
L21: # Test 5-0: b
    b           L22
    b           fail
L22: # Test 5-1: b
    b           L23
    b           fail
L23: # Test 5-2: b
    b           L24
    b           fail
L24: # Test 5-3: b
    b           L25
    b           fail
L25: # Test 5-4: b
    b           L26
    b           fail
L26: # Test 6-0: bl
    bl          L27
    b           fail
L27: # bl target
    lu12i.w     $r14, 0x1C000
    ori         $r14, $r14, 0x548
    bne         $r1, $r14, fail
    b           L28
L28: # Test 6-1: bl
    bl          L29
    b           fail
L29: # bl target
    lu12i.w     $r28, 0x1C000
    ori         $r28, $r28, 0x560
    bne         $r1, $r28, fail
    b           L30
L30: # Test 6-2: bl
    bl          L31
    b           fail
L31: # bl target
    lu12i.w     $r15, 0x1C000
    ori         $r15, $r15, 0x578
    bne         $r1, $r15, fail
    b           L32
L32: # Test 6-3: bl
    bl          L33
    b           fail
L33: # bl target
    lu12i.w     $r10, 0x1C000
    ori         $r10, $r10, 0x590
    bne         $r1, $r10, fail
    b           L34
L34: # Test 6-4: bl
    bl          L35
    b           fail
L35: # bl target
    lu12i.w     $r15, 0x1C000
    ori         $r15, $r15, 0x5A8
    bne         $r1, $r15, fail
    b           L36
L36: # Test 7-0: jirl
    lu12i.w     $r8, 0x1BFF7
    ori         $r8, $r8, 0xA8C
    jirl        $r14, $r8, 0x8B40
    b           fail
L37: # jirl target
    lu12i.w     $r26, 0x1C000
    ori         $r26, $r26, 0x5C8
    bne         $r14, $r26, fail
    b           L38
L38: # Test 7-1: jirl
    lu12i.w     $r12, 0x1BFF7
    ori         $r12, $r12, 0x950
    jirl        $r29, $r12, 0x8C9C
    b           fail
L39: # jirl target
    lu12i.w     $r21, 0x1C000
    ori         $r21, $r21, 0x5E8
    bne         $r29, $r21, fail
    b           L40
L40: # Test 7-2: jirl
    lu12i.w     $r13, 0x1BFE0
    ori         $r13, $r13, 0x934
    jirl        $r22, $r13, 0x1FCD8
    b           fail
L41: # jirl target
    lu12i.w     $r15, 0x1C000
    ori         $r15, $r15, 0x608
    bne         $r22, $r15, fail
    b           L42
L42: # Test 7-3: jirl
    lu12i.w     $r2, 0x1BFFC
    ori         $r2, $r2, 0x868
    jirl        $r29, $r2, 0x3DC4
    b           fail
L43: # jirl target
    lu12i.w     $r8, 0x1C000
    ori         $r8, $r8, 0x628
    bne         $r29, $r8, fail
    b           L44
L44: # Test 7-4: jirl
    lu12i.w     $r3, 0x1C001
    ori         $r3, $r3, 0x244
    jirl        $r19, $r3, -0xBF8
    b           fail
L45: # jirl target
    lu12i.w     $r15, 0x1C000
    ori         $r15, $r15, 0x648
    bne         $r19, $r15, fail
    b           L46
L46: # Test 8-0: blt
    blt         $r15, $r14, fail
    b           L47
L47: # Test 8-1: blt
    blt         $r22, $r0, fail
    b           L48
L48: # Test 8-2: blt
    blt         $r10, $r8, L49
    b           fail
L49: # Test 8-3: blt
    blt         $r4, $r27, fail
    b           L50
L50: # Test 8-4: blt
    blt         $r13, $r21, L51
    b           fail
L51: # Test 9-0: bge
    bge         $r0, $r1, fail
    b           L52
L52: # Test 9-1: bge
    bge         $r15, $r24, L53
    b           fail
L53: # Test 9-2: bge
    bge         $r14, $r25, L54
    b           fail
L54: # Test 9-3: bge
    bge         $r3, $r8, L55
    b           fail
L55: # Test 9-4: bge
    bge         $r14, $r23, L56
    b           fail
L56: # Test 10-0: bltu
    bltu        $r4, $r25, fail
    b           L57
L57: # Test 10-1: bltu
    bltu        $r23, $r22, L58
    b           fail
L58: # Test 10-2: bltu
    bltu        $r14, $r27, fail
    b           L59
L59: # Test 10-3: bltu
    bltu        $r1, $r21, L60
    b           fail
L60: # Test 10-4: bltu
    bltu        $r2, $r13, fail
    b           L61
L61: # Test 11-0: bgeu
    bgeu        $r10, $r16, fail
    b           L62
L62: # Test 11-1: bgeu
    bgeu        $r15, $r12, L63
    b           fail
L63: # Test 11-2: bgeu
    bgeu        $r6, $r11, L64
    b           fail
L64: # Test 11-3: bgeu
    bgeu        $r26, $r4, L65
    b           fail
L65: # Test 11-4: bgeu
    bgeu        $r6, $r0, win
    b           fail
win: # Win label
    ori         $r4, $r0, 0x0
    halt
fail: # Fail label
    lu12i.w     $r4, 0xFFFFF
    ori         $r4, $r4, 0xFFF
    halt
