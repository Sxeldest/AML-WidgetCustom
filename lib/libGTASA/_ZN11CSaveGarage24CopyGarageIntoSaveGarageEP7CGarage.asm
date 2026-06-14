; =========================================================
; Game Engine Function: _ZN11CSaveGarage24CopyGarageIntoSaveGarageEP7CGarage
; Address            : 0x48AEC4 - 0x48AF34
; =========================================================

48AEC4:  PUSH            {R4,R5,R7,LR}
48AEC6:  ADD             R7, SP, #8
48AEC8:  MOV             R5, R1
48AECA:  MOV             R4, R0
48AECC:  LDRB.W          R0, [R5,#0x4C]
48AED0:  ADD.W           R1, R5, #0x44 ; 'D'; char *
48AED4:  STRB            R0, [R4]
48AED6:  LDRB.W          R0, [R5,#0x4D]
48AEDA:  STRB            R0, [R4,#1]
48AEDC:  LDRB.W          R0, [R5,#0x4E]
48AEE0:  STRB            R0, [R4,#2]
48AEE2:  LDR             R0, [R5]
48AEE4:  STR             R0, [R4,#4]
48AEE6:  LDR             R0, [R5,#4]
48AEE8:  STR             R0, [R4,#8]
48AEEA:  LDR             R0, [R5,#8]
48AEEC:  STR             R0, [R4,#0xC]
48AEEE:  LDR             R0, [R5,#0xC]
48AEF0:  STR             R0, [R4,#0x10]
48AEF2:  LDR             R0, [R5,#0x10]
48AEF4:  STR             R0, [R4,#0x14]
48AEF6:  LDR             R0, [R5,#0x14]
48AEF8:  STR             R0, [R4,#0x18]
48AEFA:  LDR             R0, [R5,#0x18]
48AEFC:  STR             R0, [R4,#0x1C]
48AEFE:  LDR             R0, [R5,#0x1C]
48AF00:  STR             R0, [R4,#0x20]
48AF02:  LDR             R0, [R5,#0x20]
48AF04:  STR             R0, [R4,#0x24]
48AF06:  LDR             R0, [R5,#0x24]
48AF08:  STR             R0, [R4,#0x28]
48AF0A:  LDR             R0, [R5,#0x28]
48AF0C:  STR             R0, [R4,#0x2C]
48AF0E:  LDR             R0, [R5,#0x2C]
48AF10:  STR             R0, [R4,#0x30]
48AF12:  LDR             R0, [R5,#0x30]
48AF14:  STR             R0, [R4,#0x34]
48AF16:  LDR             R0, [R5,#0x34]
48AF18:  STR             R0, [R4,#0x38]
48AF1A:  LDR             R0, [R5,#0x38]
48AF1C:  STR             R0, [R4,#0x3C]
48AF1E:  LDR             R0, [R5,#0x3C]
48AF20:  STR             R0, [R4,#0x40]
48AF22:  ADD.W           R0, R4, #0x44 ; 'D'; char *
48AF26:  BLX             strcpy
48AF2A:  LDRB.W          R0, [R5,#0x4F]
48AF2E:  STRB.W          R0, [R4,#0x4C]
48AF32:  POP             {R4,R5,R7,PC}
