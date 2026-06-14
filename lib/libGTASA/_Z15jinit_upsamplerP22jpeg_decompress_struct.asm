; =========================================================
; Game Engine Function: _Z15jinit_upsamplerP22jpeg_decompress_struct
; Address            : 0x47FC94 - 0x47FE4E
; =========================================================

47FC94:  PUSH            {R4-R7,LR}
47FC96:  ADD             R7, SP, #0xC
47FC98:  PUSH.W          {R8-R11}
47FC9C:  SUB             SP, SP, #0x14
47FC9E:  MOV             R6, R0
47FCA0:  MOVS            R1, #1
47FCA2:  LDR             R0, [R6,#4]
47FCA4:  MOVS            R2, #0x4C ; 'L'
47FCA6:  LDR             R3, [R0]
47FCA8:  MOV             R0, R6
47FCAA:  BLX             R3
47FCAC:  LDR             R2, =(sub_47FE84+1 - 0x47FCB4)
47FCAE:  LDR             R1, =(sub_47FE74+1 - 0x47FCBA)
47FCB0:  ADD             R2, PC; sub_47FE84
47FCB2:  STR.W           R0, [R6,#0x1A0]
47FCB6:  ADD             R1, PC; sub_47FE74
47FCB8:  STRD.W          R1, R2, [R0]
47FCBC:  MOV             R1, R0
47FCBE:  MOVS            R2, #0
47FCC0:  STR             R1, [SP,#0x30+var_24]
47FCC2:  STRB            R2, [R0,#8]
47FCC4:  LDRB.W          R0, [R6,#0x10A]
47FCC8:  CBZ             R0, loc_47FCD8
47FCCA:  LDR             R0, [R6]
47FCCC:  MOVS            R1, #0x19
47FCCE:  STR             R1, [R0,#0x14]
47FCD0:  LDR             R0, [R6]
47FCD2:  LDR             R1, [R0]
47FCD4:  MOV             R0, R6
47FCD6:  BLX             R1
47FCD8:  LDRB.W          R0, [R6,#0x48]
47FCDC:  MOVS            R1, #0
47FCDE:  CBZ             R0, loc_47FCEE
47FCE0:  LDR.W           R0, [R6,#0x118]
47FCE4:  CMP             R0, #1
47FCE6:  IT GT
47FCE8:  MOVGT           R1, #1
47FCEA:  STR             R1, [SP,#0x30+var_2C]
47FCEC:  B               loc_47FCF2
47FCEE:  MOVS            R0, #0
47FCF0:  STR             R0, [SP,#0x30+var_2C]
47FCF2:  LDR             R0, [R6,#0x24]
47FCF4:  CMP             R0, #1
47FCF6:  BLT.W           loc_47FE46
47FCFA:  LDR.W           R0, [R6,#0xC4]
47FCFE:  MOV.W           R8, #0
47FD02:  STR             R6, [SP,#0x30+var_28]
47FD04:  ADD.W           R11, R0, #0x24 ; '$'
47FD08:  B               loc_47FD98
47FD0A:  LSLS            R0, R6, #1
47FD0C:  CMP             R0, R9
47FD0E:  ITT EQ
47FD10:  MOVEQ.W         R0, R10,LSL#1
47FD14:  CMPEQ           R0, R4
47FD16:  BNE             loc_47FD44
47FD18:  LDR             R0, [SP,#0x30+var_2C]
47FD1A:  CMP             R0, #1
47FD1C:  BNE             loc_47FD38
47FD1E:  LDR.W           R0, [R11,#4]
47FD22:  CMP             R0, #3
47FD24:  BCC             loc_47FD38
47FD26:  LDR             R4, [SP,#0x30+var_20]
47FD28:  MOVS            R1, #1
47FD2A:  LDR             R0, =(sub_4801D0+1 - 0x47FD30)
47FD2C:  ADD             R0, PC; sub_4801D0
47FD2E:  STR             R0, [R4,#0x1C]
47FD30:  LDR             R0, [SP,#0x30+var_24]
47FD32:  STRB            R1, [R0,#8]
47FD34:  LDR             R6, [SP,#0x30+var_28]
47FD36:  B               loc_47FE1C
47FD38:  LDR             R4, [SP,#0x30+var_20]
47FD3A:  LDR             R0, =(sub_4803B0+1 - 0x47FD40)
47FD3C:  ADD             R0, PC; sub_4803B0
47FD3E:  STR             R0, [R4,#0x1C]
47FD40:  LDR             R6, [SP,#0x30+var_28]
47FD42:  B               loc_47FE1C
47FD44:  MOV             R0, R9
47FD46:  MOV             R1, R6
47FD48:  BLX             __aeabi_idivmod
47FD4C:  CBNZ            R1, loc_47FD58
47FD4E:  MOV             R0, R4
47FD50:  MOV             R1, R10
47FD52:  BLX             __aeabi_idivmod
47FD56:  CBZ             R1, loc_47FD6C
47FD58:  LDR             R6, [SP,#0x30+var_28]
47FD5A:  MOVS            R1, #0x26 ; '&'
47FD5C:  LDR             R0, [R6]
47FD5E:  STR             R1, [R0,#0x14]
47FD60:  LDR             R0, [R6]
47FD62:  LDR             R1, [R0]
47FD64:  MOV             R0, R6
47FD66:  BLX             R1
47FD68:  LDR             R4, [SP,#0x30+var_20]
47FD6A:  B               loc_47FE1C
47FD6C:  LDR             R2, [SP,#0x30+var_20]
47FD6E:  MOV             R1, R10
47FD70:  LDR             R0, =(sub_48049A+1 - 0x47FD76)
47FD72:  ADD             R0, PC; sub_48049A
47FD74:  STR             R0, [R2,#0x1C]
47FD76:  LDR             R0, [SP,#0x30+var_24]
47FD78:  ADD.W           R5, R0, R8
47FD7C:  MOV             R0, R4
47FD7E:  MOV             R4, R2
47FD80:  BLX             __aeabi_idiv
47FD84:  STRB.W          R0, [R5,#0x48]
47FD88:  MOV             R0, R9
47FD8A:  MOV             R1, R6
47FD8C:  BLX             __aeabi_idiv
47FD90:  STRB.W          R0, [R5,#0x44]
47FD94:  LDR             R6, [SP,#0x30+var_28]
47FD96:  B               loc_47FE1C
47FD98:  LDRD.W          R4, R0, [R11,#-0x1C]
47FD9C:  LDR.W           R10, [R11]
47FDA0:  LDRD.W          R9, R5, [R6,#0x110]
47FDA4:  LDR.W           R6, [R6,#0x118]
47FDA8:  MUL.W           R0, R0, R10
47FDAC:  MOV             R1, R6
47FDAE:  BLX             __aeabi_idiv
47FDB2:  MOV             R2, R0
47FDB4:  MUL.W           R0, R10, R4
47FDB8:  LDR             R1, [SP,#0x30+var_24]
47FDBA:  MOV             R10, R2
47FDBC:  ADD.W           R4, R1, R8,LSL#2
47FDC0:  MOV             R1, R6
47FDC2:  STR             R2, [R4,#0x34]
47FDC4:  BLX             __aeabi_idiv
47FDC8:  MOV             R6, R0
47FDCA:  LDRB.W          R0, [R11,#0xC]
47FDCE:  CMP             R0, #0
47FDD0:  BEQ             loc_47FDEA
47FDD2:  CMP             R6, R9
47FDD4:  STR             R4, [SP,#0x30+var_20]
47FDD6:  MOV             R4, R5
47FDD8:  IT EQ
47FDDA:  CMPEQ           R10, R4
47FDDC:  BNE             loc_47FDF4
47FDDE:  LDR             R1, [SP,#0x30+var_20]
47FDE0:  LDR             R0, =(sub_47FF6C+1 - 0x47FDE6)
47FDE2:  ADD             R0, PC; sub_47FF6C
47FDE4:  STR             R0, [R1,#0x1C]
47FDE6:  LDR             R6, [SP,#0x30+var_28]
47FDE8:  B               loc_47FE38
47FDEA:  LDR             R0, =(sub_47FF66+1 - 0x47FDF0)
47FDEC:  ADD             R0, PC; sub_47FF66
47FDEE:  STR             R0, [R4,#0x1C]
47FDF0:  LDR             R6, [SP,#0x30+var_28]
47FDF2:  B               loc_47FE38
47FDF4:  CMP.W           R9, R6,LSL#1
47FDF8:  IT EQ
47FDFA:  CMPEQ           R10, R4
47FDFC:  BNE.W           loc_47FD0A
47FE00:  LDR             R0, [SP,#0x30+var_2C]
47FE02:  LDR             R6, [SP,#0x30+var_28]
47FE04:  CMP             R0, #1
47FE06:  BNE             loc_47FE14
47FE08:  LDR.W           R0, [R11,#4]
47FE0C:  CMP             R0, #2
47FE0E:  LDR             R0, =(sub_47FF70+1 - 0x47FE14)
47FE10:  ADD             R0, PC; sub_47FF70
47FE12:  BHI             loc_47FE18
47FE14:  LDR             R0, =(sub_48011C+1 - 0x47FE1A)
47FE16:  ADD             R0, PC; sub_48011C
47FE18:  LDR             R4, [SP,#0x30+var_20]
47FE1A:  STR             R0, [R4,#0x1C]
47FE1C:  LDR             R2, [R6,#4]
47FE1E:  LDR             R0, [R6,#0x5C]; int
47FE20:  LDR.W           R1, [R6,#0x110]; int
47FE24:  LDR             R5, [R2,#8]
47FE26:  BLX             j__Z9jround_upll; jround_up(long,long)
47FE2A:  LDR.W           R3, [R6,#0x114]
47FE2E:  MOV             R2, R0
47FE30:  MOV             R0, R6
47FE32:  MOVS            R1, #1
47FE34:  BLX             R5
47FE36:  STR             R0, [R4,#0xC]
47FE38:  LDR             R0, [R6,#0x24]
47FE3A:  ADD.W           R8, R8, #1
47FE3E:  ADD.W           R11, R11, #0x54 ; 'T'
47FE42:  CMP             R8, R0
47FE44:  BLT             loc_47FD98
47FE46:  ADD             SP, SP, #0x14
47FE48:  POP.W           {R8-R11}
47FE4C:  POP             {R4-R7,PC}
