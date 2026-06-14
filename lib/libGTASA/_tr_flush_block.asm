; =========================================================
; Game Engine Function: _tr_flush_block
; Address            : 0x20FAA0 - 0x210126
; =========================================================

20FAA0:  PUSH            {R4-R7,LR}
20FAA2:  ADD             R7, SP, #0xC
20FAA4:  PUSH.W          {R8-R11}
20FAA8:  SUB             SP, SP, #0x14
20FAAA:  MOV             R10, R0
20FAAC:  MOV             R4, R3
20FAAE:  LDR.W           R0, [R10,#0x7C]
20FAB2:  MOV             R11, R2
20FAB4:  CMP             R0, #1
20FAB6:  BLT.W           loc_20FD1C
20FABA:  STRD.W          R1, R4, [SP,#0x30+var_24]
20FABE:  LDRB.W          R0, [R10,#0x1C]
20FAC2:  CMP             R0, #2
20FAC4:  BNE             loc_20FB7E
20FAC6:  LDRH.W          R12, [R10,#0xA4]
20FACA:  VMOV.I32        Q8, #0
20FACE:  LDRH.W          LR, [R10,#0xA0]
20FAD2:  ADD.W           R0, R10, #0xA8
20FAD6:  LDRH.W          R8, [R10,#0x9C]
20FADA:  MOVS            R1, #0
20FADC:  LDRH.W          R3, [R10,#0x98]
20FAE0:  LDRH.W          R6, [R10,#0x94]
20FAE4:  LDRH.W          R5, [R10,#0x90]
20FAE8:  LDRH.W          R4, [R10,#0x8C]
20FAEC:  ADDS            R2, R0, R1
20FAEE:  ADDS            R1, #0x10
20FAF0:  VLD2.16         {D18-D19}, [R2]
20FAF4:  CMP.W           R1, #0x1E0
20FAF8:  VADDW.U16       Q8, Q8, D18
20FAFC:  BNE             loc_20FAEC
20FAFE:  VEXT.8          Q9, Q8, Q8, #8
20FB02:  ADDS            R1, R5, R4
20FB04:  ADD             R1, R6
20FB06:  MOVS            R5, #0
20FB08:  VADD.I32        Q8, Q8, Q9
20FB0C:  ADD             R1, R3
20FB0E:  ADD             R1, R8
20FB10:  LDRH.W          R2, [R10,#0x288]
20FB14:  ADD             R1, LR
20FB16:  VDUP.32         Q9, D16[1]
20FB1A:  ADD             R1, R12
20FB1C:  VADD.I32        Q8, Q8, Q9
20FB20:  VMOV.32         R0, D16[0]
20FB24:  VDUP.32         Q8, R5
20FB28:  VMOV.32         D16[0], R1
20FB2C:  ADD.W           R1, R10, #0x28C
20FB30:  ADD             R0, R2
20FB32:  LSRS            R0, R0, #2
20FB34:  ADDS            R2, R1, R5
20FB36:  ADDS            R5, #0x10
20FB38:  VLD2.16         {D18-D19}, [R2]
20FB3C:  CMP.W           R5, #0x1F0
20FB40:  VADDW.U16       Q8, Q8, D18
20FB44:  BNE             loc_20FB34
20FB46:  VEXT.8          Q9, Q8, Q8, #8
20FB4A:  LDRH.W          R2, [R10,#0x47C]
20FB4E:  LDRH.W          R6, [R10,#0x480]
20FB52:  VADD.I32        Q8, Q8, Q9
20FB56:  LDRH.W          R5, [R10,#0x484]
20FB5A:  LDRH.W          R3, [R10,#0x488]
20FB5E:  VDUP.32         Q9, D16[1]
20FB62:  VADD.I32        Q8, Q8, Q9
20FB66:  VMOV.32         R1, D16[0]
20FB6A:  ADD             R1, R2
20FB6C:  MOVS            R2, #0
20FB6E:  ADD             R1, R6
20FB70:  ADD             R1, R5
20FB72:  ADD             R1, R3
20FB74:  CMP             R1, R0
20FB76:  IT LS
20FB78:  MOVLS           R2, #1
20FB7A:  STRB.W          R2, [R10,#0x1C]
20FB7E:  ADD.W           R1, R10, #0xB10
20FB82:  MOV             R0, R10
20FB84:  BL              sub_210144
20FB88:  ADDW            R1, R10, #0xB1C
20FB8C:  MOV             R0, R10
20FB8E:  BL              sub_210144
20FB92:  LDR.W           R1, [R10,#0xB14]
20FB96:  MOVW            R9, #0xFFFF
20FB9A:  LDRH.W          R4, [R10,#0x8E]
20FB9E:  MOVS            R6, #4
20FBA0:  MOV.W           R8, #7
20FBA4:  ADDW            LR, R10, #0xAB4
20FBA8:  ADD.W           R0, R10, R1,LSL#2
20FBAC:  CMP             R4, #0
20FBAE:  MOV.W           R5, #0
20FBB2:  MOV.W           R12, #0xFFFFFFFF
20FBB6:  STRH.W          R9, [R0,#0x92]
20FBBA:  IT EQ
20FBBC:  MOVEQ           R6, #3
20FBBE:  IT EQ
20FBC0:  MOVEQ.W         R8, #0x8A
20FBC4:  ADDW            R0, R10, #0xAB8
20FBC8:  STR             R0, [SP,#0x30+var_28]
20FBCA:  ADDW            R0, R10, #0xABC
20FBCE:  STR             R0, [SP,#0x30+var_2C]
20FBD0:  B               loc_20FC3A
20FBD2:  CMP             R0, R6
20FBD4:  BGE             loc_20FBE6
20FBD6:  ADD.W           R6, R10, R4,LSL#2
20FBDA:  LDRH.W          R3, [R6,#0xA74]
20FBDE:  ADD             R0, R3
20FBE0:  STRH.W          R0, [R6,#0xA74]
20FBE4:  B               loc_20FC12
20FBE6:  CBZ             R4, loc_20FC00
20FBE8:  CMP             R4, R12
20FBEA:  MOV             R0, LR
20FBEC:  BEQ             loc_20FC0C
20FBEE:  ADD.W           R0, R10, R4,LSL#2
20FBF2:  LDRH.W          R3, [R0,#0xA74]
20FBF6:  ADDS            R3, #1
20FBF8:  STRH.W          R3, [R0,#0xA74]
20FBFC:  MOV             R0, LR
20FBFE:  B               loc_20FC0C
20FC00:  SUBS            R0, #1
20FC02:  CMP             R0, #0xA
20FC04:  LDRD.W          R0, R3, [SP,#0x30+var_2C]
20FC08:  IT LT
20FC0A:  MOVLT           R0, R3
20FC0C:  LDRH            R3, [R0]
20FC0E:  ADDS            R3, #1
20FC10:  STRH            R3, [R0]
20FC12:  CMP             R4, R2
20FC14:  MOV.W           R6, #4
20FC18:  IT EQ
20FC1A:  MOVEQ           R6, #3
20FC1C:  CMP             R2, #0
20FC1E:  IT EQ
20FC20:  MOVEQ           R6, #3
20FC22:  CMP             R4, R2
20FC24:  MOV.W           R8, #7
20FC28:  MOV             R12, R4
20FC2A:  IT EQ
20FC2C:  MOVEQ.W         R8, #6
20FC30:  CMP             R2, #0
20FC32:  IT EQ
20FC34:  MOVEQ.W         R8, #0x8A
20FC38:  MOV             R4, R2
20FC3A:  MOVS            R0, #0
20FC3C:  CMP             R5, R1
20FC3E:  BGT             loc_20FC56
20FC40:  ADD.W           R2, R10, R5,LSL#2
20FC44:  ADDS            R0, #1
20FC46:  ADDS            R5, #1
20FC48:  CMP             R0, R8
20FC4A:  LDRH.W          R2, [R2,#0x92]
20FC4E:  BGE             loc_20FBD2
20FC50:  CMP             R4, R2
20FC52:  BEQ             loc_20FC3C
20FC54:  B               loc_20FBD2
20FC56:  LDR.W           R1, [R10,#0xB20]
20FC5A:  MOVS            R6, #4
20FC5C:  LDRH.W          R2, [R10,#0x982]
20FC60:  ADDW            R12, R10, #0x986
20FC64:  MOVS            R5, #0
20FC66:  MOV.W           R8, #0xFFFFFFFF
20FC6A:  ADD.W           R0, R10, R1,LSL#2
20FC6E:  CMP             R2, #0
20FC70:  STRH.W          R9, [R0,#0x986]
20FC74:  MOV.W           R0, #7
20FC78:  IT EQ
20FC7A:  MOVEQ           R6, #3
20FC7C:  IT EQ
20FC7E:  MOVEQ           R0, #0x8A
20FC80:  B               loc_20FCE8
20FC82:  ADD             R5, R3
20FC84:  CMP             R3, R6
20FC86:  BGE             loc_20FC98
20FC88:  ADD.W           R0, R10, R2,LSL#2
20FC8C:  LDRH.W          R6, [R0,#0xA74]
20FC90:  ADD             R3, R6
20FC92:  STRH.W          R3, [R0,#0xA74]
20FC96:  B               loc_20FCC4
20FC98:  CBZ             R2, loc_20FCB2
20FC9A:  CMP             R2, R8
20FC9C:  MOV             R0, LR
20FC9E:  BEQ             loc_20FCBE
20FCA0:  ADD.W           R0, R10, R2,LSL#2
20FCA4:  LDRH.W          R3, [R0,#0xA74]
20FCA8:  ADDS            R3, #1
20FCAA:  STRH.W          R3, [R0,#0xA74]
20FCAE:  MOV             R0, LR
20FCB0:  B               loc_20FCBE
20FCB2:  SUBS            R0, R3, #1
20FCB4:  CMP             R0, #0xA
20FCB6:  LDRD.W          R0, R3, [SP,#0x30+var_2C]
20FCBA:  IT LT
20FCBC:  MOVLT           R0, R3
20FCBE:  LDRH            R3, [R0]
20FCC0:  ADDS            R3, #1
20FCC2:  STRH            R3, [R0]
20FCC4:  CMP             R2, R4
20FCC6:  MOV.W           R6, #4
20FCCA:  IT EQ
20FCCC:  MOVEQ           R6, #3
20FCCE:  CMP             R4, #0
20FCD0:  IT EQ
20FCD2:  MOVEQ           R6, #3
20FCD4:  CMP             R2, R4
20FCD6:  MOV.W           R0, #7
20FCDA:  MOV             R8, R2
20FCDC:  IT EQ
20FCDE:  MOVEQ           R0, #6
20FCE0:  CMP             R4, #0
20FCE2:  IT EQ
20FCE4:  MOVEQ           R0, #0x8A
20FCE6:  MOV             R2, R4
20FCE8:  ADD.W           R9, R12, R5,LSL#2
20FCEC:  MOVS            R3, #0
20FCEE:  ADDS            R4, R5, R3
20FCF0:  CMP             R4, R1
20FCF2:  BGT             loc_20FD04
20FCF4:  LDRH.W          R4, [R9,R3,LSL#2]
20FCF8:  ADDS            R3, #1
20FCFA:  CMP             R3, R0
20FCFC:  BGE             loc_20FC82
20FCFE:  CMP             R2, R4
20FD00:  BEQ             loc_20FCEE
20FD02:  B               loc_20FC82
20FD04:  ADDW            R1, R10, #0xB28
20FD08:  MOV             R0, R10
20FD0A:  BL              sub_210144
20FD0E:  LDRH.W          R0, [R10,#0xAB2]
20FD12:  CBZ             R0, loc_20FD2C
20FD14:  MOV.W           R12, #0x12
20FD18:  LDR             R4, [SP,#0x30+var_20]
20FD1A:  B               loc_20FD9C
20FD1C:  ADD.W           R0, R11, #5
20FD20:  MOV.W           R12, #0
20FD24:  MOV             R2, R0
20FD26:  CMP             R1, #0
20FD28:  BNE             loc_20FDD0
20FD2A:  B               loc_20FDE4
20FD2C:  LDRH.W          R0, [R10,#0xA7A]
20FD30:  LDR             R4, [SP,#0x30+var_20]
20FD32:  CBZ             R0, loc_20FD3A
20FD34:  MOV.W           R12, #0x11
20FD38:  B               loc_20FD9C
20FD3A:  LDRH.W          R0, [R10,#0xAAE]
20FD3E:  CBZ             R0, loc_20FD46
20FD40:  MOV.W           R12, #0x10
20FD44:  B               loc_20FD9C
20FD46:  LDRH.W          R0, [R10,#0xA7E]
20FD4A:  CBZ             R0, loc_20FD52
20FD4C:  MOV.W           R12, #0xF
20FD50:  B               loc_20FD9C
20FD52:  LDRH.W          R0, [R10,#0xAAA]
20FD56:  CBZ             R0, loc_20FD5E
20FD58:  MOV.W           R12, #0xE
20FD5C:  B               loc_20FD9C
20FD5E:  LDRH.W          R0, [R10,#0xA82]
20FD62:  CBZ             R0, loc_20FD6A
20FD64:  MOV.W           R12, #0xD
20FD68:  B               loc_20FD9C
20FD6A:  LDRH.W          R0, [R10,#0xAA6]
20FD6E:  CBZ             R0, loc_20FD76
20FD70:  MOV.W           R12, #0xC
20FD74:  B               loc_20FD9C
20FD76:  LDRH.W          R0, [R10,#0xA86]
20FD7A:  CBZ             R0, loc_20FD82
20FD7C:  MOV.W           R12, #0xB
20FD80:  B               loc_20FD9C
20FD82:  LDRH.W          R0, [R10,#0xAA2]
20FD86:  CBZ             R0, loc_20FD8E
20FD88:  MOV.W           R12, #0xA
20FD8C:  B               loc_20FD9C
20FD8E:  LDRH.W          R0, [R10,#0xA8A]
20FD92:  CMP             R0, #0
20FD94:  BEQ.W           loc_2100CA
20FD98:  MOV.W           R12, #9
20FD9C:  MOV.W           R0, #0x16A0
20FDA0:  MOVW            R2, #0x16A4
20FDA4:  LDR.W           R1, [R10,R0]
20FDA8:  ADD.W           R3, R12, R12,LSL#1
20FDAC:  LDR.W           R2, [R10,R2]
20FDB0:  ADD             R1, R3
20FDB2:  ADD.W           R3, R1, #0x11
20FDB6:  STR.W           R3, [R10,R0]
20FDBA:  ADD.W           R0, R2, #0xA
20FDBE:  ADDS            R1, #0x1B
20FDC0:  LSRS            R0, R0, #3
20FDC2:  CMP.W           R0, R1,LSR#3
20FDC6:  MOV             R2, R0
20FDC8:  IT HI
20FDCA:  LSRHI           R2, R1, #3
20FDCC:  LDR             R1, [SP,#0x30+var_24]
20FDCE:  CBZ             R1, loc_20FDE4
20FDD0:  ADD.W           R3, R11, #4
20FDD4:  CMP             R3, R2
20FDD6:  BHI             loc_20FDE4
20FDD8:  MOV             R0, R10
20FDDA:  MOV             R2, R11
20FDDC:  MOV             R3, R4
20FDDE:  BLX             j__tr_stored_block
20FDE2:  B               loc_210060
20FDE4:  MOVW            R3, #0x16B4
20FDE8:  ADD.W           LR, R10, R3
20FDEC:  LDR.W           R1, [R10,R3]
20FDF0:  MOVW            R3, #0x16B0
20FDF4:  CMP             R0, R2
20FDF6:  BNE             loc_20FE48
20FDF8:  ADDS            R0, R4, #2
20FDFA:  LDRH.W          R2, [R10,R3]
20FDFE:  CMP             R1, #0xE
20FE00:  LSL.W           R6, R0, R1
20FE04:  ORR.W           R2, R2, R6
20FE08:  STRH.W          R2, [R10,R3]
20FE0C:  BLT             loc_20FE9C
20FE0E:  ADD.W           R1, R10, R3
20FE12:  LDR.W           R6, [R10,#0x14]
20FE16:  LDR.W           R3, [R10,#8]
20FE1A:  UXTH            R0, R0
20FE1C:  ADDS            R5, R6, #1
20FE1E:  STR.W           R5, [R10,#0x14]
20FE22:  STRB            R2, [R3,R6]
20FE24:  LDR.W           R3, [R10,#0x14]
20FE28:  LDR.W           R2, [R10,#8]
20FE2C:  LDRB            R6, [R1,#1]
20FE2E:  ADDS            R5, R3, #1
20FE30:  STR.W           R5, [R10,#0x14]
20FE34:  STRB            R6, [R2,R3]
20FE36:  LDR.W           R2, [LR]
20FE3A:  RSB.W           R3, R2, #0x10
20FE3E:  LSRS            R0, R3
20FE40:  STRH            R0, [R1]
20FE42:  SUB.W           R0, R2, #0xD
20FE46:  B               loc_20FE9E
20FE48:  LDRH.W          R0, [R10,R3]
20FE4C:  ADDS            R2, R4, #4
20FE4E:  STR             R4, [SP,#0x30+var_20]
20FE50:  LSL.W           R4, R2, R1
20FE54:  ORRS            R0, R4
20FE56:  ADD.W           R11, R10, R3
20FE5A:  CMP             R1, #0xE
20FE5C:  STRH.W          R0, [R10,R3]
20FE60:  BLT             loc_20FEB2
20FE62:  LDR.W           R3, [R10,#0x14]
20FE66:  UXTH            R2, R2
20FE68:  LDR.W           R1, [R10,#8]
20FE6C:  ADDS            R4, R3, #1
20FE6E:  STR.W           R4, [R10,#0x14]
20FE72:  STRB            R0, [R1,R3]
20FE74:  LDR.W           R1, [R10,#0x14]
20FE78:  LDR.W           R0, [R10,#8]
20FE7C:  LDRB.W          R3, [R11,#1]
20FE80:  ADDS            R4, R1, #1
20FE82:  STR.W           R4, [R10,#0x14]
20FE86:  STRB            R3, [R0,R1]
20FE88:  LDR.W           R1, [LR]
20FE8C:  RSB.W           R0, R1, #0x10
20FE90:  SUBS            R1, #0xD
20FE92:  LSR.W           R0, R2, R0
20FE96:  STRH.W          R0, [R11]
20FE9A:  B               loc_20FEB4
20FE9C:  ADDS            R0, R1, #3
20FE9E:  LDR             R1, =(unk_5EFF70 - 0x20FEA6)
20FEA0:  LDR             R2, =(unk_5F03F0 - 0x20FEAC)
20FEA2:  ADD             R1, PC; unk_5EFF70
20FEA4:  STR.W           R0, [LR]
20FEA8:  ADD             R2, PC; unk_5F03F0
20FEAA:  MOV             R0, R10
20FEAC:  BL              sub_210760
20FEB0:  B               loc_210060
20FEB2:  ADDS            R1, #3
20FEB4:  STR.W           R1, [LR]
20FEB8:  UXTH            R0, R0
20FEBA:  LDR.W           R2, [R10,#0xB14]
20FEBE:  CMP             R1, #0xC
20FEC0:  LDR.W           R6, [R10,#0xB20]
20FEC4:  SUB.W           R4, R2, #0x100
20FEC8:  LSL.W           R3, R4, R1
20FECC:  ORR.W           R0, R0, R3
20FED0:  STRH.W          R0, [R11]
20FED4:  BLT             loc_20FF10
20FED6:  LDR.W           R3, [R10,#0x14]
20FEDA:  LDR.W           R1, [R10,#8]
20FEDE:  ADDS            R5, R3, #1
20FEE0:  STR.W           R5, [R10,#0x14]
20FEE4:  STRB            R0, [R1,R3]
20FEE6:  LDR.W           R1, [R10,#0x14]
20FEEA:  LDR.W           R0, [R10,#8]
20FEEE:  LDRB.W          R3, [R11,#1]
20FEF2:  ADDS            R5, R1, #1
20FEF4:  STR.W           R5, [R10,#0x14]
20FEF8:  STRB            R3, [R0,R1]
20FEFA:  UXTH            R3, R4
20FEFC:  LDR.W           R1, [LR]
20FF00:  RSB.W           R0, R1, #0x10
20FF04:  SUBS            R1, #0xB
20FF06:  LSR.W           R0, R3, R0
20FF0A:  STRH.W          R0, [R11]
20FF0E:  B               loc_20FF12
20FF10:  ADDS            R1, #5
20FF12:  UXTH            R0, R0
20FF14:  LSL.W           R3, R6, R1
20FF18:  ORRS            R0, R3
20FF1A:  CMP             R1, #0xC
20FF1C:  STR.W           R1, [LR]
20FF20:  STRH.W          R0, [R11]
20FF24:  STR             R6, [SP,#0x30+var_24]
20FF26:  BLT             loc_20FF62
20FF28:  LDR.W           R3, [R10,#0x14]
20FF2C:  LDR.W           R1, [R10,#8]
20FF30:  ADDS            R4, R3, #1
20FF32:  STR.W           R4, [R10,#0x14]
20FF36:  STRB            R0, [R1,R3]
20FF38:  LDR.W           R1, [R10,#0x14]
20FF3C:  LDR.W           R0, [R10,#8]
20FF40:  LDRB.W          R3, [R11,#1]
20FF44:  ADDS            R4, R1, #1
20FF46:  STR.W           R4, [R10,#0x14]
20FF4A:  STRB            R3, [R0,R1]
20FF4C:  UXTH            R3, R6
20FF4E:  LDR.W           R1, [LR]
20FF52:  RSB.W           R0, R1, #0x10
20FF56:  SUBS            R1, #0xB
20FF58:  LSR.W           R0, R3, R0
20FF5C:  STRH.W          R0, [R11]
20FF60:  B               loc_20FF64
20FF62:  ADDS            R1, #5
20FF64:  SUB.W           R6, R12, #3
20FF68:  UXTH            R0, R0
20FF6A:  CMP             R1, #0xD
20FF6C:  STR.W           R1, [LR]
20FF70:  LSL.W           R3, R6, R1
20FF74:  ORR.W           R5, R3, R0
20FF78:  STRH.W          R5, [R11]
20FF7C:  BLT             loc_20FFBE
20FF7E:  MOV             R9, R10
20FF80:  LDR.W           R0, [R10,#8]!
20FF84:  MOV             R8, R10
20FF86:  LDR.W           R1, [R8,#0xC]!
20FF8A:  ADDS            R3, R1, #1
20FF8C:  STR.W           R3, [R8]
20FF90:  STRB            R5, [R0,R1]
20FF92:  LDR.W           R1, [R8]
20FF96:  LDR.W           R0, [R10]
20FF9A:  LDRB.W          R3, [R11,#1]
20FF9E:  ADDS            R5, R1, #1
20FFA0:  STR.W           R5, [R8]
20FFA4:  STRB            R3, [R0,R1]
20FFA6:  UXTH            R3, R6
20FFA8:  LDR.W           R0, [LR]
20FFAC:  RSB.W           R1, R0, #0x10
20FFB0:  LSR.W           R5, R3, R1
20FFB4:  SUB.W           R1, R0, #0xC
20FFB8:  STRH.W          R5, [R11]
20FFBC:  B               loc_20FFCA
20FFBE:  ADD.W           R8, R10, #0x14
20FFC2:  MOV             R9, R10
20FFC4:  ADD.W           R10, R10, #8
20FFC8:  ADDS            R1, #4
20FFCA:  ADD.W           R0, R12, #1
20FFCE:  ADR             R6, byte_210128
20FFD0:  STR.W           R1, [LR]
20FFD4:  LDRB            R3, [R6]
20FFD6:  UXTH            R5, R5
20FFD8:  CMP             R1, #0xE
20FFDA:  ADD.W           R3, R9, R3,LSL#2
20FFDE:  LDRH.W          R3, [R3,#0xA76]
20FFE2:  LSL.W           R4, R3, R1
20FFE6:  ORR.W           R5, R5, R4
20FFEA:  STRH.W          R5, [R11]
20FFEE:  BLT             loc_21002C
20FFF0:  LDR.W           R4, [R8]
20FFF4:  LDR.W           R12, [R10]
20FFF8:  ADDS            R1, R4, #1
20FFFA:  STR.W           R1, [R8]
20FFFE:  STRB.W          R5, [R12,R4]
210002:  LDR.W           R5, [R8]
210006:  LDR.W           R12, [R10]
21000A:  LDRB.W          R4, [R11,#1]
21000E:  ADDS            R1, R5, #1
210010:  STR.W           R1, [R8]
210014:  STRB.W          R4, [R12,R5]
210018:  LDR.W           R1, [LR]
21001C:  RSB.W           R5, R1, #0x10
210020:  SUBS            R1, #0xD
210022:  LSR.W           R5, R3, R5
210026:  STRH.W          R5, [R11]
21002A:  B               loc_21002E
21002C:  ADDS            R1, #3
21002E:  ADDS            R6, #1
210030:  SUBS            R0, #1
210032:  STR.W           R1, [LR]
210036:  BNE             loc_20FFD4
210038:  MOV             R10, R9
21003A:  ADD.W           R4, R10, #0x8C
21003E:  MOV             R0, R10
210040:  MOV             R1, R4
210042:  BL              sub_210B40
210046:  ADD.W           R5, R10, #0x980
21004A:  LDR             R2, [SP,#0x30+var_24]
21004C:  MOV             R0, R10
21004E:  MOV             R1, R5
210050:  BL              sub_210B40
210054:  MOV             R0, R10
210056:  MOV             R1, R4
210058:  MOV             R2, R5
21005A:  BL              sub_210760
21005E:  LDR             R4, [SP,#0x30+var_20]
210060:  MOV             R0, R10
210062:  BL              sub_20F71C
210066:  CBZ             R4, loc_2100C2
210068:  MOVW            R0, #0x16B4
21006C:  LDR.W           R1, [R10,R0]
210070:  ADD             R0, R10
210072:  CMP             R1, #9
210074:  BLT             loc_210098
210076:  LDR.W           R2, [R10,#0x14]
21007A:  MOVW            R3, #0x16B0
21007E:  LDR.W           R1, [R10,#8]
210082:  LDRB.W          R3, [R10,R3]
210086:  ADDS            R6, R2, #1
210088:  STR.W           R6, [R10,#0x14]
21008C:  STRB            R3, [R1,R2]
21008E:  MOVW            R1, #0x16B1
210092:  LDR.W           R2, [R10,#8]
210096:  B               loc_2100A4
210098:  CMP             R1, #1
21009A:  BLT             loc_2100B6
21009C:  LDR.W           R2, [R10,#8]
2100A0:  MOVW            R1, #0x16B0
2100A4:  LDR.W           R3, [R10,#0x14]
2100A8:  ADD             R2, R3
2100AA:  LDRB.W          R1, [R10,R1]
2100AE:  ADDS            R6, R3, #1
2100B0:  STR.W           R6, [R10,#0x14]
2100B4:  STRB            R1, [R2]
2100B6:  MOVW            R1, #0x16B0
2100BA:  MOVS            R2, #0
2100BC:  STRH.W          R2, [R10,R1]
2100C0:  STR             R2, [R0]
2100C2:  ADD             SP, SP, #0x14
2100C4:  POP.W           {R8-R11}
2100C8:  POP             {R4-R7,PC}
2100CA:  LDRH.W          R0, [R10,#0xA9E]
2100CE:  MOV             R1, R10
2100D0:  CBZ             R0, loc_2100DA
2100D2:  MOV.W           R12, #8
2100D6:  MOV             R10, R1
2100D8:  B               loc_20FD18
2100DA:  LDRH.W          R0, [R1,#0xA8E]
2100DE:  CBZ             R0, loc_2100E8
2100E0:  MOV.W           R12, #7
2100E4:  MOV             R10, R1
2100E6:  B               loc_20FD18
2100E8:  LDRH.W          R0, [R1,#0xA9A]
2100EC:  CBZ             R0, loc_2100F6
2100EE:  MOV.W           R12, #6
2100F2:  MOV             R10, R1
2100F4:  B               loc_20FD18
2100F6:  LDRH.W          R0, [R1,#0xA92]
2100FA:  CBZ             R0, loc_210104
2100FC:  MOV.W           R12, #5
210100:  MOV             R10, R1
210102:  B               loc_20FD18
210104:  LDRH.W          R0, [R1,#0xA96]
210108:  CBZ             R0, loc_210112
21010A:  MOV.W           R12, #4
21010E:  MOV             R10, R1
210110:  B               loc_20FD18
210112:  MOV             R10, R1
210114:  MOV.W           R12, #3
210118:  LDRH.W          R0, [R10,#0xA76]
21011C:  CMP             R0, #0
21011E:  IT EQ
210120:  MOVEQ.W         R12, #2
210124:  B               loc_20FD18
