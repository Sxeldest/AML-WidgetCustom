; =========================================================
; Game Engine Function: sub_21FA3C
; Address            : 0x21FA3C - 0x21FA88
; =========================================================

21FA3C:  PUSH            {R4-R7,LR}
21FA3E:  ADD             R7, SP, #0xC
21FA40:  PUSH.W          {R6-R9,R11}
21FA44:  LDR             R4, [R7,#arg_4]
21FA46:  MOV             R6, R1
21FA48:  LDR             R1, [R1,#8]
21FA4A:  MOV             R9, R2
21FA4C:  MOV             R8, R3
21FA4E:  MOV             R5, R0
21FA50:  MOV             R2, R4
21FA52:  BL              sub_21EEBC
21FA56:  LDR             R1, [R7,#arg_0]
21FA58:  CBZ             R0, loc_21FA70
21FA5A:  STR             R1, [R7,#arg_0]
21FA5C:  MOV             R1, R6
21FA5E:  MOV             R2, R9
21FA60:  MOV             R3, R8
21FA62:  ADD             SP, SP, #8
21FA64:  POP.W           {R8,R9,R11}
21FA68:  POP.W           {R4-R7,LR}
21FA6C:  B.W             sub_21F590
21FA70:  LDR             R0, [R5,#8]
21FA72:  MOV             R3, R8
21FA74:  LDR             R2, [R0]
21FA76:  LDR             R5, [R2,#0x14]
21FA78:  MOV             R2, R9
21FA7A:  STRD.W          R1, R4, [SP,#0x20+var_20]
21FA7E:  MOV             R1, R6
21FA80:  BLX             R5
21FA82:  POP.W           {R2,R3,R8,R9,R11}
21FA86:  POP             {R4-R7,PC}
