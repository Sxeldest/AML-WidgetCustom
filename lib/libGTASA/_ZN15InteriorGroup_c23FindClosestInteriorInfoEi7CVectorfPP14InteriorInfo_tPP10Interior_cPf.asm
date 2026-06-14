; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c23FindClosestInteriorInfoEi7CVectorfPP14InteriorInfo_tPP10Interior_cPf
; Address            : 0x449D84 - 0x449F1C
; =========================================================

449D84:  PUSH            {R4-R7,LR}
449D86:  ADD             R7, SP, #0xC
449D88:  PUSH.W          {R8-R11}
449D8C:  SUB             SP, SP, #4
449D8E:  VPUSH           {D8-D9}
449D92:  SUB             SP, SP, #0x18
449D94:  VLDR            S0, [R7,#arg_4]
449D98:  MOV             R8, R1
449D9A:  VLDR            S16, =1000000.0
449D9E:  MOV.W           R10, #0
449DA2:  VMUL.F32        S18, S0, S0
449DA6:  STR             R0, [SP,#0x48+var_40]
449DA8:  LDR             R0, [R7,#arg_0]
449DAA:  MOV.W           R11, #0
449DAE:  MOV.W           R9, #0
449DB2:  STRD.W          R2, R3, [SP,#0x48+var_3C]
449DB6:  STR             R0, [SP,#0x48+var_34]
449DB8:  LDR             R0, [SP,#0x48+var_40]
449DBA:  ADD.W           R5, R0, R10,LSL#2
449DBE:  LDR.W           R0, [R5,#0x10]!; int
449DC2:  CMP             R0, #0
449DC4:  BEQ.W           loc_449EE4
449DC8:  MOVS            R1, #0
449DCA:  MOVS            R2, #0; int
449DCC:  STR             R1, [SP,#0x48+var_48]; float
449DCE:  ADD             R1, SP, #0x48+var_3C; int
449DD0:  MOVS            R3, #0; int
449DD2:  BLX             j__ZN10Interior_c10IsPtInsideEP5RwV3dfff; Interior_c::IsPtInside(RwV3d *,float,float,float)
449DD6:  CMP             R0, #0
449DD8:  BEQ.W           loc_449EE4
449DDC:  LDR             R0, [R5]
449DDE:  LDRSB.W         R1, [R0,#0x40D]
449DE2:  CMP             R1, #1
449DE4:  BLT             loc_449EE4
449DE6:  ADDS.W          R2, R8, #1
449DEA:  VLDR            S0, [SP,#0x48+var_3C]
449DEE:  VLDR            S2, [SP,#0x48+var_38]
449DF2:  VLDR            S4, [SP,#0x48+var_34]
449DF6:  ITT NE
449DF8:  LDRSBNE.W       R3, [R0,#0x590]
449DFC:  CMPNE           R3, R8
449DFE:  BNE             loc_449E06
449E00:  LDRB.W          R3, [R0,#0x591]
449E04:  CBZ             R3, loc_449E0C
449E06:  CMP             R1, #2
449E08:  BGE             loc_449E72
449E0A:  B               loc_449EE4
449E0C:  ADD.W           R3, R0, #0x598
449E10:  MOVS            R5, #0
449E12:  VLDR            S6, [R3]
449E16:  ADDW            R3, R0, #0x594
449E1A:  VLDR            S8, [R3]
449E1E:  VSUB.F32        S6, S2, S6
449E22:  ADDW            R3, R0, #0x59C
449E26:  VSUB.F32        S8, S0, S8
449E2A:  VLDR            S10, [R3]
449E2E:  MOVS            R3, #0
449E30:  VSUB.F32        S10, S4, S10
449E34:  VMUL.F32        S6, S6, S6
449E38:  VMUL.F32        S8, S8, S8
449E3C:  VMUL.F32        S10, S10, S10
449E40:  VADD.F32        S6, S8, S6
449E44:  VADD.F32        S6, S6, S10
449E48:  VCMPE.F32       S6, S16
449E4C:  VMRS            APSR_nzcv, FPSCR
449E50:  VCMPE.F32       S6, S18
449E54:  IT LT
449E56:  MOVLT           R3, #1
449E58:  VMRS            APSR_nzcv, FPSCR
449E5C:  IT LT
449E5E:  MOVLT           R5, #1
449E60:  ANDS            R3, R5
449E62:  ITTT NE
449E64:  VMOVNE.F32      S16, S6
449E68:  ADDNE.W         R11, R0, #0x590
449E6C:  MOVNE           R9, R0
449E6E:  CMP             R1, #2
449E70:  BLT             loc_449EE4
449E72:  ADD.W           R3, R0, #0x5B0
449E76:  MOVS            R5, #1
449E78:  CMP             R2, #0
449E7A:  ITT NE
449E7C:  LDRSBNE.W       R6, [R3]
449E80:  CMPNE           R6, R8
449E82:  BNE             loc_449EDC
449E84:  LDRB            R6, [R3,#1]
449E86:  CBNZ            R6, loc_449EDC
449E88:  VLDR            S6, [R3,#4]
449E8C:  MOVS            R6, #0
449E8E:  VLDR            S8, [R3,#8]
449E92:  MOVS            R4, #0
449E94:  VSUB.F32        S6, S0, S6
449E98:  VLDR            S10, [R3,#0xC]
449E9C:  VSUB.F32        S8, S2, S8
449EA0:  VSUB.F32        S10, S4, S10
449EA4:  VMUL.F32        S6, S6, S6
449EA8:  VMUL.F32        S8, S8, S8
449EAC:  VMUL.F32        S10, S10, S10
449EB0:  VADD.F32        S6, S6, S8
449EB4:  VADD.F32        S6, S6, S10
449EB8:  VCMPE.F32       S6, S16
449EBC:  VMRS            APSR_nzcv, FPSCR
449EC0:  VCMPE.F32       S6, S18
449EC4:  IT LT
449EC6:  MOVLT           R6, #1
449EC8:  VMRS            APSR_nzcv, FPSCR
449ECC:  IT LT
449ECE:  MOVLT           R4, #1
449ED0:  ANDS            R6, R4
449ED2:  ITTT NE
449ED4:  VMOVNE.F32      S16, S6
449ED8:  MOVNE           R11, R3
449EDA:  MOVNE           R9, R0
449EDC:  ADDS            R5, #1
449EDE:  ADDS            R3, #0x20 ; ' '
449EE0:  CMP             R5, R1
449EE2:  BLT             loc_449E78
449EE4:  ADD.W           R10, R10, #1
449EE8:  CMP.W           R10, #8
449EEC:  BNE.W           loc_449DB8
449EF0:  CMP.W           R11, #0
449EF4:  BEQ             loc_449F0C
449EF6:  LDR             R0, [R7,#arg_8]
449EF8:  STR.W           R11, [R0]
449EFC:  LDR             R0, [R7,#arg_C]
449EFE:  STR.W           R9, [R0]
449F02:  LDR             R0, [R7,#arg_10]
449F04:  VSTR            S16, [R0]
449F08:  MOVS            R0, #1
449F0A:  B               loc_449F0E
449F0C:  MOVS            R0, #0
449F0E:  ADD             SP, SP, #0x18
449F10:  VPOP            {D8-D9}
449F14:  ADD             SP, SP, #4
449F16:  POP.W           {R8-R11}
449F1A:  POP             {R4-R7,PC}
