; =========================================================
; Game Engine Function: sub_FDA18
; Address            : 0xFDA18 - 0xFDC82
; =========================================================

FDA18:  PUSH            {R4-R7,LR}
FDA1A:  ADD             R7, SP, #0xC
FDA1C:  PUSH.W          {R8-R11}
FDA20:  SUB             SP, SP, #0x34
FDA22:  STRD.W          R2, R3, [SP,#0x50+var_2C]
FDA26:  MOV             R3, R0
FDA28:  LDR             R0, =(off_23494C - 0xFDA38)
FDA2A:  MOV             R11, R1
FDA2C:  LDRD.W          R6, R4, [R7,#arg_18]
FDA30:  MOVW            R1, #0xC7A0
FDA34:  ADD             R0, PC; off_23494C
FDA36:  LDRD.W          R2, R12, [R7,#arg_10]
FDA3A:  LDRD.W          R10, R9, [R7,#arg_8]
FDA3E:  MOVT            R1, #0x5D ; ']'
FDA42:  LDR.W           R8, [R0]; dword_23DF24
FDA46:  LDR.W           R0, [R8]
FDA4A:  SUB.W           R0, LR, R0
FDA4E:  LDRD.W          R5, LR, [R7,#arg_0]
FDA52:  CMP             R0, R1
FDA54:  BGT             loc_FDA74
FDA56:  MOV             R1, #0x5D7295
FDA5E:  CMP             R0, R1
FDA60:  ITTT NE
FDA62:  MOVWNE          R1, #0xC469
FDA66:  MOVTNE          R1, #0x5D ; ']'
FDA6A:  CMPNE           R0, R1
FDA6C:  BEQ             loc_FDA98
FDA6E:  MOVW            R1, #0xC5D1
FDA72:  B               loc_FDA90
FDA74:  MOV             R1, #0x5DC7A1
FDA7C:  CMP             R0, R1
FDA7E:  ITTT NE
FDA80:  MOVWNE          R1, #0xD061
FDA84:  MOVTNE          R1, #0x5D ; ']'
FDA88:  CMPNE           R0, R1
FDA8A:  BEQ             loc_FDA98
FDA8C:  MOVW            R1, #0xCD07
FDA90:  MOVT            R1, #0x5D ; ']'
FDA94:  CMP             R0, R1
FDA96:  BNE             loc_FDB90
FDA98:  LDR             R0, =(off_234AAC - 0xFDA9E)
FDA9A:  ADD             R0, PC; off_234AAC
FDA9C:  LDR.W           R9, [R0]; dword_314320
FDAA0:  LDR.W           R0, [R9]
FDAA4:  CMP             R0, #2
FDAA6:  LDR             R0, =(off_234AB0 - 0xFDAAC)
FDAA8:  ADD             R0, PC; off_234AB0
FDAAA:  STR             R0, [SP,#0x50+var_24]
FDAAC:  LDR             R0, =(off_234970 - 0xFDAB2)
FDAAE:  ADD             R0, PC; off_234970
FDAB0:  STR             R0, [SP,#0x50+var_20]
FDAB2:  BEQ             loc_FDB0A
FDAB4:  LDR             R0, [SP,#0x50+var_24]
FDAB6:  MOV             R10, R3
FDAB8:  LDR             R1, [SP,#0x50+var_20]
FDABA:  LDR             R0, [R0]
FDABC:  LDR             R1, [R1]
FDABE:  LDR             R5, [R0]
FDAC0:  LDR             R0, [R1]
FDAC2:  BL              sub_E35A0
FDAC6:  LDR.W           LR, [R7,#arg_4]
FDACA:  MOV             R3, R10
FDACC:  LDRD.W          R2, R12, [R7,#arg_10]
FDAD0:  CMP             R5, R0
FDAD2:  LDRD.W          R6, R4, [R7,#arg_18]
FDAD6:  BEQ             loc_FDB0A
FDAD8:  LDR             R0, =(off_234AB4 - 0xFDADE)
FDADA:  ADD             R0, PC; off_234AB4
FDADC:  LDR             R0, [R0]; dword_25C9E4
FDADE:  LDR             R0, [R0]
FDAE0:  CBZ             R0, loc_FDB0A
FDAE2:  LDR             R1, [R0,#0x24]
FDAE4:  CBZ             R1, loc_FDB0A
FDAE6:  LDR.W           R2, [R8]
FDAEA:  MOVW            R5, #0x7D24
FDAEE:  LDR.W           R12, [R1]
FDAF2:  MOVT            R5, #0x66 ; 'f'
FDAF6:  ADD             R2, R5
FDAF8:  LDRD.W          R6, R4, [R7,#arg_18]
FDAFC:  CMP             R12, R2
FDAFE:  LDRD.W          R2, R12, [R7,#arg_10]
FDB02:  ITT NE
FDB04:  LDRNE           R1, [R1,#0x14]
FDB06:  CMPNE           R1, #0
FDB08:  BNE             loc_FDBEC
FDB0A:  LDR             R0, =(off_24754C - 0xFDB18)
FDB0C:  ADD             R1, SP, #0x50+var_44
FDB0E:  LDR.W           R10, [SP,#0x50+var_28]
FDB12:  MOV             R8, R3
FDB14:  ADD             R0, PC; off_24754C
FDB16:  STRD.W          R6, R4, [SP,#0x50+var_38]
FDB1A:  LDR             R5, [R0]
FDB1C:  LDR             R0, [R7,#arg_0]
FDB1E:  STRD.W          R0, LR, [SP,#0x50+var_50]
FDB22:  LDR             R0, [R7,#arg_8]
FDB24:  STR             R0, [SP,#0x50+var_48]
FDB26:  LDR             R0, [R7,#arg_C]
FDB28:  STM.W           R1, {R0,R2,R12}
FDB2C:  MOV             R1, R11
FDB2E:  MOV             R0, R3
FDB30:  LDR.W           R11, [SP,#0x50+var_2C]
FDB34:  MOV             R3, R10
FDB36:  MOV             R2, R11
FDB38:  BLX             R5
FDB3A:  MOV             R4, R0
FDB3C:  LDR             R0, [SP,#0x50+var_24]
FDB3E:  LDR             R6, [R0]
FDB40:  LDR.W           R0, [R9]
FDB44:  LDR             R5, [R6]
FDB46:  CMP             R0, #2
FDB48:  BNE             loc_FDB4E
FDB4A:  LDR             R0, [SP,#0x50+var_20]
FDB4C:  B               loc_FDB70
FDB4E:  CBZ             R5, loc_FDB6C
FDB50:  LDR             R0, [SP,#0x50+var_20]
FDB52:  LDR             R0, [R0]
FDB54:  LDR             R0, [R0]
FDB56:  BL              sub_E35A0
FDB5A:  CMP             R5, R0
FDB5C:  BEQ             loc_FDB6C
FDB5E:  LDR             R0, =(off_234AB4 - 0xFDB64)
FDB60:  ADD             R0, PC; off_234AB4
FDB62:  LDR             R0, [R0]; dword_25C9E4
FDB64:  LDR             R0, [R0]
FDB66:  CBZ             R0, loc_FDB6C
FDB68:  LDR             R0, [R0,#0x24]
FDB6A:  CBZ             R0, loc_FDBB6
FDB6C:  LDR             R0, [SP,#0x50+var_20]
FDB6E:  LDR             R5, [R6]
FDB70:  LDR             R0, [R0]
FDB72:  LDR             R0, [R0]
FDB74:  BL              sub_E35A0
FDB78:  CMP             R5, R0
FDB7A:  BNE             loc_FDB86
FDB7C:  MOV             R0, R8
FDB7E:  MOV             R2, R11
FDB80:  MOV             R3, R10
FDB82:  BL              sub_FD83C
FDB86:  MOV             R0, R4
FDB88:  ADD             SP, SP, #0x34 ; '4'
FDB8A:  POP.W           {R8-R11}
FDB8E:  POP             {R4-R7,PC}
FDB90:  LDR             R0, =(off_24754C - 0xFDB9C)
FDB92:  MOV             R1, LR
FDB94:  STRD.W          R2, R12, [SP,#0x50+var_40]
FDB98:  ADD             R0, PC; off_24754C
FDB9A:  STRD.W          R5, R1, [SP,#0x50+var_50]
FDB9E:  MOV             R1, R11
FDBA0:  STRD.W          R10, R9, [SP,#0x50+var_48]
FDBA4:  LDR.W           LR, [R0]
FDBA8:  MOV             R0, R3
FDBAA:  LDRD.W          R2, R3, [SP,#0x50+var_2C]
FDBAE:  STRD.W          R6, R4, [SP,#0x50+var_38]
FDBB2:  BLX             LR
FDBB4:  B               loc_FDB88
FDBB6:  BL              sub_1082E4
FDBBA:  MOV             R9, R0
FDBBC:  LDR.W           R5, [R10]
FDBC0:  BL              sub_1082E4
FDBC4:  CMP             R5, R0
FDBC6:  BEQ             loc_FDBDC
FDBC8:  LDRB.W          R0, [R9,#0x485]
FDBCC:  LSLS            R0, R0, #0x1F
FDBCE:  BEQ             loc_FDB6C
FDBD0:  LDR.W           R0, [R9,#0x590]
FDBD4:  LDR.W           R1, [R10]
FDBD8:  CMP             R1, R0
FDBDA:  BNE             loc_FDB6C
FDBDC:  MOVS            R4, #0
FDBDE:  STRD.W          R4, R4, [R11]
FDBE2:  STR.W           R4, [R11,#8]
FDBE6:  STR.W           R4, [R10]
FDBEA:  B               loc_FDB86
FDBEC:  LDR.W           R2, [R9]
FDBF0:  CBZ             R2, loc_FDC28
FDBF2:  VLDR            S0, [R0,#0x18]
FDBF6:  VLDR            S4, [R1,#0x30]
FDBFA:  VLDR            S2, [R0,#0x1C]
FDBFE:  VLDR            S6, [R0,#0x20]
FDC02:  VADD.F32        S4, S4, S0
FDC06:  VLDR            S8, [R1,#0x34]
FDC0A:  VLDR            S10, [R1,#0x38]
FDC0E:  VADD.F32        S0, S8, S2
FDC12:  LDR             R0, =(unk_247550 - 0xFDC1C)
FDC14:  VADD.F32        S2, S10, S6
FDC18:  ADD             R0, PC; unk_247550
FDC1A:  VSTR            S4, [R0]
FDC1E:  VSTR            S0, [R0,#4]
FDC22:  VSTR            S2, [R0,#8]
FDC26:  B               loc_FDC4E
FDC28:  LDR             R5, =(unk_247550 - 0xFDC32)
FDC2A:  ADD.W           R2, R0, #0x18
FDC2E:  ADD             R5, PC; unk_247550
FDC30:  MOV             R0, R5
FDC32:  BL              sub_108F30
FDC36:  LDR.W           LR, [R7,#arg_4]
FDC3A:  MOV             R3, R10
FDC3C:  LDRD.W          R12, R6, [R7,#arg_14]
FDC40:  LDR             R4, [R7,#arg_1C]
FDC42:  VLDR            S4, [R5]
FDC46:  VLDR            S0, [R5,#4]
FDC4A:  VLDR            S2, [R5,#8]
FDC4E:  VLDR            S8, [R3,#4]
FDC52:  VADD.F32        S4, S4, S4
FDC56:  VLDR            S10, [R3,#8]
FDC5A:  VSUB.F32        S8, S0, S8
FDC5E:  VLDR            S6, [R3]
FDC62:  VSUB.F32        S10, S2, S10
FDC66:  LDR             R2, [R7,#arg_10]
FDC68:  VSUB.F32        S4, S4, S6
FDC6C:  VADD.F32        S0, S0, S8
FDC70:  VADD.F32        S2, S2, S10
FDC74:  VSTR            S4, [R11]
FDC78:  VSTR            S0, [R11,#4]
FDC7C:  VSTR            S2, [R11,#8]
FDC80:  B               loc_FDB0A
