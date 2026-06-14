; =========================================================
; Game Engine Function: ReleaseALAuxiliaryEffectSlots
; Address            : 0x23EDB4 - 0x23EF76
; =========================================================

23EDB4:  PUSH            {R4-R7,LR}
23EDB6:  ADD             R7, SP, #0xC
23EDB8:  PUSH.W          {R8-R11}
23EDBC:  SUB             SP, SP, #0xC
23EDBE:  LDR             R1, [R0,#0x30]
23EDC0:  CMP             R1, #1
23EDC2:  BLT.W           loc_23EF6E
23EDC6:  LDR             R6, =(dword_6D681C - 0x23EDDA)
23EDC8:  MOV.W           R11, #0
23EDCC:  LDR.W           R9, =(dword_6D681C - 0x23EDE0)
23EDD0:  MOVS            R4, #1
23EDD2:  LDR.W           R8, =(dword_6D681C - 0x23EDE2)
23EDD6:  ADD             R6, PC; dword_6D681C
23EDD8:  LDR.W           R10, =(dword_6D681C - 0x23EDE6)
23EDDC:  ADD             R9, PC; dword_6D681C
23EDDE:  ADD             R8, PC; dword_6D681C
23EDE0:  MOVS            R2, #0
23EDE2:  ADD             R10, PC; dword_6D681C
23EDE4:  STR             R0, [SP,#0x28+var_28]
23EDE6:  LDR             R0, [R0,#0x2C]
23EDE8:  STR             R2, [SP,#0x28+var_20]
23EDEA:  ADD.W           R0, R0, R2,LSL#3
23EDEE:  LDR             R5, [R0,#4]
23EDF0:  STR.W           R11, [R0,#4]
23EDF4:  LDR.W           R0, [R5,#0xC4]
23EDF8:  LDR             R1, [R0]
23EDFA:  BLX             R1
23EDFC:  LDR             R2, =(dword_6D681C - 0x23EE08)
23EDFE:  MOVW            R0, #0x20DC
23EE02:  LDR             R0, [R5,R0]
23EE04:  ADD             R2, PC; dword_6D681C
23EE06:  STR             R0, [SP,#0x28+var_24]
23EE08:  DMB.W           ISH
23EE0C:  LDREX.W         R0, [R2,#0xC]
23EE10:  STREX.W         R1, R4, [R2,#0xC]
23EE14:  CMP             R1, #0
23EE16:  BNE             loc_23EE0C
23EE18:  B               loc_23EE2E
23EE1A:  BLX             sched_yield
23EE1E:  DMB.W           ISH
23EE22:  LDREX.W         R0, [R6,#0xC]
23EE26:  STREX.W         R1, R4, [R6,#0xC]
23EE2A:  CMP             R1, #0
23EE2C:  BNE             loc_23EE22
23EE2E:  CMP             R0, #1
23EE30:  DMB.W           ISH
23EE34:  BEQ             loc_23EE1A
23EE36:  LDR             R2, =(dword_6D681C - 0x23EE40)
23EE38:  DMB.W           ISH
23EE3C:  ADD             R2, PC; dword_6D681C
23EE3E:  LDREX.W         R0, [R2,#8]
23EE42:  STREX.W         R1, R4, [R2,#8]
23EE46:  CMP             R1, #0
23EE48:  BNE             loc_23EE3E
23EE4A:  B               loc_23EE60
23EE4C:  BLX             sched_yield
23EE50:  DMB.W           ISH
23EE54:  LDREX.W         R0, [R9,#8]
23EE58:  STREX.W         R1, R4, [R9,#8]
23EE5C:  CMP             R1, #0
23EE5E:  BNE             loc_23EE54
23EE60:  CMP             R0, #1
23EE62:  DMB.W           ISH
23EE66:  BEQ             loc_23EE4C
23EE68:  LDR             R3, =(dword_6D681C - 0x23EE72)
23EE6A:  DMB.W           ISH
23EE6E:  ADD             R3, PC; dword_6D681C
23EE70:  LDREX.W         R0, [R3]
23EE74:  ADDS            R1, R0, #1
23EE76:  STREX.W         R2, R1, [R3]
23EE7A:  CMP             R2, #0
23EE7C:  BNE             loc_23EE70
23EE7E:  CMP             R0, #0
23EE80:  DMB.W           ISH
23EE84:  BNE             loc_23EEB8
23EE86:  LDR             R2, =(dword_6D681C - 0x23EE90)
23EE88:  DMB.W           ISH
23EE8C:  ADD             R2, PC; dword_6D681C
23EE8E:  LDREX.W         R0, [R2,#0x10]
23EE92:  STREX.W         R1, R4, [R2,#0x10]
23EE96:  CMP             R1, #0
23EE98:  BNE             loc_23EE8E
23EE9A:  B               loc_23EEB0
23EE9C:  BLX             sched_yield
23EEA0:  DMB.W           ISH
23EEA4:  LDREX.W         R0, [R8,#0x10]
23EEA8:  STREX.W         R1, R4, [R8,#0x10]
23EEAC:  CMP             R1, #0
23EEAE:  BNE             loc_23EEA4
23EEB0:  CMP             R0, #1
23EEB2:  DMB.W           ISH
23EEB6:  BEQ             loc_23EE9C
23EEB8:  LDR             R1, =(dword_6D681C - 0x23EEC2)
23EEBA:  DMB.W           ISH
23EEBE:  ADD             R1, PC; dword_6D681C
23EEC0:  LDREX.W         R0, [R1,#8]
23EEC4:  STREX.W         R0, R11, [R1,#8]
23EEC8:  CMP             R0, #0
23EECA:  BNE             loc_23EEC0
23EECC:  LDR             R1, =(dword_6D681C - 0x23EEDA)
23EECE:  DMB.W           ISH
23EED2:  DMB.W           ISH
23EED6:  ADD             R1, PC; dword_6D681C
23EED8:  LDREX.W         R0, [R1,#0xC]
23EEDC:  STREX.W         R0, R11, [R1,#0xC]
23EEE0:  CMP             R0, #0
23EEE2:  BNE             loc_23EED8
23EEE4:  LDR             R0, =(dword_6D6830 - 0x23EEEE)
23EEE6:  DMB.W           ISH
23EEEA:  ADD             R0, PC; dword_6D6830
23EEEC:  LDR             R1, [R0]
23EEEE:  LDR             R0, [SP,#0x28+var_24]
23EEF0:  SUBS            R0, #1
23EEF2:  CMP             R0, R1
23EEF4:  BCS             loc_23EF14
23EEF6:  LDR             R1, =(dword_6D6834 - 0x23EEFC)
23EEF8:  ADD             R1, PC; dword_6D6834
23EEFA:  LDR             R1, [R1]
23EEFC:  DMB.W           ISH
23EF00:  ADD.W           R0, R1, R0,LSL#2
23EF04:  LDREX.W         R1, [R0]
23EF08:  STREX.W         R1, R11, [R0]
23EF0C:  CMP             R1, #0
23EF0E:  BNE             loc_23EF04
23EF10:  DMB.W           ISH
23EF14:  DMB.W           ISH
23EF18:  LDREX.W         R0, [R10]
23EF1C:  SUBS            R1, R0, #1
23EF1E:  STREX.W         R2, R1, [R10]
23EF22:  CMP             R2, #0
23EF24:  BNE             loc_23EF18
23EF26:  CMP             R0, #1
23EF28:  DMB.W           ISH
23EF2C:  BNE             loc_23EF46
23EF2E:  LDR             R1, =(dword_6D681C - 0x23EF38)
23EF30:  DMB.W           ISH
23EF34:  ADD             R1, PC; dword_6D681C
23EF36:  LDREX.W         R0, [R1,#0x10]
23EF3A:  STREX.W         R0, R11, [R1,#0x10]
23EF3E:  CMP             R0, #0
23EF40:  BNE             loc_23EF36
23EF42:  DMB.W           ISH
23EF46:  MOV             R0, R5
23EF48:  MOVW            R1, #0x20E0
23EF4C:  BLX             j___aeabi_memclr8
23EF50:  CBZ             R5, loc_23EF60
23EF52:  LDRB.W          R0, [R5,#-1]!
23EF56:  CMP             R0, #0x55 ; 'U'
23EF58:  BEQ             loc_23EF52
23EF5A:  MOV             R0, R5; p
23EF5C:  BLX             free
23EF60:  LDR             R0, [SP,#0x28+var_28]
23EF62:  LDR             R2, [SP,#0x28+var_20]
23EF64:  LDR             R1, [R0,#0x30]
23EF66:  ADDS            R2, #1
23EF68:  CMP             R2, R1
23EF6A:  BLT.W           loc_23EDE6
23EF6E:  ADD             SP, SP, #0xC
23EF70:  POP.W           {R8-R11}
23EF74:  POP             {R4-R7,PC}
