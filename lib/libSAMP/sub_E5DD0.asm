; =========================================================
; Game Engine Function: sub_E5DD0
; Address            : 0xE5DD0 - 0xE5E26
; =========================================================

E5DD0:  PUSH            {R4,R5,R7,LR}
E5DD2:  ADD             R7, SP, #8
E5DD4:  LDRD.W          R12, R2, [R0]
E5DD8:  LDR             R3, [R1,#4]
E5DDA:  CMP             R2, R12
E5DDC:  BEQ             loc_E5E0A
E5DDE:  MOV.W           LR, #0
E5DE2:  LDRB.W          R4, [R2,#-0x10]!
E5DE6:  STRB.W          R4, [R3,#-0x10]
E5DEA:  CMP             R2, R12
E5DEC:  LDRD.W          R4, R5, [R2,#8]
E5DF0:  STRD.W          R4, R5, [R3,#-8]
E5DF4:  STRD.W          LR, LR, [R2,#8]
E5DF8:  LDR             R3, [R1,#4]
E5DFA:  STRB.W          LR, [R2]
E5DFE:  SUB.W           R3, R3, #0x10
E5E02:  STR             R3, [R1,#4]
E5E04:  BNE             loc_E5DE2
E5E06:  LDR.W           R12, [R0]
E5E0A:  STR             R3, [R0]
E5E0C:  STR.W           R12, [R1,#4]
E5E10:  LDR             R2, [R1,#8]
E5E12:  LDR             R3, [R0,#4]
E5E14:  STR             R2, [R0,#4]
E5E16:  STR             R3, [R1,#8]
E5E18:  LDR             R2, [R1,#0xC]
E5E1A:  LDR             R3, [R0,#8]
E5E1C:  STR             R2, [R0,#8]
E5E1E:  LDR             R0, [R1,#4]
E5E20:  STR             R3, [R1,#0xC]
E5E22:  STR             R0, [R1]
E5E24:  POP             {R4,R5,R7,PC}
