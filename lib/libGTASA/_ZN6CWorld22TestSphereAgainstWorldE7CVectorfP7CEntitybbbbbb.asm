; =========================================================
; Game Engine Function: _ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb
; Address            : 0x42AE38 - 0x42B086
; =========================================================

42AE38:  PUSH            {R4-R7,LR}
42AE3A:  ADD             R7, SP, #0xC
42AE3C:  PUSH.W          {R8-R11}
42AE40:  SUB             SP, SP, #4
42AE42:  VPUSH           {D8-D11}
42AE46:  SUB             SP, SP, #0x40
42AE48:  VMOV            S16, R3
42AE4C:  VLDR            S20, =50.0
42AE50:  VMOV            S18, R0
42AE54:  VLDR            S22, =60.0
42AE58:  STR             R0, [SP,#0x80+var_48]
42AE5A:  MOV             R4, R1
42AE5C:  VSUB.F32        S0, S18, S16
42AE60:  STR             R2, [SP,#0x80+var_68]
42AE62:  VDIV.F32        S0, S0, S20
42AE66:  VADD.F32        S0, S0, S22
42AE6A:  VMOV            R0, S0; x
42AE6E:  BLX             floorf
42AE72:  VMOV            S0, R4
42AE76:  STR             R4, [SP,#0x80+var_44]
42AE78:  VADD.F32        S4, S18, S16
42AE7C:  VSUB.F32        S2, S0, S16
42AE80:  VADD.F32        S0, S0, S16
42AE84:  VDIV.F32        S4, S4, S20
42AE88:  VDIV.F32        S2, S2, S20
42AE8C:  VADD.F32        S2, S2, S22
42AE90:  VDIV.F32        S0, S0, S20
42AE94:  VMOV            R1, S2
42AE98:  VADD.F32        S4, S4, S22
42AE9C:  VMOV            S20, R0
42AEA0:  VADD.F32        S18, S0, S22
42AEA4:  VMOV            R4, S4
42AEA8:  MOV             R0, R1; x
42AEAA:  BLX             floorf
42AEAE:  VMOV            S22, R0
42AEB2:  MOV             R0, R4; x
42AEB4:  BLX             floorf
42AEB8:  MOV             R4, R0
42AEBA:  VMOV            R0, S18; x
42AEBE:  BLX             floorf
42AEC2:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42AED0)
42AEC4:  VMOV            S0, R0
42AEC8:  VMOV            S2, R4
42AECC:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42AECE:  VCVT.S32.F32    S0, S0
42AED2:  VCVT.S32.F32    S18, S2
42AED6:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42AED8:  LDRH            R0, [R1]; this
42AEDA:  VCVT.S32.F32    S2, S22
42AEDE:  VCVT.S32.F32    S20, S20
42AEE2:  MOVW            R1, #0xFFFF
42AEE6:  VMOV            R5, S0
42AEEA:  CMP             R0, R1
42AEEC:  VMOV            R6, S2
42AEF0:  BEQ             loc_42AEF6
42AEF2:  ADDS            R0, #1
42AEF4:  B               loc_42AEFC
42AEF6:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42AEFA:  MOVS            R0, #1
42AEFC:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42AF06)
42AEFE:  MOVS            R4, #0
42AF00:  CMP             R6, R5
42AF02:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42AF04:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42AF06:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
42AF08:  BGT.W           loc_42B076
42AF0C:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42AF1A)
42AF0E:  VMOV            R1, S20
42AF12:  VMOV            R8, S18
42AF16:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42AF18:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42AF1A:  STR             R0, [SP,#0x80+var_54]
42AF1C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42AF22)
42AF1E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42AF20:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42AF22:  STR             R0, [SP,#0x80+var_58]
42AF24:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42AF2A)
42AF26:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42AF28:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42AF2A:  STR             R0, [SP,#0x80+var_5C]
42AF2C:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42AF32)
42AF2E:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42AF30:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
42AF32:  STR             R0, [SP,#0x80+var_60]
42AF34:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x42AF3A)
42AF36:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
42AF38:  LDR             R0, [R0]; CWorld::ms_aSectors ...
42AF3A:  STR             R0, [SP,#0x80+var_64]
42AF3C:  STRD.W          R5, R1, [SP,#0x80+var_70]
42AF40:  LDR             R5, [SP,#0x80+var_68]
42AF42:  CMP             R1, R8
42AF44:  BGT.W           loc_42B062
42AF48:  MOV             R1, R6
42AF4A:  CMP             R1, #0
42AF4C:  MOV.W           R0, #0
42AF50:  MOV.W           R2, #0x77 ; 'w'
42AF54:  IT GT
42AF56:  MOVGT           R0, R1
42AF58:  CMP             R0, #0x77 ; 'w'
42AF5A:  IT GE
42AF5C:  MOVGE           R0, R2
42AF5E:  LDR.W           R11, [SP,#0x80+var_6C]
42AF62:  RSB.W           R0, R0, R0,LSL#4
42AF66:  LSLS            R0, R0, #3
42AF68:  STR             R0, [SP,#0x80+var_4C]
42AF6A:  LSLS            R0, R1, #4
42AF6C:  UXTB            R0, R0
42AF6E:  STR             R0, [SP,#0x80+var_50]
42AF70:  CMP.W           R11, #0
42AF74:  MOV.W           R0, #0
42AF78:  IT GT
42AF7A:  MOVGT           R0, R11
42AF7C:  MOVS            R1, #0x77 ; 'w'
42AF7E:  CMP             R0, #0x77 ; 'w'
42AF80:  IT GE
42AF82:  MOVGE           R0, R1
42AF84:  LDR             R1, [SP,#0x80+var_4C]
42AF86:  ADD.W           R9, R0, R1
42AF8A:  LDR             R0, [R7,#arg_4]
42AF8C:  CMP             R0, #1
42AF8E:  BNE             loc_42AFAE
42AF90:  LDR             R0, [R7,#arg_0]
42AF92:  MOV             R3, R5
42AF94:  STRD.W          R0, R4, [SP,#0x80+var_7C]
42AF98:  LDR             R0, [SP,#0x80+var_54]
42AF9A:  VSTR            S16, [SP,#0x80+var_80]
42AF9E:  LDRD.W          R1, R2, [SP,#0x80+var_48]
42AFA2:  ADD.W           R0, R0, R9,LSL#3
42AFA6:  BLX             j__ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb; CWorld::TestSphereAgainstSectorList(CPtrList &,CVector,float,CEntity *,bool)
42AFAA:  CMP             R0, #0
42AFAC:  BNE             loc_42B074
42AFAE:  LDR             R1, [SP,#0x80+var_50]
42AFB0:  AND.W           R0, R11, #0xF
42AFB4:  ORR.W           R10, R0, R1
42AFB8:  LDR             R0, [R7,#arg_8]
42AFBA:  CMP             R0, #1
42AFBC:  BNE             loc_42AFE0
42AFBE:  LDR             R0, [R7,#arg_0]
42AFC0:  MOV             R3, R5
42AFC2:  STRD.W          R0, R4, [SP,#0x80+var_7C]
42AFC6:  ADD.W           R0, R10, R10,LSL#1
42AFCA:  LDR             R1, [SP,#0x80+var_58]
42AFCC:  VSTR            S16, [SP,#0x80+var_80]
42AFD0:  ADD.W           R0, R1, R0,LSL#2
42AFD4:  LDRD.W          R1, R2, [SP,#0x80+var_48]
42AFD8:  BLX             j__ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb; CWorld::TestSphereAgainstSectorList(CPtrList &,CVector,float,CEntity *,bool)
42AFDC:  CMP             R0, #0
42AFDE:  BNE             loc_42B074
42AFE0:  LDR             R0, [R7,#arg_C]
42AFE2:  CMP             R0, #1
42AFE4:  BNE             loc_42B008
42AFE6:  LDR             R0, [R7,#arg_0]
42AFE8:  MOV             R3, R5
42AFEA:  STRD.W          R0, R4, [SP,#0x80+var_7C]
42AFEE:  ADD.W           R0, R10, R10,LSL#1
42AFF2:  LDR             R1, [SP,#0x80+var_5C]
42AFF4:  VSTR            S16, [SP,#0x80+var_80]
42AFF8:  ADD.W           R0, R1, R0,LSL#2
42AFFC:  LDRD.W          R1, R2, [SP,#0x80+var_48]
42B000:  ADDS            R0, #4
42B002:  BLX             j__ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb; CWorld::TestSphereAgainstSectorList(CPtrList &,CVector,float,CEntity *,bool)
42B006:  CBNZ            R0, loc_42B074
42B008:  LDR             R0, [R7,#arg_10]
42B00A:  CMP             R0, #1
42B00C:  BNE             loc_42B032
42B00E:  LDR             R0, [R7,#arg_0]
42B010:  MOV             R3, R5
42B012:  STR             R0, [SP,#0x80+var_7C]
42B014:  LDR             R0, [R7,#arg_18]
42B016:  STR             R0, [SP,#0x80+var_78]
42B018:  ADD.W           R0, R10, R10,LSL#1
42B01C:  LDR             R1, [SP,#0x80+var_60]
42B01E:  VSTR            S16, [SP,#0x80+var_80]
42B022:  ADD.W           R0, R1, R0,LSL#2
42B026:  LDRD.W          R1, R2, [SP,#0x80+var_48]
42B02A:  ADDS            R0, #8
42B02C:  BLX             j__ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb; CWorld::TestSphereAgainstSectorList(CPtrList &,CVector,float,CEntity *,bool)
42B030:  CBNZ            R0, loc_42B074
42B032:  LDR             R0, [R7,#arg_14]
42B034:  CMP             R0, #1
42B036:  BNE             loc_42B056
42B038:  LDR             R0, [R7,#arg_0]
42B03A:  MOV             R3, R5
42B03C:  STRD.W          R0, R4, [SP,#0x80+var_7C]
42B040:  LDR             R0, [SP,#0x80+var_64]
42B042:  VSTR            S16, [SP,#0x80+var_80]
42B046:  ADD.W           R0, R0, R9,LSL#3
42B04A:  LDRD.W          R1, R2, [SP,#0x80+var_48]
42B04E:  ADDS            R0, #4
42B050:  BLX             j__ZN6CWorld27TestSphereAgainstSectorListER8CPtrList7CVectorfP7CEntityb; CWorld::TestSphereAgainstSectorList(CPtrList &,CVector,float,CEntity *,bool)
42B054:  CBNZ            R0, loc_42B074
42B056:  ADD.W           R0, R11, #1
42B05A:  CMP             R11, R8
42B05C:  MOV             R11, R0
42B05E:  BLT.W           loc_42AF70
42B062:  LDR             R5, [SP,#0x80+var_70]
42B064:  ADDS            R0, R6, #1
42B066:  LDR             R1, [SP,#0x80+var_6C]
42B068:  CMP             R6, R5
42B06A:  MOV             R6, R0
42B06C:  BLT.W           loc_42AF40
42B070:  MOVS            R4, #0
42B072:  B               loc_42B076
42B074:  MOV             R4, R0
42B076:  MOV             R0, R4
42B078:  ADD             SP, SP, #0x40 ; '@'
42B07A:  VPOP            {D8-D11}
42B07E:  ADD             SP, SP, #4
42B080:  POP.W           {R8-R11}
42B084:  POP             {R4-R7,PC}
