; =========================================================
; Game Engine Function: _ZN6CWorld41FindObjectsIntersectingAngledCollisionBoxERK4CBoxRK7CMatrixRK7CVectorffffPssPP7CEntitybbbbb
; Address            : 0x429C34 - 0x429E70
; =========================================================

429C34:  PUSH            {R4-R7,LR}
429C36:  ADD             R7, SP, #0xC
429C38:  PUSH.W          {R8-R11}
429C3C:  SUB             SP, SP, #4
429C3E:  VPUSH           {D8-D9}
429C42:  SUB             SP, SP, #0x38
429C44:  VLDR            S16, =50.0
429C48:  VMOV            S0, R3
429C4C:  VLDR            S18, =60.0
429C50:  MOV             R6, R0
429C52:  VDIV.F32        S0, S0, S16
429C56:  MOV             R11, R2
429C58:  MOV             R5, R1
429C5A:  VADD.F32        S0, S0, S18
429C5E:  VMOV            R0, S0; x
429C62:  BLX             floorf
429C66:  VLDR            S0, [R7,#arg_0]
429C6A:  MOV             R8, R0
429C6C:  VDIV.F32        S0, S0, S16
429C70:  VADD.F32        S0, S0, S18
429C74:  VMOV            R0, S0; x
429C78:  BLX             floorf
429C7C:  VLDR            S0, [R7,#arg_4]
429C80:  VLDR            S2, [R7,#arg_8]
429C84:  VDIV.F32        S0, S0, S16
429C88:  VADD.F32        S0, S0, S18
429C8C:  VDIV.F32        S2, S2, S16
429C90:  VMOV            R1, S0
429C94:  VADD.F32        S16, S2, S18
429C98:  VMOV            S18, R0
429C9C:  MOV             R0, R1; x
429C9E:  BLX             floorf
429CA2:  MOV             R9, R0
429CA4:  VMOV            R0, S16; x
429CA8:  BLX             floorf
429CAC:  VMOV            S2, R0
429CB0:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429CBE)
429CB2:  VMOV            S0, R9
429CB6:  VCVT.S32.F32    S2, S2
429CBA:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429CBC:  VCVT.S32.F32    S16, S0
429CC0:  LDR             R0, [R1]; CWorld::ms_nCurrentScanCode ...
429CC2:  VMOV            S4, R8
429CC6:  LDRH            R0, [R0]; this
429CC8:  VCVT.S32.F32    S0, S18
429CCC:  VCVT.S32.F32    S18, S4
429CD0:  VMOV            R1, S2
429CD4:  STR             R1, [SP,#0x68+var_5C]; CEntity **
429CD6:  VMOV            R1, S0
429CDA:  STR             R1, [SP,#0x68+var_54]
429CDC:  MOVW            R1, #0xFFFF
429CE0:  CMP             R0, R1
429CE2:  BEQ             loc_429CE8
429CE4:  ADDS            R0, #1
429CE6:  B               loc_429CEE
429CE8:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
429CEC:  MOVS            R0, #1
429CEE:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429CF4)
429CF0:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429CF2:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
429CF4:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
429CF6:  MOVS            R0, #0
429CF8:  LDR             R1, [R7,#arg_C]
429CFA:  STRH            R0, [R1]
429CFC:  LDR             R0, [SP,#0x68+var_5C]
429CFE:  LDR             R1, [SP,#0x68+var_54]
429D00:  CMP             R1, R0
429D02:  BGT.W           loc_429E62
429D06:  VMOV            R0, S18
429D0A:  STR             R0, [SP,#0x68+var_58]
429D0C:  VMOV            R0, S16
429D10:  STR             R0, [SP,#0x68+var_34]
429D12:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x429D18)
429D14:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
429D16:  LDR             R0, [R0]; CWorld::ms_aSectors ...
429D18:  STR             R0, [SP,#0x68+var_40]
429D1A:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x429D20)
429D1C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
429D1E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
429D20:  STR             R0, [SP,#0x68+var_44]
429D22:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x429D28)
429D24:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
429D26:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
429D28:  STR             R0, [SP,#0x68+var_48]
429D2A:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x429D30)
429D2C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
429D2E:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
429D30:  STR             R0, [SP,#0x68+var_4C]
429D32:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x429D38)
429D34:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
429D36:  LDR             R0, [R0]; CWorld::ms_aSectors ...
429D38:  STR             R0, [SP,#0x68+var_50]
429D3A:  LDR             R0, [SP,#0x68+var_58]
429D3C:  LDR             R1, [SP,#0x68+var_34]
429D3E:  CMP             R0, R1
429D40:  BGT.W           loc_429E54
429D44:  LDR             R1, [SP,#0x68+var_54]
429D46:  MOVS            R0, #0
429D48:  MOVS            R2, #0x77 ; 'w'
429D4A:  CMP             R1, #0
429D4C:  IT GT
429D4E:  MOVGT           R0, R1
429D50:  CMP             R0, #0x77 ; 'w'
429D52:  IT GE
429D54:  MOVGE           R0, R2
429D56:  LDR.W           R10, [SP,#0x68+var_58]
429D5A:  RSB.W           R0, R0, R0,LSL#4
429D5E:  LSLS            R0, R0, #3
429D60:  STR             R0, [SP,#0x68+var_38]
429D62:  LSLS            R0, R1, #4
429D64:  UXTB            R0, R0
429D66:  STR             R0, [SP,#0x68+var_3C]
429D68:  CMP.W           R10, #0
429D6C:  MOV.W           R0, #0
429D70:  IT GT
429D72:  MOVGT           R0, R10
429D74:  MOVS            R1, #0x77 ; 'w'
429D76:  CMP             R0, #0x77 ; 'w'
429D78:  AND.W           R4, R10, #0xF
429D7C:  IT GE
429D7E:  MOVGE           R0, R1
429D80:  LDR             R1, [SP,#0x68+var_38]
429D82:  ADD.W           R9, R0, R1
429D86:  LDR             R0, [R7,#arg_18]
429D88:  CMP             R0, #1
429D8A:  BNE             loc_429DA8
429D8C:  LDR             R0, [R7,#arg_C]
429D8E:  MOV             R1, R6; CPtrList *
429D90:  STR             R0, [SP,#0x68+var_68]; CVector *
429D92:  MOV             R2, R5; CBox *
429D94:  LDR             R0, [R7,#arg_10]
429D96:  MOV             R3, R11; CMatrix *
429D98:  STR             R0, [SP,#0x68+var_64]; __int16 *
429D9A:  LDR             R0, [R7,#arg_14]
429D9C:  STR             R0, [SP,#0x68+var_60]; __int16
429D9E:  LDR             R0, [SP,#0x68+var_40]
429DA0:  ADD.W           R0, R0, R9,LSL#3; this
429DA4:  BLX             j__ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity; CWorld::FindObjectsIntersectingAngledCollisionBoxSectorList(CPtrList &,CBox const&,CMatrix const&,CVector const&,short *,short,CEntity **)
429DA8:  LDR             R0, [SP,#0x68+var_3C]
429DAA:  ORR.W           R8, R4, R0
429DAE:  LDR             R0, [R7,#arg_1C]
429DB0:  CMP             R0, #1
429DB2:  BNE             loc_429DD4
429DB4:  LDR             R0, [R7,#arg_C]
429DB6:  MOV             R2, R5; CBox *
429DB8:  STR             R0, [SP,#0x68+var_68]; CVector *
429DBA:  MOV             R3, R11; CMatrix *
429DBC:  LDR             R0, [R7,#arg_10]
429DBE:  STR             R0, [SP,#0x68+var_64]; __int16 *
429DC0:  LDR             R0, [R7,#arg_14]
429DC2:  STR             R0, [SP,#0x68+var_60]; __int16
429DC4:  ADD.W           R0, R8, R8,LSL#1
429DC8:  LDR             R1, [SP,#0x68+var_44]
429DCA:  ADD.W           R0, R1, R0,LSL#2; this
429DCE:  MOV             R1, R6; CPtrList *
429DD0:  BLX             j__ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity; CWorld::FindObjectsIntersectingAngledCollisionBoxSectorList(CPtrList &,CBox const&,CMatrix const&,CVector const&,short *,short,CEntity **)
429DD4:  LDR             R0, [R7,#arg_20]
429DD6:  CMP             R0, #1
429DD8:  BNE             loc_429DFC
429DDA:  LDR             R0, [R7,#arg_C]
429DDC:  MOV             R2, R5; CBox *
429DDE:  STR             R0, [SP,#0x68+var_68]; CVector *
429DE0:  MOV             R3, R11; CMatrix *
429DE2:  LDR             R0, [R7,#arg_10]
429DE4:  STR             R0, [SP,#0x68+var_64]; __int16 *
429DE6:  LDR             R0, [R7,#arg_14]
429DE8:  STR             R0, [SP,#0x68+var_60]; __int16
429DEA:  ADD.W           R0, R8, R8,LSL#1
429DEE:  LDR             R1, [SP,#0x68+var_48]
429DF0:  ADD.W           R0, R1, R0,LSL#2
429DF4:  MOV             R1, R6; CPtrList *
429DF6:  ADDS            R0, #4; this
429DF8:  BLX             j__ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity; CWorld::FindObjectsIntersectingAngledCollisionBoxSectorList(CPtrList &,CBox const&,CMatrix const&,CVector const&,short *,short,CEntity **)
429DFC:  LDR             R0, [R7,#arg_24]
429DFE:  CMP             R0, #1
429E00:  BNE             loc_429E24
429E02:  LDR             R0, [R7,#arg_C]
429E04:  MOV             R2, R5; CBox *
429E06:  STR             R0, [SP,#0x68+var_68]; CVector *
429E08:  MOV             R3, R11; CMatrix *
429E0A:  LDR             R0, [R7,#arg_10]
429E0C:  STR             R0, [SP,#0x68+var_64]; __int16 *
429E0E:  LDR             R0, [R7,#arg_14]
429E10:  STR             R0, [SP,#0x68+var_60]; __int16
429E12:  ADD.W           R0, R8, R8,LSL#1
429E16:  LDR             R1, [SP,#0x68+var_4C]
429E18:  ADD.W           R0, R1, R0,LSL#2
429E1C:  MOV             R1, R6; CPtrList *
429E1E:  ADDS            R0, #8; this
429E20:  BLX             j__ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity; CWorld::FindObjectsIntersectingAngledCollisionBoxSectorList(CPtrList &,CBox const&,CMatrix const&,CVector const&,short *,short,CEntity **)
429E24:  LDR             R0, [R7,#arg_28]
429E26:  CMP             R0, #1
429E28:  BNE             loc_429E48
429E2A:  LDR             R0, [R7,#arg_C]
429E2C:  MOV             R1, R6; CPtrList *
429E2E:  STR             R0, [SP,#0x68+var_68]; CVector *
429E30:  MOV             R2, R5; CBox *
429E32:  LDR             R0, [R7,#arg_10]
429E34:  MOV             R3, R11; CMatrix *
429E36:  STR             R0, [SP,#0x68+var_64]; __int16 *
429E38:  LDR             R0, [R7,#arg_14]
429E3A:  STR             R0, [SP,#0x68+var_60]; __int16
429E3C:  LDR             R0, [SP,#0x68+var_50]
429E3E:  ADD.W           R0, R0, R9,LSL#3
429E42:  ADDS            R0, #4; this
429E44:  BLX             j__ZN6CWorld51FindObjectsIntersectingAngledCollisionBoxSectorListER8CPtrListRK4CBoxRK7CMatrixRK7CVectorPssPP7CEntity; CWorld::FindObjectsIntersectingAngledCollisionBoxSectorList(CPtrList &,CBox const&,CMatrix const&,CVector const&,short *,short,CEntity **)
429E48:  LDR             R1, [SP,#0x68+var_34]
429E4A:  ADD.W           R0, R10, #1
429E4E:  CMP             R10, R1
429E50:  MOV             R10, R0
429E52:  BLT             loc_429D68
429E54:  LDR             R2, [SP,#0x68+var_54]
429E56:  LDR             R1, [SP,#0x68+var_5C]
429E58:  ADDS            R0, R2, #1
429E5A:  STR             R0, [SP,#0x68+var_54]
429E5C:  CMP             R2, R1
429E5E:  BLT.W           loc_429D3A
429E62:  ADD             SP, SP, #0x38 ; '8'
429E64:  VPOP            {D8-D9}
429E68:  ADD             SP, SP, #4
429E6A:  POP.W           {R8-R11}
429E6E:  POP             {R4-R7,PC}
