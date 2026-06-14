; =========================================================
; Game Engine Function: sub_105E84
; Address            : 0x105E84 - 0x105F2A
; =========================================================

105E84:  PUSH            {R4,R5,R7,LR}
105E86:  ADD             R7, SP, #8
105E88:  MOV             R4, R1
105E8A:  LDR             R1, =(asc_4F675 - 0x105E94); "(" ...
105E8C:  MOV             R5, R0
105E8E:  MOV             R0, R4
105E90:  ADD             R1, PC; "("
105E92:  ADDS            R2, R1, #1
105E94:  BL              sub_FFB40
105E98:  ADD.W           R0, R5, #0xC
105E9C:  MOV             R1, R4
105E9E:  BL              sub_1037E0
105EA2:  LDR             R1, =(asc_50037 - 0x105EAA); ")" ...
105EA4:  MOV             R0, R4
105EA6:  ADD             R1, PC; ")"
105EA8:  ADDS            R2, R1, #1
105EAA:  BL              sub_FFB40
105EAE:  LDR             R0, [R5,#8]
105EB0:  LDR             R1, [R0]
105EB2:  LDR             R2, [R1,#0x14]
105EB4:  MOV             R1, R4
105EB6:  BLX             R2
105EB8:  LDR             R0, [R5,#0x14]
105EBA:  LSLS            R1, R0, #0x1F
105EBC:  BEQ             loc_105ECC
105EBE:  LDR             R1, =(aConst - 0x105EC6); " const" ...
105EC0:  MOV             R0, R4
105EC2:  ADD             R1, PC; " const"
105EC4:  ADDS            R2, R1, #6
105EC6:  BL              sub_FFB40
105ECA:  LDR             R0, [R5,#0x14]
105ECC:  LSLS            R1, R0, #0x1E
105ECE:  BPL             loc_105EE0
105ED0:  LDR             R1, =(aVolatile - 0x105ED8); " volatile" ...
105ED2:  MOV             R0, R4
105ED4:  ADD             R1, PC; " volatile"
105ED6:  ADD.W           R2, R1, #9
105EDA:  BL              sub_FFB40
105EDE:  LDR             R0, [R5,#0x14]
105EE0:  LSLS            R0, R0, #0x1D
105EE2:  BPL             loc_105EF2
105EE4:  LDR             R1, =(aRestrict - 0x105EEC); " restrict" ...
105EE6:  MOV             R0, R4
105EE8:  ADD             R1, PC; " restrict"
105EEA:  ADD.W           R2, R1, #9
105EEE:  BL              sub_FFB40
105EF2:  LDRB            R0, [R5,#0x18]
105EF4:  CMP             R0, #1
105EF6:  BEQ             loc_105F04
105EF8:  CMP             R0, #2
105EFA:  BNE             loc_105F10
105EFC:  LDR             R1, =(asc_4E22B - 0x105F02); " &&" ...
105EFE:  ADD             R1, PC; " &&"
105F00:  ADDS            R2, R1, #3
105F02:  B               loc_105F0A
105F04:  LDR             R1, =(asc_4EBB0 - 0x105F0A); " &" ...
105F06:  ADD             R1, PC; " &"
105F08:  ADDS            R2, R1, #2
105F0A:  MOV             R0, R4
105F0C:  BL              sub_FFB40
105F10:  LDR             R0, [R5,#0x1C]
105F12:  CBZ             R0, locret_105F28
105F14:  MOV             R0, R4
105F16:  MOVS            R1, #0x20 ; ' '
105F18:  BL              sub_FE09A
105F1C:  LDR             R0, [R5,#0x1C]
105F1E:  MOV             R1, R4
105F20:  POP.W           {R4,R5,R7,LR}
105F24:  B.W             sub_FE074
105F28:  POP             {R4,R5,R7,PC}
