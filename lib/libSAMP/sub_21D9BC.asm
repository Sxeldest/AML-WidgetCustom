; =========================================================
; Game Engine Function: sub_21D9BC
; Address            : 0x21D9BC - 0x21D9F2
; =========================================================

21D9BC:  PUSH            {R4-R7,LR}
21D9BE:  ADD             R7, SP, #0xC
21D9C0:  PUSH.W          {R11}
21D9C4:  MOV             R5, R0
21D9C6:  LDRD.W          R0, R6, [R1,#8]
21D9CA:  MOV             R4, R2
21D9CC:  LDR             R1, [R0]
21D9CE:  STR             R6, [R5]
21D9D0:  STR             R0, [R5,#4]
21D9D2:  LDR             R2, [R1,#0xC]
21D9D4:  MOV             R1, R4
21D9D6:  BLX             R2
21D9D8:  MOV             R1, R0
21D9DA:  LDRB            R0, [R0,#4]
21D9DC:  CMP             R0, #0xC
21D9DE:  BNE             loc_21D9EC
21D9E0:  LDRD.W          R0, R1, [R1,#8]
21D9E4:  CMP             R1, R6
21D9E6:  IT LT
21D9E8:  MOVLT           R6, R1
21D9EA:  B               loc_21D9CC
21D9EC:  POP.W           {R11}
21D9F0:  POP             {R4-R7,PC}
