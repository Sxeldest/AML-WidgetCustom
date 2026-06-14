; =========================================================
; Game Engine Function: sub_23FB24
; Address            : 0x23FB24 - 0x23FEBC
; =========================================================

23FB24:  PUSH            {R4-R7,LR}
23FB26:  ADD             R7, SP, #0xC
23FB28:  PUSH.W          {R8-R11}
23FB2C:  SUB             SP, SP, #0x24
23FB2E:  MOV             LR, R0
23FB30:  MOVW            R0, #0x1204
23FB34:  SUBS            R0, R2, R0
23FB36:  MOV             R12, R1
23FB38:  CMP             R0, #0xE; switch 15 cases
23FB3A:  BHI             def_23FB3C; jumptable 0023FB3C default case
23FB3C:  TBB.W           [PC,R0]; switch jump
23FB40:  DCB 8; jump table for switch statement
23FB41:  DCB 0x35
23FB42:  DCB 0x37
23FB43:  DCB 0x39
23FB44:  DCB 0x3B
23FB45:  DCB 0x3D
23FB46:  DCB 0x3F
23FB47:  DCB 0x41
23FB48:  DCB 0x43
23FB49:  DCB 0x45
23FB4A:  DCB 0x47
23FB4B:  DCB 0x49
23FB4C:  DCB 0x4B
23FB4D:  DCB 0x4D
23FB4E:  DCB 0x4F
23FB4F:  ALIGN 2
23FB50:  MOVS            R0, #0xB; jumptable 0023FB3C case 0
23FB52:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FB54:  SUB.W           R1, R2, #0x1100; jumptable 0023FB3C default case
23FB58:  CMP             R1, #3
23FB5A:  BLS             loc_23FB90
23FB5C:  SUB.W           R1, R2, #0x10000; jumptable 0023FB92 default case
23FB60:  MOVW            R0, #0xA002
23FB64:  SUBS            R1, #4
23FB66:  CMP             R1, #0xD
23FB68:  BHI.W           def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FB6C:  TBH.W           [PC,R1,LSL#1]; switch jump
23FB70:  DCW 0xE; jump table for switch statement
23FB72:  DCW 0x17
23FB74:  DCW 0x1A2
23FB76:  DCW 0x1A2
23FB78:  DCW 0x1A2
23FB7A:  DCW 0x1A2
23FB7C:  DCW 0x1A2
23FB7E:  DCW 0x1A2
23FB80:  DCW 0x1A2
23FB82:  DCW 0x1A2
23FB84:  DCW 0x1A2
23FB86:  DCW 0x1A2
23FB88:  DCW 0x19
23FB8A:  DCW 0x1B
23FB8C:  MOVS            R0, #9; jumptable 0023FB6C case 65540
23FB8E:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FB90:  MOVS            R0, #0
23FB92:  TBB.W           [PC,R1]; switch jump
23FB96:  DCB 0x29; jump table for switch statement
23FB97:  DCB 2
23FB98:  DCB 0x26
23FB99:  DCB 0x28
23FB9A:  MOVS            R0, #1; jumptable 0023FB92 case 4353
23FB9C:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FB9E:  MOVS            R0, #0xA; jumptable 0023FB6C case 65541
23FBA0:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBA2:  MOVS            R0, #2; jumptable 0023FB6C case 65552
23FBA4:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBA6:  MOVS            R0, #5; jumptable 0023FB6C case 65553
23FBA8:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBAA:  MOVS            R0, #0xC; jumptable 0023FB3C case 1
23FBAC:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBAE:  MOVS            R0, #0xD; jumptable 0023FB3C case 2
23FBB0:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBB2:  MOVS            R0, #6; jumptable 0023FB3C case 3
23FBB4:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBB6:  MOVS            R0, #7; jumptable 0023FB3C case 4
23FBB8:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBBA:  MOVS            R0, #8; jumptable 0023FB3C case 5
23FBBC:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBBE:  MOVS            R0, #0xE; jumptable 0023FB3C case 6
23FBC0:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBC2:  MOVS            R0, #0xF; jumptable 0023FB3C case 7
23FBC4:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBC6:  MOVS            R0, #0x10; jumptable 0023FB3C case 8
23FBC8:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBCA:  MOVS            R0, #0x11; jumptable 0023FB3C case 9
23FBCC:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBCE:  MOVS            R0, #0x12; jumptable 0023FB3C case 10
23FBD0:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBD2:  MOVS            R0, #0x13; jumptable 0023FB3C case 11
23FBD4:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBD6:  MOVS            R0, #0x14; jumptable 0023FB3C case 12
23FBD8:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBDA:  MOVS            R0, #0x15; jumptable 0023FB3C case 13
23FBDC:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBDE:  MOVS            R0, #0x16; jumptable 0023FB3C case 14
23FBE0:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBE2:  MOVS            R0, #3; jumptable 0023FB92 case 4354
23FBE4:  B               loc_23FBE8; jumptable 0023FB92 case 4352
23FBE6:  MOVS            R0, #4; jumptable 0023FB92 case 4355
23FBE8:  LDR             R1, =(unk_5FCF90 - 0x23FBF4); jumptable 0023FB92 case 4352
23FBEA:  ADD.W           R0, R0, R0,LSL#1
23FBEE:  LDR             R5, [R7,#arg_0]
23FBF0:  ADD             R1, PC; unk_5FCF90
23FBF2:  ADD.W           R0, R1, R0,LSL#2
23FBF6:  LDR             R1, [R0,#4]
23FBF8:  CMP             R1, R5
23FBFA:  BNE             loc_23FC14
23FBFC:  LDR.W           R8, [R0,#8]
23FC00:  SUB.W           R11, R5, #0x1500
23FC04:  CMP.W           R11, #6
23FC08:  BHI             loc_23FC1A
23FC0A:  LDR             R0, =(unk_60A680 - 0x23FC10)
23FC0C:  ADD             R0, PC; unk_60A680
23FC0E:  LDR.W           R6, [R0,R11,LSL#2]
23FC12:  B               loc_23FC1C
23FC14:  MOVW            R0, #0xA002
23FC18:  B               def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FC1A:  MOVS            R6, #0
23FC1C:  SUB.W           R0, R8, #0x1400
23FC20:  CMP             R0, #6
23FC22:  BHI             loc_23FC2E
23FC24:  LDR             R1, =(unk_60A580 - 0x23FC2A)
23FC26:  ADD             R1, PC; unk_60A580
23FC28:  LDR.W           R4, [R1,R0,LSL#2]
23FC2C:  B               loc_23FC30
23FC2E:  MOVS            R4, #0
23FC30:  UMULL.W         R0, R1, R6, R3
23FC34:  ASRS            R5, R3, #0x1F
23FC36:  MLA.W           R1, R6, R5, R1
23FC3A:  UMULL.W         R10, R0, R0, R4
23FC3E:  MLA.W           R9, R1, R4, R0
23FC42:  MOV.W           R0, R10,LSR#31
23FC46:  ORR.W           R0, R0, R9,LSL#1
23FC4A:  ORR.W           R0, R0, R9,LSR#31
23FC4E:  CBZ             R0, loc_23FC56
23FC50:  MOVW            R0, #0xA005
23FC54:  B               def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FC56:  STRD.W          R4, R11, [SP,#0x40+var_38]
23FC5A:  ADD             R0, SP, #0x40+var_28
23FC5C:  LDR             R4, [R7,#arg_4]
23FC5E:  ADD.W           R11, LR, #0x34 ; '4'
23FC62:  STRD.W          R6, R12, [SP,#0x40+var_30]
23FC66:  STM.W           R0, {R2,R3,R8}
23FC6A:  MOV             R8, LR
23FC6C:  DMB.W           ISH
23FC70:  LDREX.W         R0, [R11]
23FC74:  ADDS            R1, R0, #1
23FC76:  STREX.W         R2, R1, [R11]
23FC7A:  CMP             R2, #0
23FC7C:  BNE             loc_23FC70
23FC7E:  CMP             R0, #0
23FC80:  DMB.W           ISH
23FC84:  BNE             loc_23FCC2
23FC86:  ADD.W           R6, R8, #0x38 ; '8'
23FC8A:  MOVS            R1, #1
23FC8C:  DMB.W           ISH
23FC90:  LDREX.W         R0, [R6]
23FC94:  STREX.W         R2, R1, [R6]
23FC98:  CMP             R2, #0
23FC9A:  BNE             loc_23FC90
23FC9C:  CMP             R0, #1
23FC9E:  DMB.W           ISH
23FCA2:  BNE             loc_23FCC2
23FCA4:  MOVS            R5, #1
23FCA6:  BLX             sched_yield
23FCAA:  DMB.W           ISH
23FCAE:  LDREX.W         R0, [R6]
23FCB2:  STREX.W         R1, R5, [R6]
23FCB6:  CMP             R1, #0
23FCB8:  BNE             loc_23FCAE
23FCBA:  CMP             R0, #1
23FCBC:  DMB.W           ISH
23FCC0:  BEQ             loc_23FCA6
23FCC2:  MOV             R6, R8
23FCC4:  ADD.W           R8, R6, #0x40 ; '@'
23FCC8:  MOVS            R1, #1
23FCCA:  DMB.W           ISH
23FCCE:  LDREX.W         R0, [R8]
23FCD2:  STREX.W         R2, R1, [R8]
23FCD6:  CMP             R2, #0
23FCD8:  BNE             loc_23FCCE
23FCDA:  CMP             R0, #1
23FCDC:  DMB.W           ISH
23FCE0:  BNE             loc_23FD00
23FCE2:  MOVS            R5, #1
23FCE4:  BLX             sched_yield
23FCE8:  DMB.W           ISH
23FCEC:  LDREX.W         R0, [R8]
23FCF0:  STREX.W         R1, R5, [R8]
23FCF4:  CMP             R1, #0
23FCF6:  BNE             loc_23FCEC
23FCF8:  CMP             R0, #1
23FCFA:  DMB.W           ISH
23FCFE:  BEQ             loc_23FCE4
23FD00:  LDR             R0, [R6,#0x2C]
23FD02:  CBZ             R0, loc_23FD54
23FD04:  MOVS            R0, #0
23FD06:  DMB.W           ISH
23FD0A:  LDREX.W         R1, [R8]
23FD0E:  STREX.W         R1, R0, [R8]
23FD12:  CMP             R1, #0
23FD14:  BNE             loc_23FD0A
23FD16:  DMB.W           ISH
23FD1A:  DMB.W           ISH
23FD1E:  LDREX.W         R0, [R11]
23FD22:  SUBS            R1, R0, #1
23FD24:  STREX.W         R2, R1, [R11]
23FD28:  CMP             R2, #0
23FD2A:  BNE             loc_23FD1E
23FD2C:  CMP             R0, #1
23FD2E:  DMB.W           ISH
23FD32:  BNE             loc_23FDB6
23FD34:  ADD.W           R0, R6, #0x38 ; '8'
23FD38:  MOVS            R1, #0
23FD3A:  DMB.W           ISH
23FD3E:  LDREX.W         R2, [R0]
23FD42:  STREX.W         R2, R1, [R0]
23FD46:  CMP             R2, #0
23FD48:  BNE             loc_23FD3E
23FD4A:  DMB.W           ISH
23FD4E:  MOVW            R0, #0xA004
23FD52:  B               def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FD54:  LDR             R0, [R6]; ptr
23FD56:  MOV             R1, R10; size
23FD58:  BLX             realloc
23FD5C:  ORRS.W          R1, R10, R9
23FD60:  BEQ             loc_23FDBC
23FD62:  CBNZ            R0, loc_23FDBC
23FD64:  MOVS            R0, #0
23FD66:  DMB.W           ISH
23FD6A:  LDREX.W         R1, [R8]
23FD6E:  STREX.W         R1, R0, [R8]
23FD72:  CMP             R1, #0
23FD74:  BNE             loc_23FD6A
23FD76:  DMB.W           ISH
23FD7A:  DMB.W           ISH
23FD7E:  LDREX.W         R0, [R11]
23FD82:  SUBS            R1, R0, #1
23FD84:  STREX.W         R2, R1, [R11]
23FD88:  CMP             R2, #0
23FD8A:  BNE             loc_23FD7E
23FD8C:  CMP             R0, #1
23FD8E:  DMB.W           ISH
23FD92:  BNE.W           loc_23FC50
23FD96:  ADD.W           R0, R6, #0x38 ; '8'
23FD9A:  MOVS            R1, #0
23FD9C:  DMB.W           ISH
23FDA0:  LDREX.W         R2, [R0]
23FDA4:  STREX.W         R2, R1, [R0]
23FDA8:  CMP             R2, #0
23FDAA:  BNE             loc_23FDA0
23FDAC:  DMB.W           ISH
23FDB0:  MOVW            R0, #0xA005
23FDB4:  B               def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FDB6:  MOVW            R0, #0xA004
23FDBA:  B               def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FDBC:  STR             R0, [R6]
23FDBE:  LDR             R2, [R7,#arg_8]
23FDC0:  LDR             R5, [SP,#0x40+var_24]
23FDC2:  CBZ             R2, loc_23FDD2
23FDC4:  LDR             R1, [SP,#0x40+var_30]
23FDC6:  MOV             R3, R4
23FDC8:  STRD.W          R1, R5, [SP,#0x40+var_40]
23FDCC:  LDR             R1, [SP,#0x40+var_20]
23FDCE:  BL              sub_2404D8
23FDD2:  LDR.W           R12, [R7,#arg_0]
23FDD6:  STR.W           R12, [R6,#0x18]
23FDDA:  LDR             R0, [R7,#arg_C]
23FDDC:  LDR             R3, [SP,#0x40+var_20]
23FDDE:  CBZ             R0, loc_23FE1C
23FDE0:  STR             R4, [R6,#0x1C]
23FDE2:  MOVW            R0, #0x140C
23FDE6:  MOV             R2, R4
23FDE8:  CMP             R4, R0
23FDEA:  LDRD.W          R4, LR, [SP,#0x40+var_2C]
23FDEE:  BNE             loc_23FE2A
23FDF0:  MOVW            R0, #0xE07F
23FDF4:  LDR             R2, [SP,#0x40+var_34]
23FDF6:  MOVT            R0, #0x7E07
23FDFA:  SMMUL.W         R0, R5, R0
23FDFE:  CMP             R2, #6
23FE00:  MOV.W           R1, R0,ASR#5
23FE04:  ADD.W           R0, R1, R0,LSR#31
23FE08:  ADD.W           R0, R0, R0,LSL#3
23FE0C:  MOV.W           R0, R0,LSL#2
23FE10:  BHI             loc_23FE3A
23FE12:  LDR             R1, =(unk_60A680 - 0x23FE18)
23FE14:  ADD             R1, PC; unk_60A680
23FE16:  LDR.W           R1, [R1,R2,LSL#2]
23FE1A:  B               loc_23FE56
23FE1C:  LDR             R0, [SP,#0x40+var_30]
23FE1E:  LDR             R1, [SP,#0x40+var_38]
23FE20:  STR             R3, [R6,#0x1C]
23FE22:  MULS            R0, R5
23FE24:  LDRD.W          R4, LR, [SP,#0x40+var_2C]
23FE28:  B               loc_23FE56
23FE2A:  LDR             R1, [SP,#0x40+var_34]
23FE2C:  CMP             R1, #6
23FE2E:  BHI             loc_23FE3E
23FE30:  LDR             R0, =(unk_60A680 - 0x23FE36)
23FE32:  ADD             R0, PC; unk_60A680
23FE34:  LDR.W           R0, [R0,R1,LSL#2]
23FE38:  B               loc_23FE40
23FE3A:  MOVS            R1, #0
23FE3C:  B               loc_23FE56
23FE3E:  MOVS            R0, #0
23FE40:  SUB.W           R1, R2, #0x1400
23FE44:  CMP             R1, #0xB
23FE46:  BHI             loc_23FE52
23FE48:  LDR             R2, =(unk_60A6A0 - 0x23FE4E)
23FE4A:  ADD             R2, PC; unk_60A6A0
23FE4C:  LDR.W           R1, [R2,R1,LSL#2]
23FE50:  B               loc_23FE54
23FE52:  MOVS            R1, #0
23FE54:  MULS            R0, R5
23FE56:  MULS            R0, R1
23FE58:  MOVS            R1, #0
23FE5A:  ADD.W           R2, R6, #0x20 ; ' '
23FE5E:  STRD.W          R4, LR, [R6,#4]
23FE62:  STRD.W          R5, R12, [R6,#0xC]
23FE66:  STR             R3, [R6,#0x14]
23FE68:  STM             R2!, {R0,R1,R5}
23FE6A:  DMB.W           ISH
23FE6E:  LDREX.W         R0, [R8]
23FE72:  STREX.W         R0, R1, [R8]
23FE76:  CMP             R0, #0
23FE78:  BNE             loc_23FE6E
23FE7A:  DMB.W           ISH
23FE7E:  DMB.W           ISH
23FE82:  LDREX.W         R1, [R11]
23FE86:  SUBS            R0, R1, #1
23FE88:  STREX.W         R2, R0, [R11]
23FE8C:  CMP             R2, #0
23FE8E:  BNE             loc_23FE82
23FE90:  MOVS            R0, #0
23FE92:  CMP             R1, #1
23FE94:  DMB.W           ISH
23FE98:  BNE             def_23FB6C; jumptable 0023FB6C default case, cases 65542-65551
23FE9A:  ADD.W           R1, R6, #0x38 ; '8'
23FE9E:  DMB.W           ISH
23FEA2:  LDREX.W         R2, [R1]
23FEA6:  STREX.W         R2, R0, [R1]
23FEAA:  CMP             R2, #0
23FEAC:  BNE             loc_23FEA2
23FEAE:  MOVS            R0, #0
23FEB0:  DMB.W           ISH
23FEB4:  ADD             SP, SP, #0x24 ; '$'; jumptable 0023FB6C default case, cases 65542-65551
23FEB6:  POP.W           {R8-R11}
23FEBA:  POP             {R4-R7,PC}
