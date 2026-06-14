; =========================================================
; Game Engine Function: _ZN6CWorld27FindObjectsIntersectingCubeERK7CVectorS2_PssPP7CEntitybbbbb
; Address            : 0x4298EC - 0x429B14
; =========================================================

4298EC:  PUSH            {R4-R7,LR}
4298EE:  ADD             R7, SP, #0xC
4298F0:  PUSH.W          {R8-R11}
4298F4:  SUB             SP, SP, #4
4298F6:  VPUSH           {D8-D11}
4298FA:  SUB             SP, SP, #0x38
4298FC:  STR             R3, [SP,#0x78+var_44]
4298FE:  MOV             R4, R0
429900:  VLDR            S16, =50.0
429904:  MOV             R8, R2
429906:  VLDR            S0, [R4]
42990A:  MOV             R6, R1
42990C:  VLDR            S20, =60.0
429910:  VDIV.F32        S0, S0, S16
429914:  VADD.F32        S0, S0, S20
429918:  VLDR            S18, [R4,#4]
42991C:  VMOV            R0, S0; x
429920:  BLX             floorf
429924:  VLDR            S0, [R6]
429928:  MOV             R9, R0
42992A:  VDIV.F32        S2, S18, S16
42992E:  VDIV.F32        S0, S0, S16
429932:  VADD.F32        S0, S0, S20
429936:  VLDR            S22, [R6,#4]
42993A:  VADD.F32        S18, S2, S20
42993E:  VMOV            R0, S0; x
429942:  BLX             floorf
429946:  VDIV.F32        S0, S22, S16
42994A:  MOV             R10, R0
42994C:  LDR             R5, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x429952)
42994E:  ADD             R5, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429950:  VMOV            R0, S18; x
429954:  VADD.F32        S0, S0, S20
429958:  VMOV            S18, R9
42995C:  VMOV            R11, S0
429960:  BLX             floorf
429964:  VMOV            S20, R0
429968:  MOV             R0, R11; x
42996A:  BLX             floorf
42996E:  VMOV            S0, R0
429972:  LDR             R0, [R5]; CWorld::ms_nCurrentScanCode ...
429974:  VMOV            S2, R10
429978:  VCVT.S32.F32    S0, S0
42997C:  VCVT.S32.F32    S16, S2
429980:  VCVT.S32.F32    S2, S20
429984:  VCVT.S32.F32    S18, S18
429988:  LDRH            R0, [R0]; this
42998A:  VMOV            R1, S0
42998E:  STR             R1, [SP,#0x78+var_70]; CEntity **
429990:  VMOV            R1, S2
429994:  STR             R1, [SP,#0x78+var_68]
429996:  MOVW            R1, #0xFFFF
42999A:  CMP             R0, R1
42999C:  BEQ             loc_4299A2
42999E:  ADDS            R0, #1
4299A0:  B               loc_4299A8
4299A2:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4299A6:  MOVS            R0, #1
4299A8:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4299AE)
4299AA:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4299AC:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
4299AE:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
4299B0:  MOVS            R0, #0
4299B2:  STRH.W          R0, [R8]
4299B6:  LDR             R0, [SP,#0x78+var_70]
4299B8:  LDR             R1, [SP,#0x78+var_68]
4299BA:  CMP             R1, R0
4299BC:  BGT.W           loc_429B06
4299C0:  VMOV            R0, S18
4299C4:  STR             R0, [SP,#0x78+var_6C]
4299C6:  VMOV            R0, S16
4299CA:  STR             R0, [SP,#0x78+var_48]
4299CC:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4299D2)
4299CE:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4299D0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4299D2:  STR             R0, [SP,#0x78+var_54]
4299D4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4299DA)
4299D6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4299D8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4299DA:  STR             R0, [SP,#0x78+var_58]
4299DC:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4299E2)
4299DE:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4299E0:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4299E2:  STR             R0, [SP,#0x78+var_5C]
4299E4:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4299EA)
4299E6:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4299E8:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
4299EA:  STR             R0, [SP,#0x78+var_60]
4299EC:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x4299F2)
4299EE:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
4299F0:  LDR             R0, [R0]; CWorld::ms_aSectors ...
4299F2:  STR             R0, [SP,#0x78+var_64]
4299F4:  LDR             R0, [SP,#0x78+var_6C]
4299F6:  LDR             R1, [SP,#0x78+var_48]
4299F8:  CMP             R0, R1
4299FA:  BGT             loc_429AF8
4299FC:  LDR             R1, [SP,#0x78+var_68]
4299FE:  MOVS            R0, #0
429A00:  MOVS            R2, #0x77 ; 'w'
429A02:  CMP             R1, #0
429A04:  IT GT
429A06:  MOVGT           R0, R1
429A08:  CMP             R0, #0x77 ; 'w'
429A0A:  IT GE
429A0C:  MOVGE           R0, R2
429A0E:  LDR.W           R10, [SP,#0x78+var_6C]
429A12:  RSB.W           R0, R0, R0,LSL#4
429A16:  LSLS            R0, R0, #3
429A18:  STR             R0, [SP,#0x78+var_4C]
429A1A:  LSLS            R0, R1, #4
429A1C:  UXTB            R0, R0
429A1E:  STR             R0, [SP,#0x78+var_50]
429A20:  CMP.W           R10, #0
429A24:  MOV.W           R0, #0
429A28:  IT GT
429A2A:  MOVGT           R0, R10
429A2C:  MOVS            R1, #0x77 ; 'w'
429A2E:  CMP             R0, #0x77 ; 'w'
429A30:  AND.W           R5, R10, #0xF
429A34:  IT GE
429A36:  MOVGE           R0, R1
429A38:  LDR             R1, [SP,#0x78+var_4C]
429A3A:  ADD.W           R11, R0, R1
429A3E:  LDR             R0, [R7,#arg_4]
429A40:  CMP             R0, #1
429A42:  BNE             loc_429A5C
429A44:  LDR             R0, [SP,#0x78+var_44]
429A46:  MOV             R1, R4; CPtrList *
429A48:  STR             R0, [SP,#0x78+var_78]; __int16 *
429A4A:  MOV             R2, R6; CVector *
429A4C:  LDR             R0, [R7,#arg_0]
429A4E:  MOV             R3, R8; CVector *
429A50:  STR             R0, [SP,#0x78+var_74]; __int16
429A52:  LDR             R0, [SP,#0x78+var_54]
429A54:  ADD.W           R0, R0, R11,LSL#3; this
429A58:  BLX             j__ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity; CWorld::FindObjectsIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **)
429A5C:  LDR             R0, [SP,#0x78+var_50]
429A5E:  ORR.W           R9, R5, R0
429A62:  LDR             R0, [R7,#arg_8]
429A64:  CMP             R0, #1
429A66:  BNE             loc_429A84
429A68:  LDR             R0, [SP,#0x78+var_44]
429A6A:  MOV             R2, R6; CVector *
429A6C:  STR             R0, [SP,#0x78+var_78]; __int16 *
429A6E:  MOV             R3, R8; CVector *
429A70:  LDR             R0, [R7,#arg_0]
429A72:  STR             R0, [SP,#0x78+var_74]; __int16
429A74:  ADD.W           R0, R9, R9,LSL#1
429A78:  LDR             R1, [SP,#0x78+var_58]
429A7A:  ADD.W           R0, R1, R0,LSL#2; this
429A7E:  MOV             R1, R4; CPtrList *
429A80:  BLX             j__ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity; CWorld::FindObjectsIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **)
429A84:  LDR             R0, [R7,#arg_C]
429A86:  CMP             R0, #1
429A88:  BNE             loc_429AA8
429A8A:  LDR             R0, [SP,#0x78+var_44]
429A8C:  MOV             R2, R6; CVector *
429A8E:  STR             R0, [SP,#0x78+var_78]; __int16 *
429A90:  MOV             R3, R8; CVector *
429A92:  LDR             R0, [R7,#arg_0]
429A94:  STR             R0, [SP,#0x78+var_74]; __int16
429A96:  ADD.W           R0, R9, R9,LSL#1
429A9A:  LDR             R1, [SP,#0x78+var_5C]
429A9C:  ADD.W           R0, R1, R0,LSL#2
429AA0:  MOV             R1, R4; CPtrList *
429AA2:  ADDS            R0, #4; this
429AA4:  BLX             j__ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity; CWorld::FindObjectsIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **)
429AA8:  LDR             R0, [R7,#arg_10]
429AAA:  CMP             R0, #1
429AAC:  BNE             loc_429ACC
429AAE:  LDR             R0, [SP,#0x78+var_44]
429AB0:  MOV             R2, R6; CVector *
429AB2:  STR             R0, [SP,#0x78+var_78]; __int16 *
429AB4:  MOV             R3, R8; CVector *
429AB6:  LDR             R0, [R7,#arg_0]
429AB8:  STR             R0, [SP,#0x78+var_74]; __int16
429ABA:  ADD.W           R0, R9, R9,LSL#1
429ABE:  LDR             R1, [SP,#0x78+var_60]
429AC0:  ADD.W           R0, R1, R0,LSL#2
429AC4:  MOV             R1, R4; CPtrList *
429AC6:  ADDS            R0, #8; this
429AC8:  BLX             j__ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity; CWorld::FindObjectsIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **)
429ACC:  LDR             R0, [R7,#arg_14]
429ACE:  CMP             R0, #1
429AD0:  BNE             loc_429AEC
429AD2:  LDR             R0, [SP,#0x78+var_44]
429AD4:  MOV             R1, R4; CPtrList *
429AD6:  STR             R0, [SP,#0x78+var_78]; __int16 *
429AD8:  MOV             R2, R6; CVector *
429ADA:  LDR             R0, [R7,#arg_0]
429ADC:  MOV             R3, R8; CVector *
429ADE:  STR             R0, [SP,#0x78+var_74]; __int16
429AE0:  LDR             R0, [SP,#0x78+var_64]
429AE2:  ADD.W           R0, R0, R11,LSL#3
429AE6:  ADDS            R0, #4; this
429AE8:  BLX             j__ZN6CWorld37FindObjectsIntersectingCubeSectorListER8CPtrListRK7CVectorS4_PssPP7CEntity; CWorld::FindObjectsIntersectingCubeSectorList(CPtrList &,CVector const&,CVector const&,short *,short,CEntity **)
429AEC:  LDR             R1, [SP,#0x78+var_48]
429AEE:  ADD.W           R0, R10, #1
429AF2:  CMP             R10, R1
429AF4:  MOV             R10, R0
429AF6:  BLT             loc_429A20
429AF8:  LDR             R2, [SP,#0x78+var_68]
429AFA:  LDR             R1, [SP,#0x78+var_70]
429AFC:  ADDS            R0, R2, #1
429AFE:  STR             R0, [SP,#0x78+var_68]
429B00:  CMP             R2, R1
429B02:  BLT.W           loc_4299F4
429B06:  ADD             SP, SP, #0x38 ; '8'
429B08:  VPOP            {D8-D11}
429B0C:  ADD             SP, SP, #4
429B0E:  POP.W           {R8-R11}
429B12:  POP             {R4-R7,PC}
