; =========================================================
; Game Engine Function: sub_1308D0
; Address            : 0x1308D0 - 0x13090C
; =========================================================

1308D0:  PUSH            {R4,R6,R7,LR}
1308D2:  ADD             R7, SP, #8
1308D4:  MOV             R4, R0
1308D6:  LDR             R0, =(off_2349A8 - 0x1308DC)
1308D8:  ADD             R0, PC; off_2349A8
1308DA:  LDR             R0, [R0]; dword_381BF4
1308DC:  LDR             R0, [R0]
1308DE:  LDRB.W          R1, [R0,#0x85]
1308E2:  CBNZ            R1, loc_1308EA
1308E4:  LDRB.W          R0, [R0,#0x84]
1308E8:  CBZ             R0, loc_130908
1308EA:  LDRB.W          R0, [R4,#0x90]
1308EE:  CMP             R0, #1
1308F0:  BNE             loc_130908
1308F2:  BL              sub_F0B30
1308F6:  LDR             R1, [R4,#0x58]
1308F8:  CMP             R1, R0
1308FA:  BHI             loc_130908
1308FC:  ADD.W           R0, R0, #0x1F4
130900:  STR             R0, [R4,#0x58]
130902:  MOV             R0, R4
130904:  BL              sub_12F5E0
130908:  MOVS            R0, #1
13090A:  POP             {R4,R6,R7,PC}
