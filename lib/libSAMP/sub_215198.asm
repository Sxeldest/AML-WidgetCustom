; =========================================================
; Game Engine Function: sub_215198
; Address            : 0x215198 - 0x2151C8
; =========================================================

215198:  PUSH            {R4,R5,R7,LR}
21519A:  ADD             R7, SP, #8
21519C:  MOV             R4, R1
21519E:  MOV             R5, R0
2151A0:  LDRD.W          R1, R2, [R0],#8
2151A4:  ADDS            R3, R4, #4
2151A6:  BL              sub_2151DE
2151AA:  LDR             R1, [R4,#4]
2151AC:  LDR             R0, [R5]
2151AE:  STR             R1, [R5]
2151B0:  STR             R0, [R4,#4]
2151B2:  LDR             R1, [R4,#8]
2151B4:  LDR             R0, [R5,#4]
2151B6:  STR             R1, [R5,#4]
2151B8:  STR             R0, [R4,#8]
2151BA:  LDR             R1, [R4,#0xC]
2151BC:  LDR             R0, [R5,#8]
2151BE:  STR             R1, [R5,#8]
2151C0:  STR             R0, [R4,#0xC]
2151C2:  LDR             R0, [R4,#4]
2151C4:  STR             R0, [R4]
2151C6:  POP             {R4,R5,R7,PC}
