; =========================================================
; Game Engine Function: _ZN11CSaveGarage25CopyGarageOutOfSaveGarageEP7CGarage
; Address            : 0x48AF34 - 0x48AFA8
; =========================================================

48AF34:  PUSH            {R4,R5,R7,LR}
48AF36:  ADD             R7, SP, #8
48AF38:  MOV             R5, R0
48AF3A:  MOV             R4, R1
48AF3C:  LDRB            R0, [R5]
48AF3E:  MOVS            R1, #0
48AF40:  STRB.W          R0, [R4,#0x4C]
48AF44:  LDRB            R0, [R5,#1]
48AF46:  STRB.W          R0, [R4,#0x4D]
48AF4A:  LDRB            R0, [R5,#2]
48AF4C:  STRB.W          R0, [R4,#0x4E]
48AF50:  LDR             R0, [R5,#4]
48AF52:  STR             R0, [R4]
48AF54:  LDR             R0, [R5,#8]
48AF56:  STR             R0, [R4,#4]
48AF58:  LDR             R0, [R5,#0xC]
48AF5A:  STR             R0, [R4,#8]
48AF5C:  LDR             R0, [R5,#0x10]
48AF5E:  STR             R0, [R4,#0xC]
48AF60:  LDR             R0, [R5,#0x14]
48AF62:  STR             R0, [R4,#0x10]
48AF64:  LDR             R0, [R5,#0x18]
48AF66:  STR             R0, [R4,#0x14]
48AF68:  LDR             R0, [R5,#0x1C]
48AF6A:  STR             R0, [R4,#0x18]
48AF6C:  LDR             R0, [R5,#0x20]
48AF6E:  STR             R0, [R4,#0x1C]
48AF70:  LDR             R0, [R5,#0x24]
48AF72:  STR             R0, [R4,#0x20]
48AF74:  LDR             R0, [R5,#0x28]
48AF76:  STR             R0, [R4,#0x24]
48AF78:  LDR             R0, [R5,#0x2C]
48AF7A:  STR             R0, [R4,#0x28]
48AF7C:  LDR             R0, [R5,#0x30]
48AF7E:  STR             R0, [R4,#0x2C]
48AF80:  LDR             R0, [R5,#0x34]
48AF82:  STR             R0, [R4,#0x30]
48AF84:  LDR             R0, [R5,#0x38]
48AF86:  STR             R0, [R4,#0x34]
48AF88:  LDR             R0, [R5,#0x3C]
48AF8A:  STR             R0, [R4,#0x38]
48AF8C:  LDR             R0, [R5,#0x40]
48AF8E:  STRD.W          R0, R1, [R4,#0x3C]
48AF92:  ADD.W           R0, R4, #0x44 ; 'D'; char *
48AF96:  ADD.W           R1, R5, #0x44 ; 'D'; char *
48AF9A:  BLX             strcpy
48AF9E:  LDRB.W          R0, [R5,#0x4C]
48AFA2:  STRB.W          R0, [R4,#0x4F]
48AFA6:  POP             {R4,R5,R7,PC}
