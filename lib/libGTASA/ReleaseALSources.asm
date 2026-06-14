; =========================================================
; Game Engine Function: ReleaseALSources
; Address            : 0x25CBCC - 0x25CE44
; =========================================================

25CBCC:  PUSH            {R4-R7,LR}
25CBCE:  ADD             R7, SP, #0xC
25CBD0:  PUSH.W          {R8-R11}
25CBD4:  SUB             SP, SP, #0xC
25CBD6:  LDR             R1, [R0,#0xC]
25CBD8:  CMP             R1, #1
25CBDA:  BLT.W           loc_25CE3C
25CBDE:  LDR             R6, =(dword_6D681C - 0x25CBF2)
25CBE0:  MOV.W           R11, #0
25CBE4:  LDR.W           R9, =(dword_6D681C - 0x25CBF8)
25CBE8:  MOVS            R4, #1
25CBEA:  LDR.W           R8, =(dword_6D681C - 0x25CBFA)
25CBEE:  ADD             R6, PC; dword_6D681C
25CBF0:  LDR.W           R10, =(dword_6D681C - 0x25CBFE)
25CBF4:  ADD             R9, PC; dword_6D681C
25CBF6:  ADD             R8, PC; dword_6D681C
25CBF8:  MOVS            R2, #0
25CBFA:  ADD             R10, PC; dword_6D681C
25CBFC:  STR             R0, [SP,#0x28+var_28]
25CBFE:  LDR             R0, [R0,#8]
25CC00:  STR             R2, [SP,#0x28+var_20]
25CC02:  ADD.W           R0, R0, R2,LSL#3
25CC06:  LDR             R5, [R0,#4]
25CC08:  STR.W           R11, [R0,#4]
25CC0C:  B               loc_25CC12
25CC0E:  BLX             free
25CC12:  LDR.W           R0, [R5,#0x90]; p
25CC16:  CBZ             R0, loc_25CC3E
25CC18:  LDR             R1, [R0,#4]
25CC1A:  STR.W           R1, [R5,#0x90]
25CC1E:  LDR             R1, [R0]
25CC20:  CMP             R1, #0
25CC22:  BEQ             loc_25CC0E
25CC24:  ADDS            R1, #0x2C ; ','
25CC26:  DMB.W           ISH
25CC2A:  LDREX.W         R2, [R1]
25CC2E:  SUBS            R2, #1
25CC30:  STREX.W         R3, R2, [R1]
25CC34:  CMP             R3, #0
25CC36:  BNE             loc_25CC2A
25CC38:  DMB.W           ISH
25CC3C:  B               loc_25CC0E
25CC3E:  LDR.W           R0, [R5,#0xAC]
25CC42:  MOVW            R3, #0x20D8
25CC46:  CBZ             R0, loc_25CC60
25CC48:  ADD             R0, R3
25CC4A:  DMB.W           ISH
25CC4E:  LDREX.W         R1, [R0]
25CC52:  SUBS            R1, #1
25CC54:  STREX.W         R2, R1, [R0]
25CC58:  CMP             R2, #0
25CC5A:  BNE             loc_25CC4E
25CC5C:  DMB.W           ISH
25CC60:  LDR.W           R0, [R5,#0xB8]
25CC64:  STR.W           R11, [R5,#0xAC]
25CC68:  CBZ             R0, loc_25CC82
25CC6A:  ADD             R0, R3
25CC6C:  DMB.W           ISH
25CC70:  LDREX.W         R1, [R0]
25CC74:  SUBS            R1, #1
25CC76:  STREX.W         R2, R1, [R0]
25CC7A:  CMP             R2, #0
25CC7C:  BNE             loc_25CC70
25CC7E:  DMB.W           ISH
25CC82:  LDR.W           R0, [R5,#0xC4]
25CC86:  STR.W           R11, [R5,#0xB8]
25CC8A:  CBZ             R0, loc_25CCA4
25CC8C:  ADD             R0, R3
25CC8E:  DMB.W           ISH
25CC92:  LDREX.W         R1, [R0]
25CC96:  SUBS            R1, #1
25CC98:  STREX.W         R2, R1, [R0]
25CC9C:  CMP             R2, #0
25CC9E:  BNE             loc_25CC92
25CCA0:  DMB.W           ISH
25CCA4:  LDR.W           R0, [R5,#0xD0]
25CCA8:  STR.W           R11, [R5,#0xC4]
25CCAC:  CBZ             R0, loc_25CCC6
25CCAE:  ADD             R0, R3
25CCB0:  DMB.W           ISH
25CCB4:  LDREX.W         R1, [R0]
25CCB8:  SUBS            R1, #1
25CCBA:  STREX.W         R2, R1, [R0]
25CCBE:  CMP             R2, #0
25CCC0:  BNE             loc_25CCB4
25CCC2:  DMB.W           ISH
25CCC6:  LDR             R2, =(dword_6D681C - 0x25CCD2)
25CCC8:  MOVW            R0, #0x5988
25CCCC:  LDR             R0, [R5,R0]
25CCCE:  ADD             R2, PC; dword_6D681C
25CCD0:  STR             R0, [SP,#0x28+var_24]
25CCD2:  STR.W           R11, [R5,#0xD0]
25CCD6:  DMB.W           ISH
25CCDA:  LDREX.W         R0, [R2,#0xC]
25CCDE:  STREX.W         R1, R4, [R2,#0xC]
25CCE2:  CMP             R1, #0
25CCE4:  BNE             loc_25CCDA
25CCE6:  B               loc_25CCFC
25CCE8:  BLX             sched_yield
25CCEC:  DMB.W           ISH
25CCF0:  LDREX.W         R0, [R6,#0xC]
25CCF4:  STREX.W         R1, R4, [R6,#0xC]
25CCF8:  CMP             R1, #0
25CCFA:  BNE             loc_25CCF0
25CCFC:  CMP             R0, #1
25CCFE:  DMB.W           ISH
25CD02:  BEQ             loc_25CCE8
25CD04:  LDR             R2, =(dword_6D681C - 0x25CD0E)
25CD06:  DMB.W           ISH
25CD0A:  ADD             R2, PC; dword_6D681C
25CD0C:  LDREX.W         R0, [R2,#8]
25CD10:  STREX.W         R1, R4, [R2,#8]
25CD14:  CMP             R1, #0
25CD16:  BNE             loc_25CD0C
25CD18:  B               loc_25CD2E
25CD1A:  BLX             sched_yield
25CD1E:  DMB.W           ISH
25CD22:  LDREX.W         R0, [R9,#8]
25CD26:  STREX.W         R1, R4, [R9,#8]
25CD2A:  CMP             R1, #0
25CD2C:  BNE             loc_25CD22
25CD2E:  CMP             R0, #1
25CD30:  DMB.W           ISH
25CD34:  BEQ             loc_25CD1A
25CD36:  LDR             R3, =(dword_6D681C - 0x25CD40)
25CD38:  DMB.W           ISH
25CD3C:  ADD             R3, PC; dword_6D681C
25CD3E:  LDREX.W         R0, [R3]
25CD42:  ADDS            R1, R0, #1
25CD44:  STREX.W         R2, R1, [R3]
25CD48:  CMP             R2, #0
25CD4A:  BNE             loc_25CD3E
25CD4C:  CMP             R0, #0
25CD4E:  DMB.W           ISH
25CD52:  BNE             loc_25CD86
25CD54:  LDR             R2, =(dword_6D681C - 0x25CD5E)
25CD56:  DMB.W           ISH
25CD5A:  ADD             R2, PC; dword_6D681C
25CD5C:  LDREX.W         R0, [R2,#0x10]
25CD60:  STREX.W         R1, R4, [R2,#0x10]
25CD64:  CMP             R1, #0
25CD66:  BNE             loc_25CD5C
25CD68:  B               loc_25CD7E
25CD6A:  BLX             sched_yield
25CD6E:  DMB.W           ISH
25CD72:  LDREX.W         R0, [R8,#0x10]
25CD76:  STREX.W         R1, R4, [R8,#0x10]
25CD7A:  CMP             R1, #0
25CD7C:  BNE             loc_25CD72
25CD7E:  CMP             R0, #1
25CD80:  DMB.W           ISH
25CD84:  BEQ             loc_25CD6A
25CD86:  LDR             R1, =(dword_6D681C - 0x25CD90)
25CD88:  DMB.W           ISH
25CD8C:  ADD             R1, PC; dword_6D681C
25CD8E:  LDREX.W         R0, [R1,#8]
25CD92:  STREX.W         R0, R11, [R1,#8]
25CD96:  CMP             R0, #0
25CD98:  BNE             loc_25CD8E
25CD9A:  LDR             R1, =(dword_6D681C - 0x25CDA8)
25CD9C:  DMB.W           ISH
25CDA0:  DMB.W           ISH
25CDA4:  ADD             R1, PC; dword_6D681C
25CDA6:  LDREX.W         R0, [R1,#0xC]
25CDAA:  STREX.W         R0, R11, [R1,#0xC]
25CDAE:  CMP             R0, #0
25CDB0:  BNE             loc_25CDA6
25CDB2:  LDR             R0, =(dword_6D6830 - 0x25CDBC)
25CDB4:  DMB.W           ISH
25CDB8:  ADD             R0, PC; dword_6D6830
25CDBA:  LDR             R1, [R0]
25CDBC:  LDR             R0, [SP,#0x28+var_24]
25CDBE:  SUBS            R0, #1
25CDC0:  CMP             R0, R1
25CDC2:  BCS             loc_25CDE2
25CDC4:  LDR             R1, =(dword_6D6834 - 0x25CDCA)
25CDC6:  ADD             R1, PC; dword_6D6834
25CDC8:  LDR             R1, [R1]
25CDCA:  DMB.W           ISH
25CDCE:  ADD.W           R0, R1, R0,LSL#2
25CDD2:  LDREX.W         R1, [R0]
25CDD6:  STREX.W         R1, R11, [R0]
25CDDA:  CMP             R1, #0
25CDDC:  BNE             loc_25CDD2
25CDDE:  DMB.W           ISH
25CDE2:  DMB.W           ISH
25CDE6:  LDREX.W         R0, [R10]
25CDEA:  SUBS            R1, R0, #1
25CDEC:  STREX.W         R2, R1, [R10]
25CDF0:  CMP             R2, #0
25CDF2:  BNE             loc_25CDE6
25CDF4:  CMP             R0, #1
25CDF6:  DMB.W           ISH
25CDFA:  BNE             loc_25CE14
25CDFC:  LDR             R1, =(dword_6D681C - 0x25CE06)
25CDFE:  DMB.W           ISH
25CE02:  ADD             R1, PC; dword_6D681C
25CE04:  LDREX.W         R0, [R1,#0x10]
25CE08:  STREX.W         R0, R11, [R1,#0x10]
25CE0C:  CMP             R0, #0
25CE0E:  BNE             loc_25CE04
25CE10:  DMB.W           ISH
25CE14:  MOV             R0, R5
25CE16:  MOVW            R1, #0x5990
25CE1A:  BLX             j___aeabi_memclr8
25CE1E:  CBZ             R5, loc_25CE2E
25CE20:  LDRB.W          R0, [R5,#-1]!
25CE24:  CMP             R0, #0x55 ; 'U'
25CE26:  BEQ             loc_25CE20
25CE28:  MOV             R0, R5; p
25CE2A:  BLX             free
25CE2E:  LDR             R0, [SP,#0x28+var_28]
25CE30:  LDR             R2, [SP,#0x28+var_20]
25CE32:  LDR             R1, [R0,#0xC]
25CE34:  ADDS            R2, #1
25CE36:  CMP             R2, R1
25CE38:  BLT.W           loc_25CBFE
25CE3C:  ADD             SP, SP, #0xC
25CE3E:  POP.W           {R8-R11}
25CE42:  POP             {R4-R7,PC}
