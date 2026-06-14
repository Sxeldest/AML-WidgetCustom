; =========================================================
; Game Engine Function: sub_F6BA4
; Address            : 0xF6BA4 - 0xF6C00
; =========================================================

F6BA4:  PUSH            {R4-R7,LR}
F6BA6:  ADD             R7, SP, #0xC
F6BA8:  PUSH.W          {R8}
F6BAC:  SUB             SP, SP, #0x20
F6BAE:  MOV             R4, R0
F6BB0:  STR             R0, [SP,#0x30+var_24]
F6BB2:  BL              sub_F61A4
F6BB6:  MOV             R1, R4
F6BB8:  BL              sub_15E858
F6BBC:  LDR             R1, =(dword_2402C0 - 0xF6BCE)
F6BBE:  ADD             R0, SP, #0x30+var_20
F6BC0:  LDR             R3, =(unk_92D14 - 0xF6BD0)
F6BC2:  ADD             R2, SP, #0x30+var_24
F6BC4:  ADD             R6, SP, #0x30+var_1C
F6BC6:  STRD.W          R6, R0, [SP,#0x30+var_30]
F6BCA:  ADD             R1, PC; dword_2402C0
F6BCC:  ADD             R3, PC; unk_92D14
F6BCE:  ADD             R0, SP, #0x30+var_18
F6BD0:  STR             R2, [SP,#0x30+var_1C]
F6BD2:  BL              sub_F7976
F6BD6:  LDR.W           R8, [SP,#0x30+var_18]
F6BDA:  LDRD.W          R6, R4, [R8,#0x14]
F6BDE:  CMP             R4, R6
F6BE0:  BEQ             loc_F6BF4
F6BE2:  ADD.W           R5, R8, #0x1C
F6BE6:  SUBS            R4, #0x1C
F6BE8:  MOV             R0, R5
F6BEA:  MOV             R1, R4
F6BEC:  BL              sub_F7A9E
F6BF0:  CMP             R4, R6
F6BF2:  BNE             loc_F6BE6
F6BF4:  STR.W           R6, [R8,#0x18]
F6BF8:  ADD             SP, SP, #0x20 ; ' '
F6BFA:  POP.W           {R8}
F6BFE:  POP             {R4-R7,PC}
