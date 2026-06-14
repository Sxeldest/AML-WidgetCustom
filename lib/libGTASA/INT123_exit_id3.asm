; =========================================================
; Game Engine Function: INT123_exit_id3
; Address            : 0x225E10 - 0x225F50
; =========================================================

225E10:  PUSH            {R4-R7,LR}
225E12:  ADD             R7, SP, #0xC
225E14:  PUSH.W          {R8-R11}
225E18:  SUB             SP, SP, #4
225E1A:  MOV             R8, R0
225E1C:  MOVW            R1, #0xB518
225E20:  MOVW            R2, #0xB51C
225E24:  LDR.W           R0, [R8,R1]
225E28:  LDR.W           R3, [R8,R2]
225E2C:  ADD.W           R9, R8, R2
225E30:  ADD.W           R10, R8, R1
225E34:  CBZ             R3, loc_225E74
225E36:  MOV.W           R11, #0
225E3A:  MOVS            R6, #0
225E3C:  MOVS            R4, #0
225E3E:  ADDS            R5, R0, R6
225E40:  LDR             R0, [R5,#0x14]; p
225E42:  CMP             R0, #0
225E44:  IT NE
225E46:  BLXNE           free
225E4A:  STR.W           R11, [R5,#0x14]
225E4E:  LDR             R0, [R5,#8]; p
225E50:  STRD.W          R11, R11, [R5,#0x18]
225E54:  CMP             R0, #0
225E56:  IT NE
225E58:  BLXNE           free
225E5C:  STRD.W          R11, R11, [R5,#8]
225E60:  ADDS            R6, #0x20 ; ' '
225E62:  STR.W           R11, [R5,#0x10]
225E66:  ADDS            R4, #1
225E68:  LDR.W           R1, [R9]
225E6C:  LDR.W           R0, [R10]; p
225E70:  CMP             R4, R1
225E72:  BCC             loc_225E3E
225E74:  BLX             free
225E78:  MOV.W           R11, #0
225E7C:  MOVW            R1, #0xB528
225E80:  STR.W           R11, [R10]
225E84:  MOVW            R2, #0xB52C
225E88:  STR.W           R11, [R9]
225E8C:  ADD.W           R9, R8, R2
225E90:  LDR.W           R0, [R8,R1]
225E94:  ADD.W           R10, R8, R1
225E98:  LDR.W           R2, [R8,R2]
225E9C:  CBZ             R2, loc_225ED8
225E9E:  MOVS            R6, #0
225EA0:  MOVS            R4, #0
225EA2:  ADDS            R5, R0, R6
225EA4:  LDR             R0, [R5,#0x14]; p
225EA6:  CMP             R0, #0
225EA8:  IT NE
225EAA:  BLXNE           free
225EAE:  STR.W           R11, [R5,#0x14]
225EB2:  LDR             R0, [R5,#8]; p
225EB4:  STRD.W          R11, R11, [R5,#0x18]
225EB8:  CMP             R0, #0
225EBA:  IT NE
225EBC:  BLXNE           free
225EC0:  STRD.W          R11, R11, [R5,#8]
225EC4:  ADDS            R6, #0x20 ; ' '
225EC6:  STR.W           R11, [R5,#0x10]
225ECA:  ADDS            R4, #1
225ECC:  LDR.W           R1, [R9]
225ED0:  LDR.W           R0, [R10]; p
225ED4:  CMP             R4, R1
225ED6:  BCC             loc_225EA2
225ED8:  BLX             free
225EDC:  STR.W           R11, [R10]
225EE0:  MOVW            R1, #0xB520
225EE4:  STR.W           R11, [R9]
225EE8:  MOVW            R2, #0xB524
225EEC:  LDR.W           R0, [R8,R1]
225EF0:  ADD.W           R9, R8, R2
225EF4:  LDR.W           R2, [R8,R2]
225EF8:  ADD             R8, R1
225EFA:  CBZ             R2, loc_225F3A
225EFC:  MOV.W           R10, #0
225F00:  MOVS            R5, #0
225F02:  MOVS            R4, #0
225F04:  ADDS            R6, R0, R5
225F06:  LDR             R0, [R6,#0x14]; p
225F08:  CMP             R0, #0
225F0A:  IT NE
225F0C:  BLXNE           free
225F10:  STR.W           R10, [R6,#0x14]
225F14:  LDR             R0, [R6,#8]; p
225F16:  STRD.W          R10, R10, [R6,#0x18]
225F1A:  CMP             R0, #0
225F1C:  IT NE
225F1E:  BLXNE           free
225F22:  STRD.W          R10, R10, [R6,#8]
225F26:  ADDS            R5, #0x20 ; ' '
225F28:  STR.W           R10, [R6,#0x10]
225F2C:  ADDS            R4, #1
225F2E:  LDR.W           R1, [R9]
225F32:  LDR.W           R0, [R8]; p
225F36:  CMP             R4, R1
225F38:  BCC             loc_225F04
225F3A:  BLX             free
225F3E:  MOVS            R0, #0
225F40:  STR.W           R0, [R8]
225F44:  STR.W           R0, [R9]
225F48:  ADD             SP, SP, #4
225F4A:  POP.W           {R8-R11}
225F4E:  POP             {R4-R7,PC}
