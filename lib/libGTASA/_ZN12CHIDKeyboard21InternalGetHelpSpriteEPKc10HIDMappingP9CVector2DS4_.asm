; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard21InternalGetHelpSpriteEPKc10HIDMappingP9CVector2DS4_
; Address            : 0x2950FE - 0x29513E
; =========================================================

2950FE:  PUSH            {R4,R5,R7,LR}
295100:  ADD             R7, SP, #8
295102:  SUB             SP, SP, #0x18
295104:  MOV             R4, R0
295106:  MOV             R5, R3
295108:  LDR             R0, [R4]
29510A:  MOV             R3, R2
29510C:  MOV             R2, R1
29510E:  MOV             R1, R4
295110:  LDR.W           R12, [R0,#0x54]
295114:  MOVS            R0, #0
295116:  STR             R0, [SP,#0x20+var_20]
295118:  ADD             R0, SP, #0x20+var_18
29511A:  BLX             R12
29511C:  LDR             R0, [R7,#arg_0]
29511E:  CMP             R5, #0
295120:  ITTT NE
295122:  LDRNE           R1, [SP,#0x20+var_18]
295124:  LDRNE           R2, [SP,#0x20+var_C]
295126:  STRDNE.W        R1, R2, [R5]
29512A:  CMP             R0, #0
29512C:  ITT NE
29512E:  LDRDNE.W        R1, R2, [SP,#0x20+var_14]
295132:  STRDNE.W        R2, R1, [R0]
295136:  ADD.W           R0, R4, #0x10
29513A:  ADD             SP, SP, #0x18
29513C:  POP             {R4,R5,R7,PC}
