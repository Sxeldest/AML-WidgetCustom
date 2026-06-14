; =========================================================
; Game Engine Function: sub_47D9B0
; Address            : 0x47D9B0 - 0x47DD2C
; =========================================================

47D9B0:  PUSH            {R4-R7,LR}
47D9B2:  ADD             R7, SP, #0xC
47D9B4:  PUSH.W          {R8-R11}
47D9B8:  SUB             SP, SP, #0x5C
47D9BA:  MOV             R10, R0
47D9BC:  CBZ             R1, loc_47D9DA
47D9BE:  LDR.W           R0, [R10]
47D9C2:  MOVS            R1, #4
47D9C4:  STR             R1, [R0,#0x14]
47D9C6:  LDR.W           R0, [R10]
47D9CA:  LDR             R1, [R0]
47D9CC:  MOV             R0, R10
47D9CE:  ADD             SP, SP, #0x5C ; '\'
47D9D0:  POP.W           {R8-R11}
47D9D4:  POP.W           {R4-R7,LR}
47D9D8:  BX              R1
47D9DA:  LDR.W           R0, [R10,#0x1A0]
47D9DE:  LDR.W           R1, [R10,#0x184]
47D9E2:  LDRB            R0, [R0,#8]
47D9E4:  CMP             R0, #0
47D9E6:  BEQ.W           loc_47DD18
47D9EA:  LDR             R0, =(sub_47DD34+1 - 0x47D9F2)
47D9EC:  STR             R1, [SP,#0x78+var_78]
47D9EE:  ADD             R0, PC; sub_47DD34
47D9F0:  STR             R0, [R1,#4]
47D9F2:  LDR.W           R0, [R10,#0x24]
47D9F6:  CMP             R0, #1
47D9F8:  BLT.W           loc_47DD0C
47D9FC:  LDR.W           R1, [R10,#0x118]
47DA00:  MOV.W           R8, #0
47DA04:  LDR.W           R0, [R10,#0x184]
47DA08:  STR             R0, [SP,#0x78+var_2C]
47DA0A:  LSLS            R0, R1, #2
47DA0C:  STR             R0, [SP,#0x78+var_70]
47DA0E:  ADDS            R0, R1, #2
47DA10:  STR             R0, [SP,#0x78+var_30]
47DA12:  SUBS            R0, R1, #2
47DA14:  LDR.W           R11, [R10,#0xC4]
47DA18:  STR             R0, [SP,#0x78+var_40]
47DA1A:  LSLS            R0, R0, #2
47DA1C:  STR             R0, [SP,#0x78+var_74]
47DA1E:  STRD.W          R1, R10, [SP,#0x78+var_3C]
47DA22:  B               loc_47DA2C
47DA24:  LDR.W           R1, [R10,#0x118]
47DA28:  ADD.W           R11, R11, #0x54 ; 'T'
47DA2C:  LDR.W           R0, [R11,#0xC]
47DA30:  LDR.W           R2, [R11,#0x24]
47DA34:  MULS            R0, R2
47DA36:  BLX             __aeabi_idiv
47DA3A:  LDR             R6, [SP,#0x78+var_2C]
47DA3C:  LDRD.W          R1, R3, [R6,#0x20]
47DA40:  ADD.W           R6, R6, R8,LSL#2
47DA44:  LDR             R2, [SP,#0x78+var_30]
47DA46:  LDR             R6, [R6,#8]
47DA48:  STR             R6, [SP,#0x78+var_20]
47DA4A:  MULS            R2, R0
47DA4C:  LDR.W           R3, [R3,R8,LSL#2]
47DA50:  LDR.W           R9, [R1,R8,LSL#2]
47DA54:  CMP             R2, #1
47DA56:  BLT             loc_47DB28
47DA58:  CMP             R2, #3
47DA5A:  BHI             loc_47DA62
47DA5C:  MOV.W           R12, #0
47DA60:  B               loc_47DB06
47DA62:  BIC.W           LR, R2, #3
47DA66:  MOV.W           R12, #0
47DA6A:  CMP.W           LR, #0
47DA6E:  BEQ             loc_47DB06
47DA70:  STR.W           R11, [SP,#0x78+var_24]
47DA74:  ADD.W           R10, R9, R2,LSL#2
47DA78:  LDR             R1, [SP,#0x78+var_20]
47DA7A:  MOV.W           R11, #0
47DA7E:  MOV             R5, R3
47DA80:  MOVS            R3, #0
47DA82:  CMP             R1, R10
47DA84:  ADD.W           R6, R1, R2,LSL#2
47DA88:  IT CC
47DA8A:  MOVCC.W         R11, #1
47DA8E:  CMP             R9, R6
47DA90:  ADD.W           R4, R5, R2,LSL#2
47DA94:  IT CC
47DA96:  MOVCC           R3, #1
47DA98:  CMP             R1, R4
47DA9A:  MOV.W           R1, #0
47DA9E:  IT CC
47DAA0:  MOVCC           R1, #1
47DAA2:  CMP             R5, R6
47DAA4:  MOV.W           R6, #0
47DAA8:  IT CC
47DAAA:  MOVCC           R6, #1
47DAAC:  CMP             R9, R4
47DAAE:  MOV.W           R4, #0
47DAB2:  IT CC
47DAB4:  MOVCC           R4, #1
47DAB6:  STR             R5, [SP,#0x78+var_34]
47DAB8:  CMP             R5, R10
47DABA:  MOV.W           R5, #0
47DABE:  IT CC
47DAC0:  MOVCC           R5, #1
47DAC2:  TST             R5, R4
47DAC4:  IT EQ
47DAC6:  ANDSEQ.W        R1, R1, R6
47DACA:  BNE             loc_47DAFE
47DACC:  ANDS.W          R1, R3, R11
47DAD0:  LDR.W           R11, [SP,#0x78+var_24]
47DAD4:  LDRD.W          R10, R3, [SP,#0x78+var_38]
47DAD8:  BNE             loc_47DB06
47DADA:  LDR             R5, [SP,#0x78+var_20]
47DADC:  MOV             R4, R3
47DADE:  MOV             R12, LR
47DAE0:  MOV             R1, R9
47DAE2:  MOV             R3, R12
47DAE4:  MOV             R6, R4
47DAE6:  VLD1.32         {D16-D17}, [R5]!
47DAEA:  SUBS            R3, #4
47DAEC:  VST1.32         {D16-D17}, [R6]!
47DAF0:  VST1.32         {D16-D17}, [R1]!
47DAF4:  BNE             loc_47DAE6
47DAF6:  LDR             R3, [SP,#0x78+var_34]
47DAF8:  CMP             R2, LR
47DAFA:  BNE             loc_47DB06
47DAFC:  B               loc_47DB28
47DAFE:  LDR.W           R11, [SP,#0x78+var_24]
47DB02:  LDRD.W          R10, R3, [SP,#0x78+var_38]
47DB06:  LDR             R1, [SP,#0x78+var_20]
47DB08:  ADD.W           R5, R3, R12,LSL#2
47DB0C:  ADD.W           R6, R9, R12,LSL#2
47DB10:  SUB.W           R2, R2, R12
47DB14:  ADD.W           R4, R1, R12,LSL#2
47DB18:  LDR.W           R1, [R4],#4
47DB1C:  SUBS            R2, #1
47DB1E:  STR.W           R1, [R5],#4
47DB22:  STR.W           R1, [R6],#4
47DB26:  BNE             loc_47DB18
47DB28:  CMP             R0, #1
47DB2A:  BLT.W           loc_47DCEE
47DB2E:  STR.W           R11, [SP,#0x78+var_24]
47DB32:  MOV             R2, R0
47DB34:  LDR             R1, [SP,#0x78+var_40]
47DB36:  MOV.W           R10, R0,LSL#1
47DB3A:  CMP.W           R10, #1
47DB3E:  MOV.W           R11, #1
47DB42:  MUL.W           R0, R2, R1
47DB46:  LDR             R1, [SP,#0x78+var_3C]
47DB48:  STR             R2, [SP,#0x78+var_28]
47DB4A:  IT GT
47DB4C:  MOVGT           R11, R10
47DB4E:  CMP.W           R11, #3
47DB52:  MUL.W           R4, R2, R1
47DB56:  BHI             loc_47DB5C
47DB58:  MOVS            R5, #0
47DB5A:  B               loc_47DCAC
47DB5C:  MOVW            R1, #0xFFFC
47DB60:  MOVS            R5, #0
47DB62:  MOVT            R1, #0x7FFF
47DB66:  ANDS.W          R1, R1, R11
47DB6A:  STR             R1, [SP,#0x78+var_48]
47DB6C:  BEQ.W           loc_47DCAC
47DB70:  CMP.W           R10, #1
47DB74:  MOV.W           R2, #1
47DB78:  IT GT
47DB7A:  MOVGT           R2, R10
47DB7C:  MOVS            R6, #0
47DB7E:  ADD.W           R12, R2, R0
47DB82:  STR.W           R12, [SP,#0x78+var_4C]
47DB86:  LDR             R1, [SP,#0x78+var_20]
47DB88:  ADD             R2, R4
47DB8A:  ADD.W           LR, R1, R0,LSL#2
47DB8E:  STR.W           LR, [SP,#0x78+var_34]
47DB92:  STR             R2, [SP,#0x78+var_58]
47DB94:  ADD.W           R2, R3, R2,LSL#2
47DB98:  CMP             LR, R2
47DB9A:  STR             R2, [SP,#0x78+var_5C]
47DB9C:  IT CC
47DB9E:  MOVCC           R6, #1
47DBA0:  ADD.W           R2, R1, R12,LSL#2
47DBA4:  STR             R6, [SP,#0x78+var_68]
47DBA6:  ADD.W           R6, R3, R4,LSL#2
47DBAA:  STR             R2, [SP,#0x78+var_50]
47DBAC:  CMP             R6, R2
47DBAE:  MOV             R2, R6
47DBB0:  MOV.W           R6, #0
47DBB4:  STR             R2, [SP,#0x78+var_54]
47DBB6:  IT CC
47DBB8:  MOVCC           R6, #1
47DBBA:  STR             R6, [SP,#0x78+var_6C]
47DBBC:  MOV             LR, R0
47DBBE:  STR             R4, [SP,#0x78+var_44]
47DBC0:  MOV             R0, R3
47DBC2:  LDR             R6, [SP,#0x78+var_58]
47DBC4:  ADD.W           R3, R1, R4,LSL#2
47DBC8:  ADD.W           R4, R0, LR,LSL#2
47DBCC:  ADD.W           R12, R1, R6,LSL#2
47DBD0:  LDR             R6, [SP,#0x78+var_5C]
47DBD2:  MOVS            R1, #0
47DBD4:  CMP             R3, R6
47DBD6:  IT CC
47DBD8:  MOVCC           R1, #1
47DBDA:  CMP             R2, R12
47DBDC:  STR             R1, [SP,#0x78+var_60]
47DBDE:  MOV.W           R1, #0
47DBE2:  IT CC
47DBE4:  MOVCC           R1, #1
47DBE6:  STR             R1, [SP,#0x78+var_64]
47DBE8:  LDR             R1, [SP,#0x78+var_4C]
47DBEA:  LDR             R2, [SP,#0x78+var_34]
47DBEC:  ADD.W           R1, R0, R1,LSL#2
47DBF0:  CMP             R2, R1
47DBF2:  MOV.W           R2, #0
47DBF6:  IT CC
47DBF8:  MOVCC           R2, #1
47DBFA:  STR             R2, [SP,#0x78+var_58]
47DBFC:  MOVS            R2, #0
47DBFE:  STR             R0, [SP,#0x78+var_34]
47DC00:  STR.W           LR, [SP,#0x78+var_4C]
47DC04:  LDR             R0, [SP,#0x78+var_50]
47DC06:  CMP             R4, R0
47DC08:  IT CC
47DC0A:  MOVCC           R2, #1
47DC0C:  CMP             R3, R1
47DC0E:  MOV.W           R3, #0
47DC12:  IT CC
47DC14:  MOVCC           R3, #1
47DC16:  CMP             R4, R12
47DC18:  MOV.W           R12, #0
47DC1C:  IT CC
47DC1E:  MOVCC.W         R12, #1
47DC22:  LDR             R0, [SP,#0x78+var_54]
47DC24:  CMP             R0, R1
47DC26:  MOV.W           R1, #0
47DC2A:  IT CC
47DC2C:  MOVCC           R1, #1
47DC2E:  CMP             R4, R6
47DC30:  MOV.W           R6, #0
47DC34:  IT CC
47DC36:  MOVCC           R6, #1
47DC38:  TST             R6, R1
47DC3A:  BNE             loc_47DCFE
47DC3C:  LDR             R0, [SP,#0x78+var_4C]
47DC3E:  ANDS.W          R1, R12, R3
47DC42:  BNE             loc_47DD06
47DC44:  LDR             R1, [SP,#0x78+var_58]
47DC46:  LDR             R3, [SP,#0x78+var_34]
47DC48:  LDR             R4, [SP,#0x78+var_44]
47DC4A:  ANDS            R1, R2
47DC4C:  BNE             loc_47DCAC
47DC4E:  LDRD.W          R2, R1, [SP,#0x78+var_64]
47DC52:  ANDS            R1, R2
47DC54:  ITT EQ
47DC56:  LDRDEQ.W        R2, R1, [SP,#0x78+var_6C]
47DC5A:  ANDSEQ.W        R1, R1, R2
47DC5E:  BNE             loc_47DCAC
47DC60:  LDR             R1, [SP,#0x78+var_74]
47DC62:  MOV             LR, R3
47DC64:  LDR             R2, [SP,#0x78+var_28]
47DC66:  LDR             R4, [SP,#0x78+var_48]
47DC68:  LDR.W           R12, [SP,#0x78+var_20]
47DC6C:  MUL.W           R6, R1, R2
47DC70:  LDR             R1, [SP,#0x78+var_70]
47DC72:  MOV             R5, R4
47DC74:  MOV             R3, R5
47DC76:  MULS            R2, R1
47DC78:  ADD.W           R1, R12, R2
47DC7C:  SUBS            R3, #4
47DC7E:  VLD1.32         {D16-D17}, [R1]
47DC82:  ADD.W           R1, LR, R6
47DC86:  VST1.32         {D16-D17}, [R1]
47DC8A:  ADD.W           R1, R12, R6
47DC8E:  ADD.W           R12, R12, #0x10
47DC92:  VLD1.32         {D16-D17}, [R1]
47DC96:  ADD.W           R1, LR, R2
47DC9A:  ADD.W           LR, LR, #0x10
47DC9E:  VST1.32         {D16-D17}, [R1]
47DCA2:  BNE             loc_47DC78
47DCA4:  CMP             R11, R4
47DCA6:  LDR             R3, [SP,#0x78+var_34]
47DCA8:  LDR             R4, [SP,#0x78+var_44]
47DCAA:  BEQ             loc_47DCD6
47DCAC:  LDR             R1, [SP,#0x78+var_20]
47DCAE:  MOV             R6, R3
47DCB0:  ADD.W           R3, R6, R4,LSL#2
47DCB4:  ADD.W           R6, R6, R0,LSL#2
47DCB8:  ADD.W           R2, R1, R4,LSL#2
47DCBC:  ADD.W           R1, R1, R0,LSL#2
47DCC0:  LDR.W           R4, [R2,R5,LSL#2]
47DCC4:  STR.W           R4, [R6,R5,LSL#2]
47DCC8:  LDR.W           R4, [R1,R5,LSL#2]
47DCCC:  STR.W           R4, [R3,R5,LSL#2]
47DCD0:  ADDS            R5, #1
47DCD2:  CMP             R5, R10
47DCD4:  BLT             loc_47DCC0
47DCD6:  LDR             R0, [SP,#0x78+var_28]
47DCD8:  LDR.W           R10, [SP,#0x78+var_38]
47DCDC:  LDR.W           R11, [SP,#0x78+var_24]
47DCE0:  NEGS            R0, R0
47DCE2:  LDR.W           R1, [R9]
47DCE6:  STR.W           R1, [R9,R0,LSL#2]
47DCEA:  ADDS            R0, #1
47DCEC:  BNE             loc_47DCE2
47DCEE:  LDR.W           R0, [R10,#0x24]
47DCF2:  ADD.W           R8, R8, #1
47DCF6:  CMP             R8, R0
47DCF8:  BLT.W           loc_47DA24
47DCFC:  B               loc_47DD0C
47DCFE:  LDR             R3, [SP,#0x78+var_34]
47DD00:  LDR             R0, [SP,#0x78+var_4C]
47DD02:  LDR             R4, [SP,#0x78+var_44]
47DD04:  B               loc_47DCAC
47DD06:  LDR             R3, [SP,#0x78+var_34]
47DD08:  LDR             R4, [SP,#0x78+var_44]
47DD0A:  B               loc_47DCAC
47DD0C:  LDR             R1, [SP,#0x78+var_78]
47DD0E:  MOVS            R0, #0
47DD10:  STRD.W          R0, R0, [R1,#0x28]
47DD14:  STR             R0, [R1,#0x34]
47DD16:  B               loc_47DD1E
47DD18:  LDR             R0, =(sub_47DF9E+1 - 0x47DD1E)
47DD1A:  ADD             R0, PC; sub_47DF9E
47DD1C:  STR             R0, [R1,#4]
47DD1E:  MOVS            R0, #0
47DD20:  STR             R0, [R1,#0x1C]
47DD22:  STRB            R0, [R1,#0x18]
47DD24:  ADD             SP, SP, #0x5C ; '\'
47DD26:  POP.W           {R8-R11}
47DD2A:  POP             {R4-R7,PC}
