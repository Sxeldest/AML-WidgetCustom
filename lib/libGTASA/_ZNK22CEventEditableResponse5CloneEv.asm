; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse5CloneEv
; Address            : 0x2FCDF4 - 0x2FCE10
; =========================================================

2FCDF4:  PUSH            {R4,R6,R7,LR}
2FCDF6:  ADD             R7, SP, #8
2FCDF8:  MOV             R4, R0
2FCDFA:  LDR             R0, [R4]
2FCDFC:  LDR             R1, [R0,#0x44]
2FCDFE:  MOV             R0, R4
2FCE00:  BLX             R1
2FCE02:  LDRH            R1, [R4,#0xA]
2FCE04:  STRH            R1, [R0,#0xA]
2FCE06:  LDRH            R1, [R4,#0xC]
2FCE08:  STRH            R1, [R0,#0xC]
2FCE0A:  LDRB            R1, [R4,#9]
2FCE0C:  STRB            R1, [R0,#9]
2FCE0E:  POP             {R4,R6,R7,PC}
