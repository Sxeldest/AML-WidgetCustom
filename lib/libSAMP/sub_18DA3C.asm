; =========================================================
; Game Engine Function: sub_18DA3C
; Address            : 0x18DA3C - 0x18DD1E
; =========================================================

18DA3C:  PUSH            {R4-R7,LR}
18DA3E:  ADD             R7, SP, #0xC
18DA40:  PUSH.W          {R8-R11}
18DA44:  SUB             SP, SP, #0x18
18DA46:  MOV             R12, R1
18DA48:  LDR             R1, =(dword_382770 - 0x18DA52)
18DA4A:  LDM.W           R0, {R4,R9,R10}
18DA4E:  ADD             R1, PC; dword_382770
18DA50:  STR             R1, [SP,#0x34+var_24]
18DA52:  LDR             R6, [R1]
18DA54:  LDR             R0, [R0,#0xC]
18DA56:  LSLS            R3, R6, #4
18DA58:  LDR             R3, [R2,R3]
18DA5A:  LDR             R1, =(unk_23A5B8 - 0x18DA6E)
18DA5C:  STR             R2, [SP,#0x34+var_34]
18DA5E:  ADD.W           R2, R2, R6,LSL#4
18DA62:  EOR.W           R8, R3, R4
18DA66:  LDRD.W          LR, R6, [R2,#4]
18DA6A:  ADD             R1, PC; unk_23A5B8
18DA6C:  LDR             R2, [R2,#0xC]
18DA6E:  UXTB.W          R3, R8
18DA72:  EOR.W           R6, R6, R10
18DA76:  EOR.W           R4, R2, R0
18DA7A:  LDR.W           R3, [R1,R3,LSL#2]
18DA7E:  LDR             R5, =(unk_23A9B8 - 0x18DA8A)
18DA80:  UBFX.W          R0, R4, #8, #8
18DA84:  MOV             R11, R1
18DA86:  ADD             R5, PC; unk_23A9B8
18DA88:  UBFX.W          R2, R6, #0x10, #8
18DA8C:  EOR.W           R9, R9, LR
18DA90:  LDR.W           R0, [R5,R0,LSL#2]
18DA94:  LDR             R1, =(unk_23ADB8 - 0x18DA9A)
18DA96:  ADD             R1, PC; unk_23ADB8
18DA98:  EORS            R0, R3
18DA9A:  LDR.W           R2, [R1,R2,LSL#2]
18DA9E:  LDR             R3, =(unk_23B1B8 - 0x18DAA4)
18DAA0:  ADD             R3, PC; unk_23B1B8
18DAA2:  EORS            R0, R2
18DAA4:  MOV.W           R2, R9,LSR#24
18DAA8:  LDR.W           R2, [R3,R2,LSL#2]
18DAAC:  EOR.W           LR, R0, R2
18DAB0:  UBFX.W          R2, R8, #8, #8
18DAB4:  STR.W           LR, [R12]
18DAB8:  UXTB.W          R0, R9
18DABC:  LDR.W           R0, [R11,R0,LSL#2]
18DAC0:  LDR.W           R2, [R5,R2,LSL#2]
18DAC4:  EORS            R0, R2
18DAC6:  UBFX.W          R2, R4, #0x10, #8
18DACA:  LDR.W           R2, [R1,R2,LSL#2]
18DACE:  EORS            R0, R2
18DAD0:  LSRS            R2, R6, #0x18
18DAD2:  LDR.W           R2, [R3,R2,LSL#2]
18DAD6:  EORS            R0, R2
18DAD8:  UBFX.W          R2, R9, #8, #8
18DADC:  STR.W           R0, [R12,#4]
18DAE0:  STR             R0, [SP,#0x34+var_20]
18DAE2:  UXTB            R0, R6
18DAE4:  LDR.W           R0, [R11,R0,LSL#2]
18DAE8:  LDR.W           R2, [R5,R2,LSL#2]
18DAEC:  EORS            R0, R2
18DAEE:  UBFX.W          R2, R8, #0x10, #8
18DAF2:  LDR.W           R2, [R1,R2,LSL#2]
18DAF6:  EORS            R0, R2
18DAF8:  LSRS            R2, R4, #0x18
18DAFA:  LDR.W           R2, [R3,R2,LSL#2]
18DAFE:  UXTB            R4, R4
18DB00:  EORS            R0, R2
18DB02:  STR.W           R0, [R12,#8]
18DB06:  MOV             R10, R0
18DB08:  LDR.W           R0, [R11,R4,LSL#2]
18DB0C:  UBFX.W          R4, R6, #8, #8
18DB10:  MOV             R6, R5
18DB12:  LDR.W           R4, [R5,R4,LSL#2]
18DB16:  EORS            R4, R0
18DB18:  MOV.W           R0, R8,LSR#24
18DB1C:  LDR.W           R5, [R3,R0,LSL#2]
18DB20:  UBFX.W          R0, R9, #0x10, #8
18DB24:  MOV             R8, R3
18DB26:  LDR.W           R3, [R1,R0,LSL#2]
18DB2A:  MOV             R9, R1
18DB2C:  LDR             R0, [SP,#0x34+var_24]
18DB2E:  EOR.W           R1, R4, R3
18DB32:  MOV             R3, R12
18DB34:  LDR             R0, [R0]
18DB36:  EOR.W           R4, R1, R5
18DB3A:  STR.W           R4, [R12,#0xC]
18DB3E:  CMP             R0, #3
18DB40:  BLT             loc_18DC2E
18DB42:  LDR             R1, [SP,#0x34+var_34]
18DB44:  STRD.W          R8, R9, [SP,#0x34+var_30]
18DB48:  ADD.W           R1, R1, R0,LSL#4
18DB4C:  LDR.W           R8, [SP,#0x34+var_30]
18DB50:  SUBS            R1, #8
18DB52:  ADDS            R0, #1
18DB54:  MOV             R9, R6
18DB56:  LDR             R6, [R1,#4]
18DB58:  STR             R0, [SP,#0x34+var_24]
18DB5A:  MOV             R12, R3
18DB5C:  LDR.W           R0, [R1,#-8]
18DB60:  EORS            R6, R4
18DB62:  LDR             R5, [R1]
18DB64:  EOR.W           R4, R0, LR
18DB68:  UBFX.W          R2, R6, #8, #8
18DB6C:  EOR.W           R5, R5, R10
18DB70:  MOV             LR, R11
18DB72:  UXTB            R0, R4
18DB74:  LDR.W           R2, [R9,R2,LSL#2]
18DB78:  LDR.W           R0, [R11,R0,LSL#2]
18DB7C:  LDR.W           R11, [SP,#0x34+var_2C]
18DB80:  LDR.W           R3, [R1,#-4]
18DB84:  SUBS            R1, #0x10
18DB86:  EORS            R0, R2
18DB88:  UBFX.W          R2, R5, #0x10, #8
18DB8C:  LDR.W           R2, [R11,R2,LSL#2]
18DB90:  EORS            R2, R0
18DB92:  LDR             R0, [SP,#0x34+var_20]
18DB94:  EORS            R0, R3
18DB96:  LSRS            R3, R0, #0x18
18DB98:  LDR.W           R3, [R8,R3,LSL#2]
18DB9C:  EORS            R2, R3
18DB9E:  UBFX.W          R3, R4, #8, #8
18DBA2:  STR.W           R2, [R12]
18DBA6:  STR             R2, [SP,#0x34+var_28]
18DBA8:  UXTB            R2, R0
18DBAA:  LDR.W           R2, [LR,R2,LSL#2]
18DBAE:  LDR.W           R3, [R9,R3,LSL#2]
18DBB2:  EORS            R2, R3
18DBB4:  UBFX.W          R3, R6, #0x10, #8
18DBB8:  LDR.W           R3, [R11,R3,LSL#2]
18DBBC:  EORS            R2, R3
18DBBE:  LSRS            R3, R5, #0x18
18DBC0:  LDR.W           R3, [R8,R3,LSL#2]
18DBC4:  EORS            R2, R3
18DBC6:  UBFX.W          R3, R0, #8, #8
18DBCA:  STR.W           R2, [R12,#4]
18DBCE:  UBFX.W          R0, R0, #0x10, #8
18DBD2:  STR             R2, [SP,#0x34+var_20]
18DBD4:  UXTB            R2, R5
18DBD6:  LDR.W           R2, [LR,R2,LSL#2]
18DBDA:  LDR.W           R3, [R9,R3,LSL#2]
18DBDE:  EORS            R2, R3
18DBE0:  UBFX.W          R3, R4, #0x10, #8
18DBE4:  LDR.W           R3, [R11,R3,LSL#2]
18DBE8:  EORS            R2, R3
18DBEA:  LSRS            R3, R6, #0x18
18DBEC:  LDR.W           R3, [R8,R3,LSL#2]
18DBF0:  EOR.W           R10, R2, R3
18DBF4:  UBFX.W          R3, R5, #8, #8
18DBF8:  STR.W           R10, [R12,#8]
18DBFC:  UXTB            R2, R6
18DBFE:  LDR.W           R2, [LR,R2,LSL#2]
18DC02:  MOV             R6, R9
18DC04:  LDR.W           R3, [R9,R3,LSL#2]
18DC08:  LDR.W           R0, [R11,R0,LSL#2]
18DC0C:  MOV             R11, LR
18DC0E:  EORS            R2, R3
18DC10:  LSRS            R3, R4, #0x18
18DC12:  LDR.W           R3, [R8,R3,LSL#2]
18DC16:  EORS            R0, R2
18DC18:  LDR.W           LR, [SP,#0x34+var_28]
18DC1C:  EOR.W           R4, R0, R3
18DC20:  LDR             R0, [SP,#0x34+var_24]
18DC22:  MOV             R3, R12
18DC24:  STR.W           R4, [R12,#0xC]
18DC28:  SUBS            R0, #1
18DC2A:  CMP             R0, #3
18DC2C:  BHI             loc_18DB54
18DC2E:  LDR.W           R12, [SP,#0x34+var_34]
18DC32:  LDRD.W          R0, R8, [R12,#0x10]
18DC36:  LDRD.W          R2, R6, [R12,#0x18]
18DC3A:  LDR             R1, =(unk_23B5B8 - 0x18DC4A)
18DC3C:  EOR.W           R0, R0, LR
18DC40:  MOV             LR, R3
18DC42:  EOR.W           R2, R2, R10
18DC46:  ADD             R1, PC; unk_23B5B8
18DC48:  UXTB            R5, R0
18DC4A:  LDRB            R5, [R1,R5]
18DC4C:  STRB            R5, [R3]
18DC4E:  EOR.W           R3, R6, R4
18DC52:  UBFX.W          R5, R3, #8, #8
18DC56:  LDRB            R5, [R1,R5]
18DC58:  STRB.W          R5, [LR,#1]
18DC5C:  UBFX.W          R5, R2, #0x10, #8
18DC60:  LDRB            R5, [R1,R5]
18DC62:  STRB.W          R5, [LR,#2]
18DC66:  LDR             R5, [SP,#0x34+var_20]
18DC68:  EOR.W           R4, R8, R5
18DC6C:  LSRS            R6, R4, #0x18
18DC6E:  LDRB            R6, [R1,R6]
18DC70:  STRB.W          R6, [LR,#3]
18DC74:  UXTB            R6, R4
18DC76:  LDRB            R6, [R1,R6]
18DC78:  STRB.W          R6, [LR,#4]
18DC7C:  UBFX.W          R6, R0, #8, #8
18DC80:  LDRB            R6, [R1,R6]
18DC82:  STRB.W          R6, [LR,#5]
18DC86:  UBFX.W          R6, R3, #0x10, #8
18DC8A:  LDRB            R6, [R1,R6]
18DC8C:  STRB.W          R6, [LR,#6]
18DC90:  LSRS            R6, R2, #0x18
18DC92:  LDRB            R6, [R1,R6]
18DC94:  STRB.W          R6, [LR,#7]
18DC98:  UXTB            R6, R2
18DC9A:  LDRB            R6, [R1,R6]
18DC9C:  UBFX.W          R2, R2, #8, #8
18DCA0:  STRB.W          R6, [LR,#8]
18DCA4:  UBFX.W          R6, R4, #8, #8
18DCA8:  LDRB            R6, [R1,R6]
18DCAA:  STRB.W          R6, [LR,#9]
18DCAE:  UBFX.W          R6, R0, #0x10, #8
18DCB2:  LSRS            R0, R0, #0x18
18DCB4:  LDRB            R6, [R1,R6]
18DCB6:  STRB.W          R6, [LR,#0xA]
18DCBA:  LSRS            R6, R3, #0x18
18DCBC:  LDRB            R6, [R1,R6]
18DCBE:  UXTB            R3, R3
18DCC0:  STRB.W          R6, [LR,#0xB]
18DCC4:  LDRB            R3, [R1,R3]
18DCC6:  STRB.W          R3, [LR,#0xC]
18DCCA:  LDRB            R2, [R1,R2]
18DCCC:  STRB.W          R2, [LR,#0xD]
18DCD0:  UBFX.W          R2, R4, #0x10, #8
18DCD4:  LDRB            R2, [R1,R2]
18DCD6:  STRB.W          R2, [LR,#0xE]
18DCDA:  LDRB            R0, [R1,R0]
18DCDC:  STRB.W          R0, [LR,#0xF]
18DCE0:  LDR.W           R0, [LR]
18DCE4:  LDR.W           R2, [R12]
18DCE8:  LDR.W           R1, [LR,#0xC]
18DCEC:  EORS            R0, R2
18DCEE:  STR.W           R0, [LR]
18DCF2:  LDR.W           R0, [R12,#4]
18DCF6:  LDRD.W          R2, R3, [LR,#4]
18DCFA:  EORS            R0, R2
18DCFC:  STR.W           R0, [LR,#4]
18DD00:  LDR.W           R0, [R12,#8]
18DD04:  EORS            R0, R3
18DD06:  STR.W           R0, [LR,#8]
18DD0A:  LDR.W           R0, [R12,#0xC]
18DD0E:  EORS            R0, R1
18DD10:  STR.W           R0, [LR,#0xC]
18DD14:  MOVS            R0, #0
18DD16:  ADD             SP, SP, #0x18
18DD18:  POP.W           {R8-R11}
18DD1C:  POP             {R4-R7,PC}
