; =========================================================
; Game Engine Function: sub_47DD34
; Address            : 0x47DD34 - 0x47DF9E
; =========================================================

47DD34:  PUSH            {R4-R7,LR}
47DD36:  ADD             R7, SP, #0xC
47DD38:  PUSH.W          {R8-R11}
47DD3C:  SUB             SP, SP, #0x2C
47DD3E:  MOV             R9, R1
47DD40:  MOV             R1, R0
47DD42:  STR             R1, [SP,#0x48+var_20]
47DD44:  MOV             R8, R3
47DD46:  LDR.W           R4, [R0,#0x184]
47DD4A:  MOV             R10, R2
47DD4C:  LDRB            R0, [R4,#0x18]
47DD4E:  CBNZ            R0, loc_47DD72
47DD50:  LDR             R0, [SP,#0x48+var_20]
47DD52:  LDR             R1, [R4,#0x28]
47DD54:  LDR.W           R2, [R0,#0x188]
47DD58:  ADD.W           R1, R4, R1,LSL#2
47DD5C:  LDR             R2, [R2,#0xC]
47DD5E:  LDR             R1, [R1,#0x20]
47DD60:  BLX             R2
47DD62:  CMP             R0, #0
47DD64:  BEQ.W           loc_47DF96
47DD68:  LDR             R0, [R4,#0x34]
47DD6A:  MOVS            R1, #1
47DD6C:  STRB            R1, [R4,#0x18]
47DD6E:  ADDS            R0, #1
47DD70:  STR             R0, [R4,#0x34]
47DD72:  LDR             R0, [R4,#0x2C]
47DD74:  CMP             R0, #2
47DD76:  BEQ             loc_47DE54
47DD78:  CMP             R0, #1
47DD7A:  BEQ.W           loc_47DE92
47DD7E:  CMP             R0, #0
47DD80:  BNE.W           loc_47DF96
47DD84:  ADD.W           R6, R4, #0x1C
47DD88:  ADD             R0, SP, #0x48+var_30
47DD8A:  STM.W           R0, {R6,R9,R10}
47DD8E:  MOVS            R0, #0
47DD90:  STR.W           R8, [SP,#0x48+var_24]
47DD94:  STR             R0, [R4,#0x1C]
47DD96:  LDR             R0, [SP,#0x48+var_20]
47DD98:  LDR             R1, [R4,#0x34]
47DD9A:  MOV             R2, R0
47DD9C:  LDR.W           R0, [R2,#0x118]
47DDA0:  STR             R4, [SP,#0x48+var_38]
47DDA2:  SUBS            R0, #1
47DDA4:  STR             R0, [R4,#0x30]
47DDA6:  MOV             R4, R2
47DDA8:  LDR.W           R0, [R4,#0x11C]
47DDAC:  CMP             R1, R0
47DDAE:  BNE             loc_47DE40
47DDB0:  LDR             R0, [R4,#0x24]
47DDB2:  CMP             R0, #1
47DDB4:  BLT             loc_47DE40
47DDB6:  LDR.W           R10, [R4,#0x184]
47DDBA:  MOV.W           R9, #0
47DDBE:  LDR.W           R11, [R4,#0xC4]
47DDC2:  LDR.W           R0, [R11,#0xC]
47DDC6:  LDR.W           R1, [R11,#0x24]
47DDCA:  LDR.W           R6, [R11,#0x2C]
47DDCE:  MUL.W           R8, R1, R0
47DDD2:  LDR.W           R1, [R4,#0x118]
47DDD6:  MOV             R0, R8
47DDD8:  BLX             __aeabi_idiv
47DDDC:  MOV             R5, R0
47DDDE:  MOV             R0, R6
47DDE0:  MOV             R1, R8
47DDE2:  BLX             __aeabi_uidivmod
47DDE6:  MOV             R6, R1
47DDE8:  CMP             R6, #0
47DDEA:  IT EQ
47DDEC:  MOVEQ           R6, R8
47DDEE:  CMP.W           R9, #0
47DDF2:  BEQ             loc_47DDFA
47DDF4:  CMP             R5, #1
47DDF6:  BGE             loc_47DE0C
47DDF8:  B               loc_47DE32
47DDFA:  SUBS            R0, R6, #1
47DDFC:  MOV             R1, R5
47DDFE:  BLX             __aeabi_idiv
47DE02:  ADDS            R0, #1
47DE04:  STR.W           R0, [R10,#0x30]
47DE08:  CMP             R5, #1
47DE0A:  BLT             loc_47DE32
47DE0C:  LDR.W           R0, [R10,#0x28]
47DE10:  SUBS            R3, R6, #1
47DE12:  LSLS            R1, R5, #1
47DE14:  ADD.W           R0, R10, R0,LSL#2
47DE18:  LDR             R0, [R0,#0x20]
47DE1A:  LDR.W           R0, [R0,R9,LSL#2]
47DE1E:  ADD.W           R2, R0, R6,LSL#2
47DE22:  MOVS            R6, #0
47DE24:  LDR.W           R5, [R0,R3,LSL#2]
47DE28:  STR.W           R5, [R2,R6,LSL#2]
47DE2C:  ADDS            R6, #1
47DE2E:  CMP             R6, R1
47DE30:  BLT             loc_47DE24
47DE32:  LDR             R0, [R4,#0x24]
47DE34:  ADD.W           R9, R9, #1
47DE38:  ADD.W           R11, R11, #0x54 ; 'T'
47DE3C:  CMP             R9, R0
47DE3E:  BLT             loc_47DDC2
47DE40:  LDR             R4, [SP,#0x48+var_38]
47DE42:  MOVS            R0, #1
47DE44:  ADD.W           R10, SP, #0x48+var_30
47DE48:  STR             R0, [R4,#0x2C]
47DE4A:  LDR.W           R8, [SP,#0x48+var_24]
47DE4E:  LDM.W           R10, {R2,R9,R10}
47DE52:  B               loc_47DE96
47DE54:  LDR             R0, [SP,#0x48+var_20]
47DE56:  ADD.W           R6, R4, #0x1C
47DE5A:  LDR             R2, [R4,#0x28]
47DE5C:  LDR             R3, [R4,#0x30]
47DE5E:  LDR.W           R1, [R0,#0x18C]
47DE62:  LDR.W           R12, [R1,#4]
47DE66:  ADD.W           R1, R4, R2,LSL#2
47DE6A:  MOV             R2, R6
47DE6C:  LDR             R1, [R1,#0x20]
47DE6E:  STRD.W          R9, R10, [SP,#0x48+var_48]
47DE72:  STR.W           R8, [SP,#0x48+var_40]
47DE76:  BLX             R12
47DE78:  LDR             R0, [R4,#0x1C]
47DE7A:  LDR             R1, [R4,#0x30]
47DE7C:  CMP             R0, R1
47DE7E:  BCC.W           loc_47DF96
47DE82:  MOVS            R0, #0
47DE84:  STR             R0, [R4,#0x2C]
47DE86:  LDR.W           R0, [R10]
47DE8A:  CMP             R0, R8
47DE8C:  BCC.W           loc_47DD88
47DE90:  B               loc_47DF96
47DE92:  ADD.W           R2, R4, #0x1C
47DE96:  LDR             R0, [SP,#0x48+var_20]
47DE98:  LDR             R5, [R4,#0x28]
47DE9A:  LDR             R3, [R4,#0x30]
47DE9C:  LDR.W           R1, [R0,#0x18C]
47DEA0:  LDR             R6, [R1,#4]
47DEA2:  ADD.W           R1, R4, R5,LSL#2
47DEA6:  LDR             R1, [R1,#0x20]
47DEA8:  STRD.W          R9, R10, [SP,#0x48+var_48]
47DEAC:  STR.W           R8, [SP,#0x48+var_40]
47DEB0:  BLX             R6
47DEB2:  LDR             R0, [R4,#0x1C]
47DEB4:  LDR             R1, [R4,#0x30]
47DEB6:  CMP             R0, R1
47DEB8:  BCC             loc_47DF96
47DEBA:  LDR             R0, [R4,#0x34]
47DEBC:  CMP             R0, #1
47DEBE:  BNE             loc_47DF74
47DEC0:  LDR             R2, [SP,#0x48+var_20]
47DEC2:  ADD.W           R5, R2, #0x118
47DEC6:  LDR.W           R8, [R2,#0x24]
47DECA:  CMP.W           R8, #1
47DECE:  BLT             loc_47DF7A
47DED0:  STR             R4, [SP,#0x48+var_38]
47DED2:  MOV.W           R9, #0
47DED6:  LDR.W           R1, [R2,#0x118]
47DEDA:  LDR.W           R0, [R2,#0x184]
47DEDE:  STR             R0, [SP,#0x48+var_2C]
47DEE0:  MOVS            R0, #4
47DEE2:  ADD.W           R0, R0, R1,LSL#2
47DEE6:  STR             R0, [SP,#0x48+var_30]
47DEE8:  MOVS            R0, #8
47DEEA:  ADD.W           R0, R0, R1,LSL#2
47DEEE:  STR             R0, [SP,#0x48+var_34]
47DEF0:  LDR.W           R4, [R2,#0xC4]
47DEF4:  STR             R5, [SP,#0x48+var_28]
47DEF6:  B               loc_47DEFC
47DEF8:  LDR             R1, [R5]
47DEFA:  ADDS            R4, #0x54 ; 'T'
47DEFC:  LDR             R0, [R4,#0xC]
47DEFE:  LDR             R2, [R4,#0x24]
47DF00:  MULS            R0, R2
47DF02:  BLX             __aeabi_idiv
47DF06:  CMP             R0, #1
47DF08:  BLT             loc_47DF68
47DF0A:  LDR             R1, [SP,#0x48+var_2C]
47DF0C:  MOVS            R5, #0
47DF0E:  STR             R4, [SP,#0x48+var_24]
47DF10:  LDRD.W          R2, R1, [R1,#0x20]
47DF14:  LDR.W           R10, [R1,R9,LSL#2]
47DF18:  LDR             R1, [SP,#0x48+var_30]
47DF1A:  LDR.W           R2, [R2,R9,LSL#2]
47DF1E:  SUB.W           R4, R10, R0,LSL#2
47DF22:  MLA.W           R12, R1, R0, R2
47DF26:  SUB.W           R3, R2, R0,LSL#2
47DF2A:  MLA.W           LR, R1, R0, R10
47DF2E:  LDR             R1, [SP,#0x48+var_34]
47DF30:  MLA.W           R8, R1, R0, R2
47DF34:  MLA.W           R6, R1, R0, R10
47DF38:  LDR.W           R11, [R12,R5,LSL#2]
47DF3C:  STR.W           R11, [R3,R5,LSL#2]
47DF40:  LDR.W           R1, [LR,R5,LSL#2]
47DF44:  STR.W           R1, [R4,R5,LSL#2]
47DF48:  LDR.W           R1, [R2,R5,LSL#2]
47DF4C:  STR.W           R1, [R8,R5,LSL#2]
47DF50:  LDR.W           R1, [R10,R5,LSL#2]
47DF54:  STR.W           R1, [R6,R5,LSL#2]
47DF58:  ADDS            R5, #1
47DF5A:  CMP             R0, R5
47DF5C:  BNE             loc_47DF38
47DF5E:  LDR             R0, [SP,#0x48+var_20]
47DF60:  LDR.W           R8, [R0,#0x24]
47DF64:  LDRD.W          R5, R4, [SP,#0x48+var_28]
47DF68:  ADD.W           R9, R9, #1
47DF6C:  CMP             R9, R8
47DF6E:  BLT             loc_47DEF8
47DF70:  LDR             R4, [SP,#0x48+var_38]
47DF72:  B               loc_47DF7A
47DF74:  LDR             R0, [SP,#0x48+var_20]
47DF76:  ADD.W           R5, R0, #0x118
47DF7A:  LDR             R0, [R4,#0x28]
47DF7C:  MOVS            R1, #0
47DF7E:  STRB            R1, [R4,#0x18]
47DF80:  MOVS            R1, #2
47DF82:  EOR.W           R0, R0, #1
47DF86:  STR             R0, [R4,#0x28]
47DF88:  LDR             R0, [R5]
47DF8A:  ADDS            R0, #1
47DF8C:  STR             R0, [R4,#0x1C]
47DF8E:  LDR             R0, [R5]
47DF90:  ADDS            R0, #2
47DF92:  STRD.W          R1, R0, [R4,#0x2C]
47DF96:  ADD             SP, SP, #0x2C ; ','
47DF98:  POP.W           {R8-R11}
47DF9C:  POP             {R4-R7,PC}
