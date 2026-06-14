; =========================================================
; Game Engine Function: sub_138EA8
; Address            : 0x138EA8 - 0x138F32
; =========================================================

138EA8:  PUSH            {R4,R6,R7,LR}
138EAA:  ADD             R7, SP, #8
138EAC:  LDRD.W          R12, R2, [R0]
138EB0:  LDR             R3, [R1,#4]
138EB2:  CMP             R2, R12
138EB4:  BEQ             loc_138F16
138EB6:  MOV.W           LR, #0
138EBA:  LDR.W           R4, [R2,#-0x3C]!
138EBE:  STR.W           R4, [R3,#-0x3C]
138EC2:  CMP             R2, R12
138EC4:  VLDR            D16, [R2,#4]
138EC8:  LDR             R4, [R2,#0xC]
138ECA:  STR.W           R4, [R3,#-0x30]
138ECE:  VSTR            D16, [R3,#-0x38]
138ED2:  VLDR            D16, [R2,#0x10]
138ED6:  LDR             R4, [R2,#0x18]
138ED8:  STRD.W          LR, LR, [R2,#4]
138EDC:  STR.W           LR, [R2,#0xC]
138EE0:  STR.W           R4, [R3,#-0x24]
138EE4:  ADD.W           R4, R2, #0x1C
138EE8:  VSTR            D16, [R3,#-0x2C]
138EEC:  SUB.W           R3, R3, #0x20 ; ' '
138EF0:  VLD1.32         {D16-D17}, [R4]!
138EF4:  VLD1.32         {D18-D19}, [R4]
138EF8:  STR.W           LR, [R2,#0x18]
138EFC:  STRD.W          LR, LR, [R2,#0x10]
138F00:  VST1.32         {D16-D17}, [R3]!
138F04:  VST1.32         {D18-D19}, [R3]
138F08:  LDR             R3, [R1,#4]
138F0A:  SUB.W           R3, R3, #0x3C ; '<'
138F0E:  STR             R3, [R1,#4]
138F10:  BNE             loc_138EBA
138F12:  LDR.W           R12, [R0]
138F16:  STR             R3, [R0]
138F18:  STR.W           R12, [R1,#4]
138F1C:  LDR             R2, [R1,#8]
138F1E:  LDR             R3, [R0,#4]
138F20:  STR             R2, [R0,#4]
138F22:  STR             R3, [R1,#8]
138F24:  LDR             R2, [R1,#0xC]
138F26:  LDR             R3, [R0,#8]
138F28:  STR             R2, [R0,#8]
138F2A:  LDR             R0, [R1,#4]
138F2C:  STR             R3, [R1,#0xC]
138F2E:  STR             R0, [R1]
138F30:  POP             {R4,R6,R7,PC}
