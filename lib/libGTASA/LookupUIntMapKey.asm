; =========================================================
; Game Engine Function: LookupUIntMapKey
; Address            : 0x23DE34 - 0x23DFC6
; =========================================================

23DE34:  PUSH            {R4-R7,LR}
23DE36:  ADD             R7, SP, #0xC
23DE38:  PUSH.W          {R8-R11}
23DE3C:  SUB             SP, SP, #4
23DE3E:  MOV             R8, R0
23DE40:  ADD.W           R4, R8, #0x1C
23DE44:  MOV             R9, R1
23DE46:  MOVS            R1, #1
23DE48:  DMB.W           ISH
23DE4C:  LDREX.W         R0, [R4]
23DE50:  STREX.W         R2, R1, [R4]
23DE54:  CMP             R2, #0
23DE56:  BNE             loc_23DE4C
23DE58:  CMP             R0, #1
23DE5A:  DMB.W           ISH
23DE5E:  BNE             loc_23DE7E
23DE60:  MOVS            R5, #1
23DE62:  BLX             sched_yield
23DE66:  DMB.W           ISH
23DE6A:  LDREX.W         R0, [R4]
23DE6E:  STREX.W         R1, R5, [R4]
23DE72:  CMP             R1, #0
23DE74:  BNE             loc_23DE6A
23DE76:  CMP             R0, #1
23DE78:  DMB.W           ISH
23DE7C:  BEQ             loc_23DE62
23DE7E:  ADD.W           R5, R8, #0x18
23DE82:  MOVS            R1, #1
23DE84:  DMB.W           ISH
23DE88:  LDREX.W         R0, [R5]
23DE8C:  STREX.W         R2, R1, [R5]
23DE90:  CMP             R2, #0
23DE92:  BNE             loc_23DE88
23DE94:  CMP             R0, #1
23DE96:  DMB.W           ISH
23DE9A:  BNE             loc_23DEBA
23DE9C:  MOVS            R6, #1
23DE9E:  BLX             sched_yield
23DEA2:  DMB.W           ISH
23DEA6:  LDREX.W         R0, [R5]
23DEAA:  STREX.W         R1, R6, [R5]
23DEAE:  CMP             R1, #0
23DEB0:  BNE             loc_23DEA6
23DEB2:  CMP             R0, #1
23DEB4:  DMB.W           ISH
23DEB8:  BEQ             loc_23DE9E
23DEBA:  ADD.W           R10, R8, #0x10
23DEBE:  DMB.W           ISH
23DEC2:  LDREX.W         R0, [R10]
23DEC6:  ADDS            R1, R0, #1
23DEC8:  STREX.W         R2, R1, [R10]
23DECC:  CMP             R2, #0
23DECE:  BNE             loc_23DEC2
23DED0:  CMP             R0, #0
23DED2:  DMB.W           ISH
23DED6:  BNE             loc_23DF16
23DED8:  ADD.W           R6, R8, #0x20 ; ' '
23DEDC:  MOVS            R1, #1
23DEDE:  DMB.W           ISH
23DEE2:  LDREX.W         R0, [R6]
23DEE6:  STREX.W         R2, R1, [R6]
23DEEA:  CMP             R2, #0
23DEEC:  BNE             loc_23DEE2
23DEEE:  CMP             R0, #1
23DEF0:  DMB.W           ISH
23DEF4:  BNE             loc_23DF16
23DEF6:  MOV.W           R11, #1
23DEFA:  BLX             sched_yield
23DEFE:  DMB.W           ISH
23DF02:  LDREX.W         R0, [R6]
23DF06:  STREX.W         R1, R11, [R6]
23DF0A:  CMP             R1, #0
23DF0C:  BNE             loc_23DF02
23DF0E:  CMP             R0, #1
23DF10:  DMB.W           ISH
23DF14:  BEQ             loc_23DEFA
23DF16:  MOVS            R0, #0
23DF18:  DMB.W           ISH
23DF1C:  LDREX.W         R1, [R5]
23DF20:  STREX.W         R1, R0, [R5]
23DF24:  CMP             R1, #0
23DF26:  BNE             loc_23DF1C
23DF28:  DMB.W           ISH
23DF2C:  MOVS            R0, #0
23DF2E:  DMB.W           ISH
23DF32:  LDREX.W         R1, [R4]
23DF36:  STREX.W         R1, R0, [R4]
23DF3A:  CMP             R1, #0
23DF3C:  BNE             loc_23DF32
23DF3E:  DMB.W           ISH
23DF42:  LDR.W           R1, [R8,#4]
23DF46:  CMP             R1, #1
23DF48:  BLT             loc_23DF54
23DF4A:  BNE             loc_23DF58
23DF4C:  LDR.W           R0, [R8]
23DF50:  MOVS            R1, #0
23DF52:  B               loc_23DF7A
23DF54:  MOVS            R0, #0
23DF56:  B               loc_23DF8A
23DF58:  LDR.W           R0, [R8]
23DF5C:  SUBS            R2, R1, #1
23DF5E:  MOVS            R1, #0
23DF60:  SUBS            R3, R2, R1
23DF62:  ADD.W           R3, R3, R3,LSR#31
23DF66:  ADD.W           R3, R1, R3,ASR#1
23DF6A:  LDR.W           R6, [R0,R3,LSL#3]
23DF6E:  CMP             R6, R9
23DF70:  ITE CS
23DF72:  MOVCS           R2, R3
23DF74:  ADDCC           R1, R3, #1
23DF76:  CMP             R2, R1
23DF78:  BGT             loc_23DF60
23DF7A:  LDR.W           R2, [R0,R1,LSL#3]
23DF7E:  CMP             R2, R9
23DF80:  ITTE EQ
23DF82:  ADDEQ.W         R0, R0, R1,LSL#3
23DF86:  LDREQ           R0, [R0,#4]
23DF88:  MOVNE           R0, #0
23DF8A:  DMB.W           ISH
23DF8E:  LDREX.W         R1, [R10]
23DF92:  SUBS            R2, R1, #1
23DF94:  STREX.W         R3, R2, [R10]
23DF98:  CMP             R3, #0
23DF9A:  BNE             loc_23DF8E
23DF9C:  CMP             R1, #1
23DF9E:  DMB.W           ISH
23DFA2:  BNE             loc_23DFBE
23DFA4:  ADD.W           R1, R8, #0x20 ; ' '
23DFA8:  MOVS            R2, #0
23DFAA:  DMB.W           ISH
23DFAE:  LDREX.W         R3, [R1]
23DFB2:  STREX.W         R3, R2, [R1]
23DFB6:  CMP             R3, #0
23DFB8:  BNE             loc_23DFAE
23DFBA:  DMB.W           ISH
23DFBE:  ADD             SP, SP, #4
23DFC0:  POP.W           {R8-R11}
23DFC4:  POP             {R4-R7,PC}
