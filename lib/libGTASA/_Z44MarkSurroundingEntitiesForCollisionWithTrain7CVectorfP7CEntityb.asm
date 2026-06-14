; =========================================================
; Game Engine Function: _Z44MarkSurroundingEntitiesForCollisionWithTrain7CVectorfP7CEntityb
; Address            : 0x57ECF8 - 0x57EFD6
; =========================================================

57ECF8:  PUSH            {R4-R7,LR}
57ECFA:  ADD             R7, SP, #0xC
57ECFC:  PUSH.W          {R8-R11}
57ED00:  SUB             SP, SP, #4
57ED02:  VPUSH           {D8-D12}
57ED06:  SUB             SP, SP, #0x40
57ED08:  VMOV            S0, R3
57ED0C:  VLDR            S16, =50.0
57ED10:  VMOV            S2, R0
57ED14:  VLDR            S18, =60.0
57ED18:  VSUB.F32        S4, S2, S0
57ED1C:  VADD.F32        S24, S2, S0
57ED20:  VDIV.F32        S4, S4, S16
57ED24:  VADD.F32        S4, S4, S18
57ED28:  VMOV            R0, S4; x
57ED2C:  VMOV            S4, R1
57ED30:  VSUB.F32        S20, S4, S0
57ED34:  VADD.F32        S22, S4, S0
57ED38:  BLX             floorf
57ED3C:  VDIV.F32        S0, S20, S16
57ED40:  MOV             R4, R0
57ED42:  VADD.F32        S0, S0, S18
57ED46:  VMOV            R0, S0; x
57ED4A:  BLX             floorf
57ED4E:  VDIV.F32        S0, S24, S16
57ED52:  VADD.F32        S0, S0, S18
57ED56:  VDIV.F32        S2, S22, S16
57ED5A:  VMOV            R1, S0
57ED5E:  VADD.F32        S2, S2, S18
57ED62:  VMOV            S16, R0
57ED66:  VMOV            R5, S2
57ED6A:  MOV             R0, R1; x
57ED6C:  BLX             floorf
57ED70:  VMOV            S18, R0
57ED74:  MOV             R0, R5; x
57ED76:  VMOV            S20, R4
57ED7A:  BLX             floorf
57ED7E:  VMOV            S0, R0
57ED82:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x57ED92)
57ED84:  VCVT.S32.F32    S2, S20
57ED88:  MOVS            R2, #0x77 ; 'w'
57ED8A:  VCVT.S32.F32    S0, S0
57ED8E:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
57ED90:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
57ED92:  LDRH            R0, [R1]; this
57ED94:  VCVT.S32.F32    S4, S18
57ED98:  VCVT.S32.F32    S6, S16
57ED9C:  VMOV            R1, S0
57EDA0:  CMP             R1, #0x77 ; 'w'
57EDA2:  IT GE
57EDA4:  MOVGE           R1, R2
57EDA6:  STR             R1, [SP,#0x88+var_88]
57EDA8:  VMOV            R1, S4
57EDAC:  CMP             R1, #0x77 ; 'w'
57EDAE:  IT LT
57EDB0:  MOVLT           R2, R1
57EDB2:  VMOV            R1, S6
57EDB6:  STR             R2, [SP,#0x88+var_58]
57EDB8:  MOVS            R2, #0
57EDBA:  CMP             R1, #0
57EDBC:  IT LE
57EDBE:  MOVLE           R1, R2
57EDC0:  STR             R1, [SP,#0x88+var_80]
57EDC2:  VMOV            R1, S2
57EDC6:  CMP             R1, #0
57EDC8:  IT GT
57EDCA:  MOVGT           R2, R1
57EDCC:  MOVW            R1, #0xFFFF
57EDD0:  CMP             R0, R1
57EDD2:  STR             R2, [SP,#0x88+var_84]
57EDD4:  BEQ             loc_57EDDA
57EDD6:  ADDS            R0, #1
57EDD8:  B               loc_57EDE0
57EDDA:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
57EDDE:  MOVS            R0, #1
57EDE0:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x57EDE6)
57EDE2:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
57EDE4:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
57EDE6:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
57EDE8:  LDR             R0, [SP,#0x88+var_88]
57EDEA:  LDR             R1, [SP,#0x88+var_80]
57EDEC:  CMP             R1, R0
57EDEE:  BGT.W           loc_57EFC8
57EDF2:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x57EDFA)
57EDF4:  LDR             R6, [R7,#arg_0]
57EDF6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
57EDF8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
57EDFA:  STR             R0, [SP,#0x88+var_60]
57EDFC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x57EE02)
57EDFE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
57EE00:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
57EE02:  STR             R0, [SP,#0x88+var_70]
57EE04:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x57EE0A)
57EE06:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
57EE08:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
57EE0A:  STR             R0, [SP,#0x88+var_74]
57EE0C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x57EE12)
57EE0E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
57EE10:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE1
57EE12:  STR             R0, [SP,#0x88+var_4C]
57EE14:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x57EE1A)
57EE16:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
57EE18:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE2
57EE1A:  STR             R0, [SP,#0x88+var_64]
57EE1C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x57EE22)
57EE1E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
57EE20:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE3
57EE22:  STR             R0, [SP,#0x88+var_78]
57EE24:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x57EE2A)
57EE26:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
57EE28:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE1
57EE2A:  STR             R0, [SP,#0x88+var_50]
57EE2C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x57EE32)
57EE2E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
57EE30:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE2
57EE32:  STR             R0, [SP,#0x88+var_68]
57EE34:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x57EE3A)
57EE36:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
57EE38:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE3
57EE3A:  STR             R0, [SP,#0x88+var_7C]
57EE3C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE1_ptr - 0x57EE42)
57EE3E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE1_ptr
57EE40:  LDR.W           R10, [R0]; MI_OBJECTFORMAGNOCRANE1
57EE44:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE2_ptr - 0x57EE4A)
57EE46:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE2_ptr
57EE48:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE2
57EE4A:  STR             R0, [SP,#0x88+var_54]
57EE4C:  LDR             R0, =(MI_OBJECTFORMAGNOCRANE3_ptr - 0x57EE52)
57EE4E:  ADD             R0, PC; MI_OBJECTFORMAGNOCRANE3_ptr
57EE50:  LDR             R0, [R0]; MI_OBJECTFORMAGNOCRANE3
57EE52:  STR             R0, [SP,#0x88+var_6C]
57EE54:  LDR             R0, [SP,#0x88+var_58]
57EE56:  LDR             R1, [SP,#0x88+var_84]
57EE58:  CMP             R1, R0
57EE5A:  BGT.W           loc_57EFB6
57EE5E:  LDR             R0, [SP,#0x88+var_80]
57EE60:  LSLS            R0, R0, #4
57EE62:  UXTB            R0, R0
57EE64:  STR             R0, [SP,#0x88+var_5C]
57EE66:  LDR             R0, [SP,#0x88+var_84]
57EE68:  LDR             R1, [SP,#0x88+var_5C]
57EE6A:  MOV             R11, R0
57EE6C:  AND.W           R0, R11, #0xF
57EE70:  ORRS            R0, R1
57EE72:  ADD.W           R9, R0, R0,LSL#1
57EE76:  LDR             R0, [SP,#0x88+var_60]
57EE78:  LDR.W           R8, [R0,R9,LSL#2]
57EE7C:  B               loc_57EE94
57EE7E:  LDR             R0, [R4]
57EE80:  MOVS            R1, #0
57EE82:  LDR             R2, [R0,#0x14]
57EE84:  MOV             R0, R4
57EE86:  BLX             R2
57EE88:  MOV             R0, R4; this
57EE8A:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57EE8E:  MOVS            R0, #0
57EE90:  STRB.W          R0, [R4,#0xBC]
57EE94:  CMP.W           R8, #0
57EE98:  BEQ             loc_57EEDC
57EE9A:  LDRD.W          R4, R8, [R8]
57EE9E:  CMP             R4, R6
57EEA0:  BEQ             loc_57EE94
57EEA2:  LDR             R0, [R4,#0x44]
57EEA4:  LDRB.W          R1, [R4,#0x3A]
57EEA8:  ORR.W           R0, R0, #0x800
57EEAC:  STR             R0, [R4,#0x44]
57EEAE:  AND.W           R0, R1, #7
57EEB2:  CMP             R0, #4
57EEB4:  BNE             loc_57EE94
57EEB6:  LDR             R0, [R4,#0x1C]
57EEB8:  TST.W           R0, #0x40004
57EEBC:  BEQ             loc_57EE94
57EEBE:  LDRSH.W         R0, [R4,#0x26]
57EEC2:  LDRH.W          R1, [R10]
57EEC6:  CMP             R0, R1
57EEC8:  BEQ             loc_57EE7E
57EECA:  LDR             R1, [SP,#0x88+var_54]
57EECC:  LDRH            R1, [R1]
57EECE:  CMP             R0, R1
57EED0:  BEQ             loc_57EE7E
57EED2:  LDR             R1, [SP,#0x88+var_6C]
57EED4:  LDRH            R1, [R1]
57EED6:  CMP             R0, R1
57EED8:  BNE             loc_57EE94
57EEDA:  B               loc_57EE7E
57EEDC:  LDR             R0, [R7,#arg_4]
57EEDE:  CMP             R0, #0
57EEE0:  BNE             loc_57EFAA
57EEE2:  LDR             R0, [SP,#0x88+var_70]
57EEE4:  ADD.W           R0, R0, R9,LSL#2
57EEE8:  LDR             R5, [R0,#4]
57EEEA:  B               loc_57EF02
57EEEC:  LDR             R0, [R4]
57EEEE:  MOVS            R1, #0
57EEF0:  LDR             R2, [R0,#0x14]
57EEF2:  MOV             R0, R4
57EEF4:  BLX             R2
57EEF6:  MOV             R0, R4; this
57EEF8:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57EEFC:  MOVS            R0, #0
57EEFE:  STRB.W          R0, [R4,#0xBC]
57EF02:  CBZ             R5, loc_57EF46
57EF04:  LDRD.W          R4, R5, [R5]
57EF08:  CMP             R4, R6
57EF0A:  BEQ             loc_57EF02
57EF0C:  LDR             R0, [R4,#0x44]
57EF0E:  LDRB.W          R1, [R4,#0x3A]
57EF12:  ORR.W           R0, R0, #0x800
57EF16:  STR             R0, [R4,#0x44]
57EF18:  AND.W           R0, R1, #7
57EF1C:  CMP             R0, #4
57EF1E:  BNE             loc_57EF02
57EF20:  LDR             R0, [R4,#0x1C]
57EF22:  TST.W           R0, #0x40004
57EF26:  BEQ             loc_57EF02
57EF28:  LDR             R1, [SP,#0x88+var_50]
57EF2A:  LDRSH.W         R0, [R4,#0x26]
57EF2E:  LDRH            R1, [R1]
57EF30:  CMP             R0, R1
57EF32:  BEQ             loc_57EEEC
57EF34:  LDR             R1, [SP,#0x88+var_68]
57EF36:  LDRH            R1, [R1]
57EF38:  CMP             R0, R1
57EF3A:  BEQ             loc_57EEEC
57EF3C:  LDR             R1, [SP,#0x88+var_7C]
57EF3E:  LDRH            R1, [R1]
57EF40:  CMP             R0, R1
57EF42:  BNE             loc_57EF02
57EF44:  B               loc_57EEEC
57EF46:  LDR             R0, [SP,#0x88+var_74]
57EF48:  ADD.W           R0, R0, R9,LSL#2
57EF4C:  LDR             R5, [R0,#8]
57EF4E:  B               loc_57EF66
57EF50:  LDR             R0, [R4]
57EF52:  MOVS            R1, #0
57EF54:  LDR             R2, [R0,#0x14]
57EF56:  MOV             R0, R4
57EF58:  BLX             R2
57EF5A:  MOV             R0, R4; this
57EF5C:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
57EF60:  MOVS            R0, #0
57EF62:  STRB.W          R0, [R4,#0xBC]
57EF66:  CBZ             R5, loc_57EFAA
57EF68:  LDRD.W          R4, R5, [R5]
57EF6C:  CMP             R4, R6
57EF6E:  BEQ             loc_57EF66
57EF70:  LDR             R0, [R4,#0x44]
57EF72:  LDRB.W          R1, [R4,#0x3A]
57EF76:  ORR.W           R0, R0, #0x800
57EF7A:  STR             R0, [R4,#0x44]
57EF7C:  AND.W           R0, R1, #7
57EF80:  CMP             R0, #4
57EF82:  BNE             loc_57EF66
57EF84:  LDR             R0, [R4,#0x1C]
57EF86:  TST.W           R0, #0x40004
57EF8A:  BEQ             loc_57EF66
57EF8C:  LDR             R1, [SP,#0x88+var_4C]
57EF8E:  LDRSH.W         R0, [R4,#0x26]
57EF92:  LDRH            R1, [R1]
57EF94:  CMP             R0, R1
57EF96:  BEQ             loc_57EF50
57EF98:  LDR             R1, [SP,#0x88+var_64]
57EF9A:  LDRH            R1, [R1]
57EF9C:  CMP             R0, R1
57EF9E:  BEQ             loc_57EF50
57EFA0:  LDR             R1, [SP,#0x88+var_78]
57EFA2:  LDRH            R1, [R1]
57EFA4:  CMP             R0, R1
57EFA6:  BNE             loc_57EF66
57EFA8:  B               loc_57EF50
57EFAA:  LDR             R1, [SP,#0x88+var_58]
57EFAC:  ADD.W           R0, R11, #1
57EFB0:  CMP             R11, R1
57EFB2:  BLT.W           loc_57EE68
57EFB6:  LDR             R0, [SP,#0x88+var_80]
57EFB8:  LDR             R1, [SP,#0x88+var_88]
57EFBA:  MOV             R2, R0
57EFBC:  CMP             R2, R1
57EFBE:  ADD.W           R0, R2, #1
57EFC2:  STR             R0, [SP,#0x88+var_80]
57EFC4:  BLT.W           loc_57EE54
57EFC8:  ADD             SP, SP, #0x40 ; '@'
57EFCA:  VPOP            {D8-D12}
57EFCE:  ADD             SP, SP, #4
57EFD0:  POP.W           {R8-R11}
57EFD4:  POP             {R4-R7,PC}
