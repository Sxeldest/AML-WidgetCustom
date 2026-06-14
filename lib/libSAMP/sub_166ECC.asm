; =========================================================
; Game Engine Function: sub_166ECC
; Address            : 0x166ECC - 0x166F38
; =========================================================

166ECC:  PUSH            {R7,LR}
166ECE:  MOV             R7, SP
166ED0:  LDR             R2, =(dword_381B58 - 0x166EDA)
166ED2:  MOVW            R12, #0x19D0
166ED6:  ADD             R2, PC; dword_381B58
166ED8:  LDR             R2, [R2]
166EDA:  LDR.W           LR, [R2,R12]
166EDE:  ADD             R2, R12
166EE0:  SUBS.W          R3, LR, R0
166EE4:  IT NE
166EE6:  MOVNE           R3, #1
166EE8:  CMP             LR, R0
166EEA:  STRB            R3, [R2,#0xC]
166EEC:  BEQ             loc_166EFA
166EEE:  MOVS            R3, #0
166EF0:  STRH            R3, [R2,#0xE]
166EF2:  STR             R3, [R2,#8]
166EF4:  CBZ             R0, loc_166EFA
166EF6:  STRD.W          R0, R3, [R2,#0x38]
166EFA:  MOVS            R3, #0
166EFC:  STRD.W          R3, R3, [R2,#0x14]
166F00:  STR             R0, [R2]
166F02:  STR             R1, [R2,#0x24]
166F04:  STRB            R3, [R2,#0xD]
166F06:  STRB            R3, [R2,#0x10]
166F08:  CBZ             R0, locret_166F20
166F0A:  LDR.W           R1, [R2,#0xEC]
166F0E:  STR             R0, [R2,#4]
166F10:  CMP             R1, R0
166F12:  ITT NE
166F14:  LDRNE.W         R1, [R2,#0xF8]
166F18:  CMPNE           R1, R0
166F1A:  BNE             loc_166F22
166F1C:  MOVS            R1, #2
166F1E:  STR             R1, [R2,#0x28]
166F20:  POP             {R7,PC}
166F22:  LDR.W           R1, [R2,#0xFC]
166F26:  CMP             R1, R0
166F28:  BEQ             loc_166F1C
166F2A:  LDR.W           R3, [R2,#0x100]
166F2E:  MOVS            R1, #1
166F30:  CMP             R3, R0
166F32:  IT EQ
166F34:  MOVEQ           R1, #2
166F36:  B               loc_166F1E
