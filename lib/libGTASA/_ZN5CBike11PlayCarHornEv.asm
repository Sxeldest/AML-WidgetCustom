; =========================================================
; Game Engine Function: _ZN5CBike11PlayCarHornEv
; Address            : 0x5673EE - 0x567494
; =========================================================

5673EE:  PUSH            {R4,R6,R7,LR}
5673F0:  ADD             R7, SP, #8
5673F2:  SUB             SP, SP, #0x10
5673F4:  MOV             R4, R0
5673F6:  LDRH.W          R0, [R4,#0x460]
5673FA:  CMP             R0, #0
5673FC:  ITT NE
5673FE:  MOVWNE          R1, #0xFFFF
567402:  CMPNE           R0, R1
567404:  BEQ             loc_567412
567406:  LDRB.W          R0, [R4,#0x3A]
56740A:  AND.W           R0, R0, #0xF8
56740E:  CMP             R0, #0x28 ; '('
567410:  BNE             loc_567418
567412:  LDR.W           R0, [R4,#0x524]
567416:  CBZ             R0, loc_56741C
567418:  ADD             SP, SP, #0x10
56741A:  POP             {R4,R6,R7,PC}
56741C:  LDRB.W          R0, [R4,#0x529]
567420:  CMP             R0, #0
567422:  ITTTT NE
567424:  SUBNE           R0, #1
567426:  STRBNE.W        R0, [R4,#0x529]
56742A:  ADDNE           SP, SP, #0x10
56742C:  POPNE           {R4,R6,R7,PC}
56742E:  BLX             rand
567432:  AND.W           R0, R0, #0x7F
567436:  ADDS            R0, #0x96
567438:  STRB.W          R0, [R4,#0x529]
56743C:  AND.W           R1, R0, #7
567440:  CMP             R1, #1
567442:  BLS             loc_56746E
567444:  LDR.W           R0, [R4,#0x464]; this
567448:  CMP             R1, #3
56744A:  BHI             loc_567478
56744C:  CMP             R0, #0
56744E:  ITT NE
567450:  LDRBNE.W        R1, [R4,#0x3DF]
567454:  MOVSNE.W        R1, R1,LSL#31
567458:  BEQ             loc_56746E
56745A:  MOVS            R1, #0
56745C:  MOVS            R2, #0; unsigned int
56745E:  STRD.W          R1, R1, [SP,#0x18+var_18]; unsigned __int8
567462:  MOV.W           R3, #0x3F800000; float
567466:  STR             R1, [SP,#0x18+var_10]; unsigned __int8
567468:  MOVS            R1, #0x16; unsigned __int16
56746A:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
56746E:  MOVS            R0, #0x2D ; '-'
567470:  STR.W           R0, [R4,#0x524]
567474:  ADD             SP, SP, #0x10
567476:  POP             {R4,R6,R7,PC}
567478:  CMP             R0, #0
56747A:  BEQ             loc_567418
56747C:  MOVS            R1, #0
56747E:  MOVS            R2, #0; unsigned int
567480:  STRD.W          R1, R1, [SP,#0x18+var_18]; unsigned __int8
567484:  MOV.W           R3, #0x3F800000; float
567488:  STR             R1, [SP,#0x18+var_10]; unsigned __int8
56748A:  MOVS            R1, #0x16; unsigned __int16
56748C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
567490:  ADD             SP, SP, #0x10
567492:  POP             {R4,R6,R7,PC}
