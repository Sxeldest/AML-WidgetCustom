; =========================================================
; Game Engine Function: _ZN8CVehicle16DoBladeCollisionE7CVectorR7CMatrixsff
; Address            : 0x587AB0 - 0x587DFE
; =========================================================

587AB0:  PUSH            {R4-R7,LR}
587AB2:  ADD             R7, SP, #0xC
587AB4:  PUSH.W          {R8-R11}
587AB8:  SUB             SP, SP, #4
587ABA:  VPUSH           {D8-D12}
587ABE:  SUB             SP, SP, #0x58
587AC0:  VLDR            S16, [R7,#arg_8]
587AC4:  MOV             R11, R0
587AC6:  LDRD.W          R10, R0, [R7,#arg_0]
587ACA:  VMOV            S0, R3
587ACE:  VNEG.F32        S6, S16
587AD2:  ADDS            R0, #3
587AD4:  VMOV            S4, R2
587AD8:  CMP             R0, #6
587ADA:  VMOV            S2, R1
587ADE:  STRD.W          R1, R2, [SP,#0xA0+var_54]
587AE2:  VSTR            S16, [SP,#0xA0+var_68]
587AE6:  VSTR            S16, [SP,#0xA0+var_6C]
587AEA:  STR             R3, [SP,#0xA0+var_4C]
587AEC:  VSTR            S16, [SP,#0xA0+var_64]
587AF0:  VSTR            S6, [SP,#0xA0+var_5C]
587AF4:  VSTR            S6, [SP,#0xA0+var_60]
587AF8:  VSTR            S6, [SP,#0xA0+var_58]
587AFC:  BHI             loc_587B86
587AFE:  MOVS            R1, #1
587B00:  LSLS            R1, R0
587B02:  TST.W           R1, #0x41
587B06:  BNE             loc_587B66
587B08:  TST.W           R1, #0x22
587B0C:  BNE             loc_587B42
587B0E:  MOVS            R1, #1
587B10:  LSL.W           R0, R1, R0
587B14:  TST.W           R0, #0x14
587B18:  BEQ             loc_587B86
587B1A:  LDR             R0, =(ROTOR_SEMI_THICKNESS_ptr - 0x587B28)
587B1C:  VMOV.F32        S8, S16
587B20:  VMOV.F32        S10, S16
587B24:  ADD             R0, PC; ROTOR_SEMI_THICKNESS_ptr
587B26:  VMOV.F32        S14, S6
587B2A:  VMOV.F32        S1, S6
587B2E:  LDR             R0, [R0]; ROTOR_SEMI_THICKNESS
587B30:  VLDR            S12, [R0]
587B34:  VNEG.F32        S3, S12
587B38:  VSTR            S12, [SP,#0xA0+var_6C]
587B3C:  VSTR            S3, [SP,#0xA0+var_60]
587B40:  B               loc_587B9E
587B42:  LDR             R0, =(ROTOR_SEMI_THICKNESS_ptr - 0x587B50)
587B44:  VMOV.F32        S8, S16
587B48:  VMOV.F32        S12, S16
587B4C:  ADD             R0, PC; ROTOR_SEMI_THICKNESS_ptr
587B4E:  VMOV.F32        S14, S6
587B52:  LDR             R0, [R0]; ROTOR_SEMI_THICKNESS
587B54:  VLDR            S10, [R0]
587B58:  VNEG.F32        S1, S10
587B5C:  VSTR            S10, [SP,#0xA0+var_68]
587B60:  VSTR            S1, [SP,#0xA0+var_5C]
587B64:  B               loc_587B9A
587B66:  LDR             R0, =(ROTOR_SEMI_THICKNESS_ptr - 0x587B74)
587B68:  VMOV.F32        S10, S16
587B6C:  VMOV.F32        S12, S16
587B70:  ADD             R0, PC; ROTOR_SEMI_THICKNESS_ptr
587B72:  LDR             R0, [R0]; ROTOR_SEMI_THICKNESS
587B74:  VLDR            S8, [R0]
587B78:  VNEG.F32        S14, S8
587B7C:  VSTR            S8, [SP,#0xA0+var_64]
587B80:  VSTR            S14, [SP,#0xA0+var_58]
587B84:  B               loc_587B96
587B86:  VMOV.F32        S8, S16
587B8A:  VMOV.F32        S10, S16
587B8E:  VMOV.F32        S12, S16
587B92:  VMOV.F32        S14, S6
587B96:  VMOV.F32        S1, S6
587B9A:  VMOV.F32        S3, S6
587B9E:  VADD.F32        S6, S1, S4
587BA2:  LDR.W           R8, =(unk_A13064 - 0x587BB4)
587BA6:  VADD.F32        S14, S14, S0
587BAA:  ADD             R1, SP, #0xA0+var_60; CVector *
587BAC:  VADD.F32        S1, S3, S2
587BB0:  ADD             R8, PC; unk_A13064
587BB2:  VADD.F32        S4, S10, S4
587BB6:  ADD             R2, SP, #0xA0+var_6C; CVector *
587BB8:  VADD.F32        S0, S8, S0
587BBC:  MOV             R0, R8; this
587BBE:  VADD.F32        S2, S12, S2
587BC2:  VSTR            S6, [SP,#0xA0+var_5C]
587BC6:  VSTR            S14, [SP,#0xA0+var_58]
587BCA:  VSTR            S1, [SP,#0xA0+var_60]
587BCE:  VSTR            S4, [SP,#0xA0+var_68]
587BD2:  VSTR            S0, [SP,#0xA0+var_64]
587BD6:  VSTR            S2, [SP,#0xA0+var_6C]
587BDA:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
587BDE:  VMOV            R6, S16
587BE2:  ADD.W           R9, SP, #0xA0+var_54
587BE6:  ADD.W           R0, R8, #0x18; this
587BEA:  MOV             R2, R9; CVector *
587BEC:  MOV             R1, R6; float
587BEE:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
587BF2:  LDR             R0, =(unk_A130C8 - 0x587BFE)
587BF4:  MOVS            R1, #0xFF
587BF6:  LDR             R5, =(word_A13094 - 0x587C02)
587BF8:  MOVS            R4, #0
587BFA:  ADD             R0, PC; unk_A130C8 ; this
587BFC:  MOV             R2, R9; CVector *
587BFE:  ADD             R5, PC; word_A13094
587C00:  STR.W           R5, [R8,#(dword_A13090 - 0xA13064)]
587C04:  STRD.W          R4, R1, [SP,#0xA0+var_A0]; unsigned __int8
587C08:  MOV             R1, R6; float
587C0A:  MOVS            R3, #0; unsigned __int8
587C0C:  MOV             R8, R0
587C0E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
587C12:  MOVS            R0, #1
587C14:  MOV             R1, R10
587C16:  STRH            R0, [R5]
587C18:  ADD             R0, SP, #0xA0+var_78
587C1A:  MOV             R2, R9
587C1C:  STR.W           R8, [R5,#(dword_A1309C - 0xA13094)]
587C20:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
587C24:  VLDR            S18, [SP,#0xA0+var_78]
587C28:  VLDR            S22, =50.0
587C2C:  VSUB.F32        S0, S18, S16
587C30:  VLDR            S24, =60.0
587C34:  VLDR            S20, [SP,#0xA0+var_74]
587C38:  VDIV.F32        S0, S0, S22
587C3C:  VADD.F32        S0, S0, S24
587C40:  VMOV            R0, S0; x
587C44:  BLX             floorf
587C48:  VSUB.F32        S0, S20, S16
587C4C:  MOV             R8, R0
587C4E:  VDIV.F32        S0, S0, S22
587C52:  VADD.F32        S0, S0, S24
587C56:  VMOV            R0, S0; x
587C5A:  BLX             floorf
587C5E:  VADD.F32        S0, S20, S16
587C62:  LDR             R5, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x587C70)
587C64:  VADD.F32        S2, S18, S16
587C68:  VMOV            S16, R0
587C6C:  ADD             R5, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
587C6E:  VDIV.F32        S0, S0, S22
587C72:  VADD.F32        S0, S0, S24
587C76:  VDIV.F32        S2, S2, S22
587C7A:  VMOV            R1, S0
587C7E:  VADD.F32        S2, S2, S24
587C82:  VMOV            R6, S2
587C86:  MOV             R0, R1; x
587C88:  BLX             floorf
587C8C:  VMOV            S18, R0
587C90:  MOV             R0, R6; x
587C92:  VMOV            S20, R8
587C96:  BLX             floorf
587C9A:  VMOV            S0, R0
587C9E:  LDR             R0, [R5]; CWorld::ms_nCurrentScanCode ...
587CA0:  VCVT.S32.F32    S2, S20
587CA4:  MOV.W           R8, #0x78 ; 'x'
587CA8:  VCVT.S32.F32    S0, S0
587CAC:  VCVT.S32.F32    S4, S18
587CB0:  LDRH            R0, [R0]; this
587CB2:  VCVT.S32.F32    S6, S16
587CB6:  VMOV            R1, S4
587CBA:  CMP             R1, #0x78 ; 'x'
587CBC:  IT GE
587CBE:  MOVGE           R1, R8
587CC0:  STR             R1, [SP,#0xA0+var_94]
587CC2:  VMOV            R1, S0
587CC6:  CMP             R1, #0x78 ; 'x'
587CC8:  IT LT
587CCA:  MOVLT           R8, R1
587CCC:  VMOV            R1, S6
587CD0:  CMP             R1, #0
587CD2:  IT LE
587CD4:  MOVLE           R1, R4
587CD6:  STR             R1, [SP,#0xA0+var_8C]
587CD8:  VMOV            R1, S2
587CDC:  CMP             R1, #0
587CDE:  IT GT
587CE0:  MOVGT           R4, R1
587CE2:  MOVW            R1, #0xFFFF
587CE6:  CMP             R0, R1
587CE8:  STR             R4, [SP,#0xA0+var_90]
587CEA:  STR.W           R11, [SP,#0xA0+var_98]
587CEE:  BEQ             loc_587CF4
587CF0:  ADDS            R0, #1
587CF2:  B               loc_587CFA
587CF4:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
587CF8:  MOVS            R0, #1
587CFA:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x587D00)
587CFC:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
587CFE:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
587D00:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
587D02:  LDR             R0, [SP,#0xA0+var_94]
587D04:  LDR             R1, [SP,#0xA0+var_8C]
587D06:  CMP             R1, R0
587D08:  BGT             loc_587DDE
587D0A:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x587D12)
587D0C:  LDR             R6, =(unk_A13064 - 0x587D18)
587D0E:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
587D10:  VLDR            S16, [R7,#arg_C]
587D14:  ADD             R6, PC; unk_A13064
587D16:  LDR             R3, [R0]; CWorld::ms_aSectors ...
587D18:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x587D1E)
587D1A:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
587D1C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
587D1E:  STRD.W          R3, R0, [SP,#0xA0+var_88]
587D22:  LDR.W           R11, [SP,#0xA0+var_98]
587D26:  LDR             R0, [SP,#0xA0+var_90]
587D28:  LDRD.W          R5, R10, [R7,#arg_0]
587D2C:  CMP             R0, R8
587D2E:  BGT             loc_587DD2
587D30:  LDR             R1, [SP,#0xA0+var_8C]
587D32:  MOVS            R0, #0x77 ; 'w'
587D34:  CMP             R1, #0x77 ; 'w'
587D36:  IT LT
587D38:  MOVLT           R0, R1
587D3A:  LDR.W           R9, [SP,#0xA0+var_90]
587D3E:  RSB.W           R0, R0, R0,LSL#4
587D42:  LSLS            R0, R0, #3
587D44:  STR             R0, [SP,#0xA0+var_7C]
587D46:  LSLS            R0, R1, #4
587D48:  UXTB            R0, R0
587D4A:  STR             R0, [SP,#0xA0+var_80]
587D4C:  CMP.W           R9, #0x77 ; 'w'
587D50:  MOV.W           R0, #0x77 ; 'w'
587D54:  VSTR            S16, [SP,#0xA0+var_9C]
587D58:  MOV             R2, R6; CColModel *
587D5A:  STR.W           R10, [SP,#0xA0+var_A0]; __int16
587D5E:  IT LT
587D60:  MOVLT           R0, R9
587D62:  LDR             R1, [SP,#0xA0+var_7C]
587D64:  ADD             R0, R1
587D66:  ADD.W           R1, R3, R0,LSL#3; CPtrList *
587D6A:  MOV             R0, R11; this
587D6C:  MOV             R3, R5; CMatrix *
587D6E:  BLX             j__ZN8CVehicle18BladeColSectorListER8CPtrListR9CColModelR7CMatrixsf; CVehicle::BladeColSectorList(CPtrList &,CColModel &,CMatrix &,short,float)
587D72:  LDR             R1, [SP,#0xA0+var_80]
587D74:  AND.W           R0, R9, #0xF
587D78:  MOV             R4, R5
587D7A:  MOV             R2, R6; CColModel *
587D7C:  ORRS            R0, R1
587D7E:  LDR             R1, [SP,#0xA0+var_84]
587D80:  MOV             R3, R4; CMatrix *
587D82:  VSTR            S16, [SP,#0xA0+var_9C]
587D86:  ADD.W           R0, R0, R0,LSL#1
587D8A:  STR.W           R10, [SP,#0xA0+var_A0]; __int16
587D8E:  ADD.W           R5, R1, R0,LSL#2
587D92:  MOV             R0, R11; this
587D94:  MOV             R1, R5; CPtrList *
587D96:  BLX             j__ZN8CVehicle18BladeColSectorListER8CPtrListR9CColModelR7CMatrixsf; CVehicle::BladeColSectorList(CPtrList &,CColModel &,CMatrix &,short,float)
587D9A:  MOVS            R0, #0
587D9C:  ADDS            R1, R5, #4; CPtrList *
587D9E:  STR.W           R10, [SP,#0xA0+var_A0]; __int16
587DA2:  MOV             R2, R6; CColModel *
587DA4:  STR             R0, [SP,#0xA0+var_9C]; float
587DA6:  MOV             R0, R11; this
587DA8:  MOV             R3, R4; CMatrix *
587DAA:  BLX             j__ZN8CVehicle18BladeColSectorListER8CPtrListR9CColModelR7CMatrixsf; CVehicle::BladeColSectorList(CPtrList &,CColModel &,CMatrix &,short,float)
587DAE:  ADD.W           R1, R5, #8; CPtrList *
587DB2:  MOV             R5, R4
587DB4:  MOV             R0, R11; this
587DB6:  MOV             R2, R6; CColModel *
587DB8:  MOV             R3, R5; CMatrix *
587DBA:  VSTR            S16, [SP,#0xA0+var_9C]
587DBE:  STR.W           R10, [SP,#0xA0+var_A0]; __int16
587DC2:  BLX             j__ZN8CVehicle18BladeColSectorListER8CPtrListR9CColModelR7CMatrixsf; CVehicle::BladeColSectorList(CPtrList &,CColModel &,CMatrix &,short,float)
587DC6:  LDR             R3, [SP,#0xA0+var_88]
587DC8:  ADD.W           R0, R9, #1
587DCC:  CMP             R9, R8
587DCE:  MOV             R9, R0
587DD0:  BLT             loc_587D4C
587DD2:  LDR             R2, [SP,#0xA0+var_8C]
587DD4:  LDR             R1, [SP,#0xA0+var_94]
587DD6:  ADDS            R0, R2, #1
587DD8:  STR             R0, [SP,#0xA0+var_8C]
587DDA:  CMP             R2, R1
587DDC:  BLT             loc_587D26
587DDE:  LDR             R0, =(word_A13094 - 0x587DE8)
587DE0:  MOVS            R2, #0
587DE2:  LDR             R1, =(unk_A13064 - 0x587DEA)
587DE4:  ADD             R0, PC; word_A13094
587DE6:  ADD             R1, PC; unk_A13064
587DE8:  STRH            R2, [R0]
587DEA:  STR             R2, [R0,#(dword_A1309C - 0xA13094)]
587DEC:  MOVS            R0, #0
587DEE:  STR             R2, [R1,#(dword_A13090 - 0xA13064)]
587DF0:  ADD             SP, SP, #0x58 ; 'X'
587DF2:  VPOP            {D8-D12}
587DF6:  ADD             SP, SP, #4
587DF8:  POP.W           {R8-R11}
587DFC:  POP             {R4-R7,PC}
