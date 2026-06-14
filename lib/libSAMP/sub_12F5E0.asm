; =========================================================
; Game Engine Function: sub_12F5E0
; Address            : 0x12F5E0 - 0x12F660
; =========================================================

12F5E0:  PUSH            {R4,R5,R7,LR}
12F5E2:  ADD             R7, SP, #8
12F5E4:  MOV             R4, R0
12F5E6:  LDR.W           R0, [R0,#0x88]
12F5EA:  CBZ             R0, locret_12F65E
12F5EC:  LDR             R0, =(off_2349A8 - 0x12F5F2)
12F5EE:  ADD             R0, PC; off_2349A8
12F5F0:  LDR             R5, [R0]; dword_381BF4
12F5F2:  BL              sub_F0B30
12F5F6:  MOV             R1, R0
12F5F8:  LDR             R0, [R5]
12F5FA:  MOVS            R2, #0
12F5FC:  ADD.W           R1, R1, #0x1F4
12F600:  STR.W           R2, [R4,#0x88]
12F604:  LDRB.W          R2, [R0,#0x85]
12F608:  STR             R1, [R4,#0x58]
12F60A:  CBNZ            R2, loc_12F612
12F60C:  LDRB.W          R1, [R0,#0x84]
12F610:  CBZ             R1, loc_12F624
12F612:  LDRB.W          R1, [R4,#0x90]
12F616:  CMP             R1, #1
12F618:  BNE             locret_12F65E
12F61A:  MOVS            R1, #0
12F61C:  POP.W           {R4,R5,R7,LR}
12F620:  B.W             sub_17C118
12F624:  LDR             R0, =(off_234A58 - 0x12F62A)
12F626:  ADD             R0, PC; off_234A58
12F628:  LDR             R5, [R0]; dword_2631B0
12F62A:  LDR             R0, [R5]
12F62C:  BL              sub_10BDC0
12F630:  CBZ             R0, loc_12F63A
12F632:  LDR             R0, [R5]
12F634:  MOVS            R1, #0
12F636:  BL              sub_10BDA0
12F63A:  LDRB.W          R0, [R4,#0x50]
12F63E:  CBZ             R0, loc_12F64A
12F640:  LDR             R0, [R4]
12F642:  MOVS            R1, #0
12F644:  LDR             R2, [R0,#0x24]
12F646:  MOV             R0, R4
12F648:  BLX             R2
12F64A:  LDR             R0, =(off_234970 - 0x12F658)
12F64C:  MOVS            R1, #0
12F64E:  STRB.W          R1, [R4,#0x50]
12F652:  MOVS            R1, #1
12F654:  ADD             R0, PC; off_234970
12F656:  LDR             R0, [R0]; dword_23DEF0
12F658:  LDR             R0, [R0]
12F65A:  STRB.W          R1, [R0,#0x54]
12F65E:  POP             {R4,R5,R7,PC}
