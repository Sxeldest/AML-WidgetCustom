; =========================================================
; Game Engine Function: _ZN12CHIDJoystick21InternalGetHelpSpriteEPKc10HIDMappingP9CVector2DS4_
; Address            : 0x28CD8A - 0x28CDCA
; =========================================================

28CD8A:  PUSH            {R4,R5,R7,LR}
28CD8C:  ADD             R7, SP, #8
28CD8E:  SUB             SP, SP, #0x18
28CD90:  MOV             R4, R0
28CD92:  MOV             R5, R3
28CD94:  LDR             R0, [R4]
28CD96:  MOV             R3, R2
28CD98:  MOV             R2, R1
28CD9A:  MOV             R1, R4
28CD9C:  LDR.W           R12, [R0,#0x54]
28CDA0:  MOVS            R0, #0
28CDA2:  STR             R0, [SP,#0x20+var_20]
28CDA4:  ADD             R0, SP, #0x20+var_18
28CDA6:  BLX             R12
28CDA8:  LDR             R0, [R7,#arg_0]
28CDAA:  CMP             R5, #0
28CDAC:  ITTT NE
28CDAE:  LDRNE           R1, [SP,#0x20+var_18]
28CDB0:  LDRNE           R2, [SP,#0x20+var_C]
28CDB2:  STRDNE.W        R1, R2, [R5]
28CDB6:  CMP             R0, #0
28CDB8:  ITT NE
28CDBA:  LDRDNE.W        R1, R2, [SP,#0x20+var_14]
28CDBE:  STRDNE.W        R2, R1, [R0]
28CDC2:  ADD.W           R0, R4, #0x10
28CDC6:  ADD             SP, SP, #0x18
28CDC8:  POP             {R4,R5,R7,PC}
