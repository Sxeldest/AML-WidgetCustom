; =========================================================
; Game Engine Function: sub_181DE8
; Address            : 0x181DE8 - 0x181EC6
; =========================================================

181DE8:  PUSH            {R4-R7,LR}
181DEA:  ADD             R7, SP, #0xC
181DEC:  PUSH.W          {R8-R11}
181DF0:  SUB             SP, SP, #0x12C
181DF2:  MOV             R11, R0
181DF4:  LDR             R0, [R0]
181DF6:  MOV             R10, R1
181DF8:  MOV             R9, R3
181DFA:  MOV             R8, R2
181DFC:  LDR             R1, [R0,#0x2C]
181DFE:  MOV             R0, R11
181E00:  BLX             R1
181E02:  CMP.W           R10, #0
181E06:  IT NE
181E08:  CMPNE           R0, #0
181E0A:  BEQ             loc_181EBE
181E0C:  LDRB.W          R0, [R10]
181E10:  SUBS            R0, #0x33 ; '3'
181E12:  CMN.W           R0, #4
181E16:  LDR             R0, =(off_234E88 - 0x181E1C)
181E18:  ADD             R0, PC; off_234E88
181E1A:  STR             R0, [SP,#0x148+var_140]
181E1C:  BHI             loc_181E28
181E1E:  LDR             R0, [R0]; unk_382751 ; int
181E20:  MOV             R1, R10; name
181E22:  BL              sub_18CC56
181E26:  MOV             R10, R0
181E28:  LDR.W           R0, [R11]
181E2C:  ADD             R3, SP, #0x148+var_28
181E2E:  MOV             R1, R10
181E30:  MOV             R2, R8
181E32:  LDR.W           R4, [R0,#0xC0]
181E36:  MOV             R0, R11
181E38:  BLX             R4
181E3A:  ADD             R0, SP, #0x148+var_13C
181E3C:  BL              sub_17D4A8
181E40:  MOVS            R1, #0x37 ; '7'
181E42:  STRB.W          R1, [R7,#var_1D]
181E46:  SUB.W           R1, R7, #-var_1D
181E4A:  MOVS            R2, #8
181E4C:  MOVS            R3, #1
181E4E:  BL              sub_17D628
181E52:  LDR             R2, [R7,#arg_0]
181E54:  CMP             R2, #1
181E56:  BLT             loc_181E62
181E58:  ADD             R0, SP, #0x148+var_13C
181E5A:  MOV             R1, R9
181E5C:  BL              sub_17D566
181E60:  B               loc_181E76
181E62:  MOVS            R0, #0
181E64:  STRB.W          R0, [R7,#var_1D]
181E68:  ADD             R0, SP, #0x148+var_13C
181E6A:  SUB.W           R1, R7, #-var_1D
181E6E:  MOVS            R2, #8
181E70:  MOVS            R3, #1
181E72:  BL              sub_17D628
181E76:  LDR.W           R0, [R11,#0x384]
181E7A:  CBZ             R0, loc_181EA0
181E7C:  MOVS            R4, #0
181E7E:  LDR.W           R0, [R11,#0x380]
181E82:  LDR             R1, [SP,#0x148+var_130]
181E84:  LDR             R2, [SP,#0x148+var_13C]
181E86:  LDR.W           R0, [R0,R4,LSL#2]
181E8A:  LDRD.W          R3, R6, [SP,#0x148+var_28]
181E8E:  LDR             R5, [R0]
181E90:  LDR             R5, [R5,#0x1C]
181E92:  STR             R6, [SP,#0x148+cp]
181E94:  BLX             R5
181E96:  LDR.W           R0, [R11,#0x384]
181E9A:  ADDS            R4, #1
181E9C:  CMP             R4, R0
181E9E:  BCC             loc_181E7E
181EA0:  LDR.W           R1, [R11,#0x7EC]; int
181EA4:  LDR             R3, [SP,#0x148+var_13C]
181EA6:  LDR             R2, [SP,#0x148+var_130]; int
181EA8:  LDR             R0, [SP,#0x148+var_140]
181EAA:  ADDS            R3, #7
181EAC:  STRD.W          R10, R8, [SP,#0x148+cp]; cp
181EB0:  ASRS            R3, R3, #3; int
181EB2:  LDR             R0, [R0]; int
181EB4:  BL              sub_18CD80
181EB8:  ADD             R0, SP, #0x148+var_13C
181EBA:  BL              sub_17D542
181EBE:  ADD             SP, SP, #0x12C
181EC0:  POP.W           {R8-R11}
181EC4:  POP             {R4-R7,PC}
