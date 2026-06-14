; =========================================================
; Game Engine Function: sub_180590
; Address            : 0x180590 - 0x1805DC
; =========================================================

180590:  PUSH            {R4-R7,LR}
180592:  ADD             R7, SP, #0xC
180594:  PUSH.W          {R11}
180598:  LDR             R1, [R0,#8]
18059A:  MOV             R4, R0
18059C:  MOVS            R5, #1
18059E:  LDR             R0, [R1,#8]; void *
1805A0:  MOV             R2, R1
1805A2:  STR             R0, [R4,#0xC]
1805A4:  LDR             R2, [R2,#8]
1805A6:  ADDS            R5, #1
1805A8:  CMP             R2, R1
1805AA:  BNE             loc_1805A4
1805AC:  SUBS            R2, R5, #1
1805AE:  CMP             R2, #9
1805B0:  BCC             loc_1805C6
1805B2:  LDR             R6, [R0,#8]
1805B4:  BLX             j__ZdlPv; operator delete(void *)
1805B8:  SUBS            R5, #1
1805BA:  MOV             R0, R6
1805BC:  CMP             R5, #9
1805BE:  STR             R6, [R4,#0xC]
1805C0:  BGT             loc_1805B2
1805C2:  LDR             R1, [R4,#8]
1805C4:  B               loc_1805C8
1805C6:  MOV             R6, R0
1805C8:  MOVS            R0, #0
1805CA:  STR             R1, [R4,#0xC]
1805CC:  STR             R6, [R1,#8]
1805CE:  STRD.W          R1, R1, [R4]
1805D2:  STRD.W          R0, R0, [R4,#0x10]
1805D6:  POP.W           {R11}
1805DA:  POP             {R4-R7,PC}
