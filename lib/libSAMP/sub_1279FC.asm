; =========================================================
; Game Engine Function: sub_1279FC
; Address            : 0x1279FC - 0x127A78
; =========================================================

1279FC:  PUSH            {R4-R7,LR}
1279FE:  ADD             R7, SP, #0xC
127A00:  PUSH.W          {R11}
127A04:  LDR             R5, [R0,#8]
127A06:  MOV             R6, R2
127A08:  MOV             R4, R1
127A0A:  MOV             R0, R1
127A0C:  MOV             R1, R2
127A0E:  MOV             R2, R3
127A10:  BLX             R5
127A12:  LDR             R1, =(unk_B7540 - 0x127A1C)
127A14:  MOV             R5, R0
127A16:  MOVS            R0, #0
127A18:  ADD             R1, PC; unk_B7540
127A1A:  LDR             R2, [R1,R0]
127A1C:  CMP             R2, R6
127A1E:  BEQ             loc_127A28
127A20:  ADDS            R0, #4
127A22:  CMP             R0, #8
127A24:  BNE             loc_127A1A
127A26:  B               loc_127A70
127A28:  CMP             R0, #8
127A2A:  BEQ             loc_127A70
127A2C:  LDR             R0, =(off_23494C - 0x127A3C)
127A2E:  MOV             R1, #0x56E735
127A36:  MOVS            R2, #0
127A38:  ADD             R0, PC; off_23494C
127A3A:  MOVS            R6, #0
127A3C:  LDR             R0, [R0]; dword_23DF24
127A3E:  LDR             R0, [R0]
127A40:  ADDS            R3, R0, R1
127A42:  ADDW            R0, R4, #0x5B4
127A46:  MOVS            R1, #2
127A48:  BLX             R3
127A4A:  MOVS            R0, #1
127A4C:  MOVS            R1, #0x12
127A4E:  STRB.W          R0, [R4,#0x606]
127A52:  MOV             R0, #0xC016CBE4
127A5A:  STRH.W          R1, [R4,#0x604]
127A5E:  STR.W           R0, [R4,#0x5FC]
127A62:  LDR.W           R0, [R4,#0x670]
127A66:  STR.W           R6, [R4,#0x600]
127A6A:  BL              sub_127ABC
127A6E:  STRB            R6, [R0,#2]
127A70:  MOV             R0, R5
127A72:  POP.W           {R11}
127A76:  POP             {R4-R7,PC}
