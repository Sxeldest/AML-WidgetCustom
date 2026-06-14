; =========================================================
; Game Engine Function: _ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc
; Address            : 0x31EE04 - 0x31F0DA
; =========================================================

31EE04:  PUSH            {R4-R7,LR}
31EE06:  ADD             R7, SP, #0xC
31EE08:  PUSH.W          {R8-R11}
31EE0C:  SUB             SP, SP, #0xC
31EE0E:  LDR.W           R11, [R7,#arg_0]
31EE12:  MOV             R9, R3
31EE14:  LDR.W           R10, [R7,#arg_C]
31EE18:  MOV             R8, R1
31EE1A:  CMP.W           R11, #0xB
31EE1E:  MOV             R5, R0
31EE20:  IT NE
31EE22:  CMPNE.W         R11, #0xD
31EE26:  BEQ             loc_31EE2E
31EE28:  CMP.W           R10, #1
31EE2C:  BNE             loc_31EE4C
31EE2E:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EE3C)
31EE30:  MOVW            R1, #0x4D7C
31EE34:  MOVW            R6, #0x26B
31EE38:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EE3A:  LDR             R0, [R0]; CPickups::aPickUps ...
31EE3C:  ADD             R0, R1
31EE3E:  LDRB            R1, [R0]
31EE40:  CBZ             R1, loc_31EEAC
31EE42:  SUBS            R1, R6, #1
31EE44:  SUBS            R0, #0x20 ; ' '
31EE46:  CMP             R6, #0
31EE48:  MOV             R6, R1
31EE4A:  BGT             loc_31EE3E
31EE4C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EE58)
31EE4E:  MOVS            R6, #0
31EE50:  MOVW            R1, #0x26B
31EE54:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EE56:  LDR             R0, [R0]; CPickups::aPickUps ...
31EE58:  ADDS            R0, #0x1C
31EE5A:  LDRB            R3, [R0]
31EE5C:  CMP             R3, #0
31EE5E:  BEQ             loc_31EEE4
31EE60:  ADDS            R3, R6, #1
31EE62:  ADDS            R0, #0x20 ; ' '
31EE64:  CMP             R6, R1
31EE66:  MOV             R6, R3
31EE68:  BLT             loc_31EE5A
31EE6A:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EE76)
31EE6C:  MOVS            R6, #0
31EE6E:  MOVW            R1, #(elf_hash_bucket+0x16F); CEntity *
31EE72:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EE74:  LDR             R0, [R0]; CPickups::aPickUps ...
31EE76:  ADDS            R0, #0x1C
31EE78:  LDRB            R3, [R0]
31EE7A:  CMP             R3, #8
31EE7C:  BEQ             loc_31EEB8
31EE7E:  ADDS            R3, R6, #1
31EE80:  ADDS            R0, #0x20 ; ' '
31EE82:  CMP             R6, R1
31EE84:  MOV             R6, R3
31EE86:  BLT             loc_31EE78
31EE88:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EE94)
31EE8A:  MOVS            R6, #0
31EE8C:  MOVW            R1, #0x26B
31EE90:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EE92:  LDR             R0, [R0]; CPickups::aPickUps ...
31EE94:  ADDS            R0, #0x1C
31EE96:  LDRB            R3, [R0]
31EE98:  AND.W           R3, R3, #0xFE
31EE9C:  CMP             R3, #4
31EE9E:  BEQ             loc_31EEB8
31EEA0:  ADDS            R3, R6, #1
31EEA2:  ADDS            R0, #0x20 ; ' '
31EEA4:  CMP             R6, R1
31EEA6:  MOV             R6, R3
31EEA8:  BLT             loc_31EE96
31EEAA:  B               loc_31EEB2
31EEAC:  CMP.W           R6, #0x26C
31EEB0:  BLT             loc_31EEE4
31EEB2:  MOV.W           R0, #0xFFFFFFFF
31EEB6:  B               loc_31F0D2
31EEB8:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EEBE)
31EEBA:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EEBC:  LDR             R0, [R0]; CPickups::aPickUps ...
31EEBE:  ADD.W           R4, R0, R6,LSL#5
31EEC2:  LDR.W           R0, [R4,#4]!; this
31EEC6:  CBZ             R0, loc_31EEE4
31EEC8:  STR             R5, [SP,#0x28+var_20]
31EECA:  MOV             R5, R2
31EECC:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31EED0:  LDR             R0, [R4]
31EED2:  CMP             R0, #0
31EED4:  ITTT NE
31EED6:  LDRNE           R1, [R0]
31EED8:  LDRNE           R1, [R1,#4]
31EEDA:  BLXNE           R1
31EEDC:  MOV             R2, R5
31EEDE:  LDR             R5, [SP,#0x28+var_20]
31EEE0:  MOVS            R0, #0
31EEE2:  STR             R0, [R4]
31EEE4:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EEF0)
31EEE6:  MOV             LR, R2
31EEE8:  LDR             R3, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31EEF4)
31EEEA:  MOVS            R4, #0
31EEEC:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
31EEEE:  STR             R5, [SP,#0x28+var_20]
31EEF0:  ADD             R3, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31EEF2:  STR.W           R8, [SP,#0x28+var_24]
31EEF6:  LDR             R1, [R1]; CPickups::aPickUps ...
31EEF8:  LSLS            R5, R6, #5
31EEFA:  LDR             R3, [R3]; CTimer::m_snTimeInMilliseconds ...
31EEFC:  MOV             R12, R9
31EEFE:  LDRD.W          R2, R0, [R7,#arg_4]
31EF02:  ADD.W           R8, R1, R6,LSL#5
31EF06:  STR             R4, [R1,R5]
31EF08:  MOV             R5, R11
31EF0A:  MOV             R9, R8
31EF0C:  STRH.W          R0, [R8,#0x16]
31EF10:  MOV             R1, R8
31EF12:  LDR             R0, [R3]; CTimer::m_snTimeInMilliseconds
31EF14:  SUB.W           R3, R11, #4; switch 9 cases
31EF18:  LDRB.W          R4, [R9,#0x1D]!
31EF1C:  CMP             R3, #8
31EF1E:  STRB.W          R11, [R1,#0x1C]!
31EF22:  STRD.W          R2, R0, [R8,#8]
31EF26:  BIC.W           R2, R4, #7
31EF2A:  ORR.W           R10, R2, R10,LSL#1
31EF2E:  STRB.W          R10, [R9]
31EF32:  BHI             def_31EF38; jumptable 0031EF38 default case, cases 6,7
31EF34:  ADD.W           R2, R8, #0xC
31EF38:  TBB.W           [PC,R3]; switch jump
31EF3C:  DCB 0x14; jump table for switch statement
31EF3D:  DCB 0x17
31EF3E:  DCB 0x20
31EF3F:  DCB 0x20
31EF40:  DCB 0x1C
31EF41:  DCB 5
31EF42:  DCB 5
31EF43:  DCB 0xF
31EF44:  DCB 0xF
31EF45:  ALIGN 2
31EF46:  MOVS            R3, #9; jumptable 0031EF38 cases 9,10
31EF48:  STRB            R3, [R1]
31EF4A:  ADDW            R3, R0, #0x5DC
31EF4E:  STR             R3, [R2]
31EF50:  SUB.W           R3, R5, #0xB
31EF54:  UXTB            R3, R3
31EF56:  CMP             R3, #1
31EF58:  BHI             def_31EF38; jumptable 0031EF38 default case, cases 6,7
31EF5A:  ADDW            R0, R0, #0x5DC; jumptable 0031EF38 cases 11,12
31EF5E:  MOVS            R3, #0xB
31EF60:  STRB            R3, [R1]
31EF62:  B               loc_31EF7A
31EF64:  MOVW            R1, #0x4E20; jumptable 0031EF38 case 4
31EF68:  B               loc_31EF78
31EF6A:  ADD.W           R0, R0, #0x1C000; jumptable 0031EF38 case 5
31EF6E:  ADD.W           R0, R0, #0x14C0
31EF72:  B               loc_31EF7A
31EF74:  MOVW            R1, #0x7530; jumptable 0031EF38 case 8
31EF78:  ADD             R0, R1
31EF7A:  STR             R0, [R2]
31EF7C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31EF84); jumptable 0031EF38 default case, cases 6,7
31EF7E:  LDR             R5, [R7,#arg_10]
31EF80:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31EF82:  CMP             R5, #0
31EF84:  LDR             R0, [R0]; CPickups::aPickUps ...
31EF86:  ADD.W           R0, R0, R6,LSL#5
31EF8A:  STRH.W          R12, [R0,#0x18]
31EF8E:  MOV.W           R12, #0
31EF92:  BEQ             loc_31EFD4
31EF94:  LDR             R0, =(aProp3 - 0x31EFA2); "PROP_3"
31EF96:  MOV             R1, R5; char *
31EF98:  LDR.W           R11, [SP,#0x28+var_20]
31EF9C:  MOV             R4, LR
31EF9E:  ADD             R0, PC; "PROP_3"
31EFA0:  BLX             strcasecmp
31EFA4:  CBZ             R0, loc_31EFC6
31EFA6:  LDR             R0, =(aProp3x - 0x31EFAE); "PROP_3X"
31EFA8:  MOV             R1, R5; char *
31EFAA:  ADD             R0, PC; "PROP_3X"
31EFAC:  BLX             strcasecmp
31EFB0:  CBZ             R0, loc_31EFC6
31EFB2:  LDR             R0, =(aProp4 - 0x31EFBA); "PROP_4"
31EFB4:  MOV             R1, R5; char *
31EFB6:  ADD             R0, PC; "PROP_4"
31EFB8:  BLX             strcasecmp
31EFBC:  MOVS            R1, #0
31EFBE:  CMP             R0, #0
31EFC0:  IT EQ
31EFC2:  MOVEQ           R1, #0x20 ; ' '
31EFC4:  B               loc_31EFC8
31EFC6:  MOVS            R1, #0x10
31EFC8:  MOV             R5, R11
31EFCA:  LDR.W           R11, [SP,#0x28+var_24]
31EFCE:  MOV.W           R12, #0
31EFD2:  B               loc_31EFDE
31EFD4:  MOVS            R1, #0
31EFD6:  LDR.W           R11, [SP,#0x28+var_24]
31EFDA:  MOV             R4, LR
31EFDC:  LDR             R5, [SP,#0x28+var_20]
31EFDE:  VMOV.F32        S0, #8.0
31EFE2:  BIC.W           R0, R10, #0x75 ; 'u'
31EFE6:  VMOV            S2, R11
31EFEA:  ORRS            R0, R1
31EFEC:  VMOV            S4, R5
31EFF0:  STRB.W          R0, [R9]
31EFF4:  VMOV            S6, R4
31EFF8:  LDR             R2, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F004)
31EFFA:  LDR             R3, =(TheCamera_ptr - 0x31F00A)
31EFFC:  VMOV.F32        S8, #0.125
31F000:  ADD             R2, PC; _ZN8CPickups8aPickUpsE_ptr
31F002:  AND.W           R0, R0, #0xB2
31F006:  ADD             R3, PC; TheCamera_ptr
31F008:  VMUL.F32        S2, S2, S0
31F00C:  LDR             R1, [R2]; CPickups::aPickUps ...
31F00E:  VMUL.F32        S4, S4, S0
31F012:  LDR             R2, [R3]; TheCamera
31F014:  VMUL.F32        S0, S6, S0
31F018:  ADD.W           R4, R1, R6,LSL#5
31F01C:  VCVT.S32.F32    S2, S2
31F020:  VCVT.S32.F32    S4, S4
31F024:  VMOV            R3, S2
31F028:  VCVT.F32.S32    S2, S2
31F02C:  VMOV            R5, S4
31F030:  VCVT.F32.S32    S4, S4
31F034:  VCVT.S32.F32    S0, S0
31F038:  VMOV            R1, S0
31F03C:  VMUL.F32        S0, S2, S8
31F040:  VMUL.F32        S2, S4, S8
31F044:  STRH            R3, [R4,#0x12]
31F046:  STRH            R5, [R4,#0x10]
31F048:  STRH            R1, [R4,#0x14]
31F04A:  LDR             R1, [R2,#(dword_951FBC - 0x951FA8)]
31F04C:  ADD.W           R3, R1, #0x30 ; '0'
31F050:  CMP             R1, #0
31F052:  IT EQ
31F054:  ADDEQ           R3, R2, #4
31F056:  MOVS            R1, #0
31F058:  VLDR            S4, [R3]
31F05C:  VLDR            S6, [R3,#4]
31F060:  VSUB.F32        S2, S4, S2
31F064:  VSUB.F32        S0, S6, S0
31F068:  VMUL.F32        S2, S2, S2
31F06C:  VMUL.F32        S0, S0, S0
31F070:  VADD.F32        S0, S2, S0
31F074:  VLDR            S2, =100.0
31F078:  VSQRT.F32       S0, S0
31F07C:  VCMPE.F32       S0, S2
31F080:  VMRS            APSR_nzcv, FPSCR
31F084:  VCMPE.F32       S0, S2
31F088:  IT LT
31F08A:  MOVLT           R1, #1
31F08C:  VMRS            APSR_nzcv, FPSCR
31F090:  ORR.W           R0, R0, R1,LSL#3
31F094:  STRB.W          R0, [R9]
31F098:  STR.W           R12, [R4,#4]!
31F09C:  BGE             loc_31F0B4
31F09E:  MOV             R0, R8; this
31F0A0:  MOV             R1, R4; CObject **
31F0A2:  MOV.W           R2, #0xFFFFFFFF; int
31F0A6:  BLX             j__ZN7CPickup19GiveUsAPickUpObjectEPP7CObjecti; CPickup::GiveUsAPickUpObject(CObject **,int)
31F0AA:  LDR             R0, [R4]; this
31F0AC:  CMP             R0, #0
31F0AE:  IT NE
31F0B0:  BLXNE           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
31F0B4:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F0C0)
31F0B6:  MOVS            R2, #1
31F0B8:  MOVW            R3, #0xFFFE
31F0BC:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F0BE:  LDR             R0, [R0]; CPickups::aPickUps ...
31F0C0:  ADD.W           R0, R0, R6,LSL#5
31F0C4:  LDRH            R1, [R0,#0x1A]
31F0C6:  CMP             R1, R3
31F0C8:  IT CC
31F0CA:  ADDCC           R2, R1, #1
31F0CC:  STRH            R2, [R0,#0x1A]
31F0CE:  ORR.W           R0, R6, R2,LSL#16
31F0D2:  ADD             SP, SP, #0xC
31F0D4:  POP.W           {R8-R11}
31F0D8:  POP             {R4-R7,PC}
