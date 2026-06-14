; =========================================================
; Game Engine Function: _ZN9CPhysical26ProcessCollisionSectorListEii
; Address            : 0x3FF7AC - 0x400BFC
; =========================================================

3FF7AC:  PUSH            {R4-R7,LR}
3FF7AE:  ADD             R7, SP, #0xC
3FF7B0:  PUSH.W          {R8-R11}
3FF7B4:  SUB             SP, SP, #4
3FF7B6:  VPUSH           {D8-D15}
3FF7BA:  SUB             SP, SP, #0x140
3FF7BC:  MOV             R10, R0
3FF7BE:  LDR.W           R0, =(byte_95A3B8 - 0x3FF7CA)
3FF7C2:  MOV             R4, R2
3FF7C4:  MOV             R6, R1
3FF7C6:  ADD             R0, PC; byte_95A3B8
3FF7C8:  LDRB            R0, [R0]
3FF7CA:  DMB.W           ISH
3FF7CE:  TST.W           R0, #1
3FF7D2:  BNE             loc_3FF7EA
3FF7D4:  LDR.W           R0, =(byte_95A3B8 - 0x3FF7DC)
3FF7D8:  ADD             R0, PC; byte_95A3B8 ; __guard *
3FF7DA:  BLX             j___cxa_guard_acquire
3FF7DE:  CBZ             R0, loc_3FF7EA
3FF7E0:  LDR.W           R0, =(byte_95A3B8 - 0x3FF7E8)
3FF7E4:  ADD             R0, PC; byte_95A3B8 ; __guard *
3FF7E6:  BLX             j___cxa_guard_release
3FF7EA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF7FC)
3FF7EE:  MOVS            R1, #0xBF800000
3FF7F4:  ADD.W           R8, SP, #0x1A0+var_78
3FF7F8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FF7FA:  STRD.W          R1, R1, [SP,#0x1A0+var_68]
3FF7FE:  MOVS            R1, #0
3FF800:  STRB.W          R1, [R7,#var_69]
3FF804:  STRB.W          R1, [R7,#var_6A]
3FF808:  STRB.W          R1, [R7,#var_6B]
3FF80C:  STRB.W          R1, [SP,#0x1A0+var_6C]
3FF810:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3FF812:  LDRSH.W         R1, [R10,#0x26]
3FF816:  LDR.W           R0, [R0,R1,LSL#2]
3FF81A:  MOV             R1, R8; CVector *
3FF81C:  LDR             R0, [R0,#0x2C]
3FF81E:  VLDR            S16, [R0,#0x24]
3FF822:  MOV             R0, R10; this
3FF824:  BLX             j__ZNK7CEntity14GetBoundCentreER7CVector; CEntity::GetBoundCentre(CVector &)
3FF828:  CMP             R6, #0
3FF82A:  MOV.W           R1, #0
3FF82E:  IT GT
3FF830:  MOVGT           R1, R6
3FF832:  MOVS            R2, #0x77 ; 'w'
3FF834:  CMP             R1, #0x77 ; 'w'
3FF836:  MOV.W           R3, #0
3FF83A:  IT GE
3FF83C:  MOVGE           R1, R2
3FF83E:  CMP             R4, #0
3FF840:  IT GT
3FF842:  MOVGT           R3, R4
3FF844:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FF856)
3FF848:  CMP             R3, #0x77 ; 'w'
3FF84A:  VMOV.F32        S21, #3.0
3FF84E:  IT GE
3FF850:  MOVGE           R3, R2
3FF852:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
3FF854:  RSB.W           R2, R3, R3,LSL#4
3FF858:  LDR.W           R3, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x3FF866)
3FF85C:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
3FF85E:  VMOV.F32        S30, #1.0
3FF862:  ADD             R3, PC; _ZN6CWorld11ms_aSectorsE_ptr
3FF864:  ADD.W           R1, R1, R2,LSL#3
3FF868:  VMOV.F32        S19, #20.0
3FF86C:  VLDR            S18, =0.0
3FF870:  LDR             R3, [R3]; CWorld::ms_aSectors ...
3FF872:  MOVS            R5, #0
3FF874:  VLDR            S20, =0.2
3FF878:  ADD.W           R1, R3, R1,LSL#3
3FF87C:  STR             R1, [SP,#0x1A0+var_F4]
3FF87E:  AND.W           R1, R6, #0xF
3FF882:  VLDR            S31, =0.6
3FF886:  BFI.W           R1, R4, #4, #4
3FF88A:  MOV             R4, R8
3FF88C:  MOV.W           R8, #4
3FF890:  STR.W           R10, [SP,#0x1A0+var_E4]
3FF894:  ADD.W           R1, R1, R1,LSL#1
3FF898:  ADD.W           R1, R0, R1,LSL#2
3FF89C:  ADDW            R0, R10, #0x484
3FF8A0:  STR             R0, [SP,#0x1A0+var_154]
3FF8A2:  ADD.W           R0, R10, #0x6C ; 'l'
3FF8A6:  STR             R0, [SP,#0x1A0+var_13C]
3FF8A8:  ADD.W           R0, R10, #0x60 ; '`'
3FF8AC:  STR             R0, [SP,#0x1A0+var_140]
3FF8AE:  ADD.W           R0, R10, #0x48 ; 'H'
3FF8B2:  STR             R0, [SP,#0x1A0+var_11C]
3FF8B4:  ADD.W           R0, R10, #0x1C
3FF8B8:  STR             R0, [SP,#0x1A0+var_F0]
3FF8BA:  ADDS            R0, R1, #4
3FF8BC:  STR             R0, [SP,#0x1A0+var_FC]
3FF8BE:  ADD.W           R0, R1, #8
3FF8C2:  STR             R0, [SP,#0x1A0+var_100]
3FF8C4:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF8CE)
3FF8C8:  STR             R1, [SP,#0x1A0+var_F8]
3FF8CA:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FF8CC:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
3FF8CE:  STR             R0, [SP,#0x1A0+var_EC]
3FF8D0:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF8D8)
3FF8D4:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FF8D6:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
3FF8D8:  STR             R0, [SP,#0x1A0+var_110]
3FF8DA:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF8E2)
3FF8DE:  ADD             R0, PC; g_surfaceInfos_ptr
3FF8E0:  LDR             R0, [R0]; g_surfaceInfos
3FF8E2:  STR             R0, [SP,#0x1A0+var_114]
3FF8E4:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF8EC)
3FF8E8:  ADD             R0, PC; g_surfaceInfos_ptr
3FF8EA:  LDR             R0, [R0]; g_surfaceInfos
3FF8EC:  STR             R0, [SP,#0x1A0+var_144]
3FF8EE:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF8F6)
3FF8F2:  ADD             R0, PC; g_surfaceInfos_ptr
3FF8F4:  LDR             R0, [R0]; g_surfaceInfos
3FF8F6:  STR             R0, [SP,#0x1A0+var_14C]
3FF8F8:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF900)
3FF8FC:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr
3FF8FE:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR
3FF900:  STR             R0, [SP,#0x1A0+var_168]
3FF902:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF90A)
3FF906:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr
3FF908:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_TURN_LIMSQR
3FF90A:  STR             R0, [SP,#0x1A0+var_180]
3FF90C:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_MULT_ptr - 0x3FF914)
3FF910:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_MULT_ptr
3FF912:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_MULT
3FF914:  STR             R0, [SP,#0x1A0+var_164]
3FF916:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_MULT_ptr - 0x3FF91E)
3FF91A:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_MULT_ptr
3FF91C:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_MULT
3FF91E:  STR             R0, [SP,#0x1A0+var_118]
3FF920:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF928)
3FF924:  ADD             R0, PC; g_surfaceInfos_ptr
3FF926:  LDR             R0, [R0]; g_surfaceInfos
3FF928:  STR             R0, [SP,#0x1A0+var_104]
3FF92A:  LDR.W           R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x3FF932)
3FF92E:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
3FF930:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
3FF932:  STR             R0, [SP,#0x1A0+var_120]
3FF934:  LDR.W           R0, =(_ZN6CWorld12bSecondShiftE_ptr - 0x3FF93C)
3FF938:  ADD             R0, PC; _ZN6CWorld12bSecondShiftE_ptr
3FF93A:  LDR             R0, [R0]; CWorld::bSecondShift ...
3FF93C:  STR             R0, [SP,#0x1A0+var_124]
3FF93E:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF946)
3FF942:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FF944:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
3FF946:  STR             R0, [SP,#0x1A0+var_128]
3FF948:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF950)
3FF94C:  ADD             R0, PC; g_surfaceInfos_ptr
3FF94E:  LDR             R0, [R0]; g_surfaceInfos
3FF950:  STR             R0, [SP,#0x1A0+var_130]
3FF952:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF95A)
3FF956:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr
3FF958:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR
3FF95A:  STR             R0, [SP,#0x1A0+var_148]
3FF95C:  LDR.W           R0, =(PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF964)
3FF960:  ADD             R0, PC; PHYSICAL_CARCAR_FRICTION_MULT_ptr
3FF962:  LDR             R0, [R0]; PHYSICAL_CARCAR_FRICTION_MULT
3FF964:  STR             R0, [SP,#0x1A0+var_150]
3FF966:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF96E)
3FF96A:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr
3FF96C:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_TURN_LIMSQR
3FF96E:  STR             R0, [SP,#0x1A0+var_158]
3FF970:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF978)
3FF974:  ADD             R0, PC; g_surfaceInfos_ptr
3FF976:  LDR             R0, [R0]; g_surfaceInfos
3FF978:  STR             R0, [SP,#0x1A0+var_134]
3FF97A:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF982)
3FF97E:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr
3FF980:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR
3FF982:  STR             R0, [SP,#0x1A0+var_15C]
3FF984:  LDR.W           R0, =(PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF98C)
3FF988:  ADD             R0, PC; PHYSICAL_CARCAR_FRICTION_MULT_ptr
3FF98A:  LDR             R0, [R0]; PHYSICAL_CARCAR_FRICTION_MULT
3FF98C:  STR             R0, [SP,#0x1A0+var_16C]
3FF98E:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF996)
3FF992:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr
3FF994:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_TURN_LIMSQR
3FF996:  STR             R0, [SP,#0x1A0+var_174]
3FF998:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF9A0)
3FF99C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FF99E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3FF9A0:  STR             R0, [SP,#0x1A0+var_17C]
3FF9A2:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF9AA)
3FF9A6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FF9A8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3FF9AA:  STR             R0, [SP,#0x1A0+var_184]
3FF9AC:  LDR.W           R0, =(_ZN6CWorld12bSecondShiftE_ptr - 0x3FF9B4)
3FF9B0:  ADD             R0, PC; _ZN6CWorld12bSecondShiftE_ptr
3FF9B2:  LDR             R0, [R0]; CWorld::bSecondShift ...
3FF9B4:  STR             R0, [SP,#0x1A0+var_12C]
3FF9B6:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x3FF9BE)
3FF9BA:  ADD             R0, PC; g_surfaceInfos_ptr
3FF9BC:  LDR             R0, [R0]; g_surfaceInfos
3FF9BE:  STR             R0, [SP,#0x1A0+var_138]
3FF9C0:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF9C8)
3FF9C4:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr
3FF9C6:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_SPEED_LIMSQR
3FF9C8:  STR             R0, [SP,#0x1A0+var_160]
3FF9CA:  LDR.W           R0, =(PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF9D2)
3FF9CE:  ADD             R0, PC; PHYSICAL_CARCAR_FRICTION_MULT_ptr
3FF9D0:  LDR             R0, [R0]; PHYSICAL_CARCAR_FRICTION_MULT
3FF9D2:  STR             R0, [SP,#0x1A0+var_170]
3FF9D4:  LDR.W           R0, =(PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF9DC)
3FF9D8:  ADD             R0, PC; PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr
3FF9DA:  LDR             R0, [R0]; PHYSICAL_CAR_FRICTION_TURN_LIMSQR
3FF9DC:  STR             R0, [SP,#0x1A0+var_178]
3FF9DE:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF9E6)
3FF9E2:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
3FF9E4:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
3FF9E6:  STR             R0, [SP,#0x1A0+var_108]
3FF9E8:  MOVS            R0, #0
3FF9EA:  STR             R0, [SP,#0x1A0+var_10C]
3FF9EC:  B.W             loc_400BBA
3FF9F0:  MOVS            R0, #0; jumptable 00400BC2 default case
3FF9F2:  SUB.W           R8, R8, #1
3FF9F6:  LDR.W           R9, [R0]
3FF9FA:  B.W             loc_4006EC
3FF9FE:  MOVS            R0, #1
3FFA00:  STR             R0, [SP,#0x1A0+var_10C]
3FFA02:  B.W             loc_4006EC
3FFA06:  MOVS            R5, #0
3FFA08:  B.W             loc_4006EC
3FFA0C:  LDR             R6, [SP,#0x1A0+var_E4]
3FFA0E:  ADD             R0, SP, #0x1A0+var_D0
3FFA10:  STR             R0, [SP,#0x1A0+var_1A0]; int
3FFA12:  ADD             R0, SP, #0x1A0+var_88
3FFA14:  ADD             R3, SP, #0x1A0+var_64; int
3FFA16:  STR             R0, [SP,#0x1A0+var_19C]; int
3FFA18:  MOV             R0, R6; CEntity *
3FFA1A:  MOV             R1, R11; CEntity *
3FFA1C:  MOV             R2, R5; int
3FFA1E:  BLX             j__ZN9CPhysical17ApplyCollisionAltEP7CEntityR9CColPointRfR7CVectorS6_; CPhysical::ApplyCollisionAlt(CEntity *,CColPoint &,float &,CVector &,CVector &)
3FFA22:  CMP             R0, #1
3FFA24:  BNE             loc_3FFA84
3FFA26:  VLDR            S0, [SP,#0x1A0+var_64]
3FFA2A:  LDRB.W          R0, [R6,#0x3A]
3FFA2E:  LDR             R1, [SP,#0x1A0+var_E8]
3FFA30:  VMAX.F32        D11, D0, D11
3FFA34:  AND.W           R0, R0, #7
3FFA38:  ADDS            R1, #1
3FFA3A:  CMP             R0, #2
3FFA3C:  STR             R1, [SP,#0x1A0+var_E8]
3FFA3E:  ITT EQ
3FFA40:  LDREQ.W         R0, [R6,#0x5A0]
3FFA44:  CMPEQ           R0, #5
3FFA46:  BNE             loc_3FFA50
3FFA48:  LDRB.W          R0, [R5,#0x23]
3FFA4C:  CMP             R0, #0x2B ; '+'
3FFA4E:  BEQ             loc_3FFA84
3FFA50:  VMOV            R1, S0; int
3FFA54:  MOV.W           R0, #0x3F800000
3FFA58:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFA5A:  MOV             R0, R6; CEntity **
3FFA5C:  MOV             R2, R11; int
3FFA5E:  MOV             R3, R5; int
3FFA60:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFA64:  B               loc_3FFA84
3FFA66:  LDRB.W          R0, [SP,#0x1A0+var_6C]
3FFA6A:  CBNZ            R0, loc_3FFA78
3FFA6C:  LDRB.W          R0, [R5,#0x21]
3FFA70:  SUBS            R0, #0xD
3FFA72:  UXTB            R0, R0
3FFA74:  CMP             R0, #3
3FFA76:  BHI             loc_3FFA0C
3FFA78:  LDR             R0, [SP,#0x1A0+var_E4]
3FFA7A:  ADD             R3, SP, #0x1A0+var_64
3FFA7C:  MOV             R1, R11
3FFA7E:  MOV             R2, R5
3FFA80:  BLX             j__ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf; CPhysical::ApplySoftCollision(CEntity *,CColPoint &,float &)
3FFA84:  ADDS            R5, #0x2C ; ','
3FFA86:  SUBS            R4, #1
3FFA88:  BNE             loc_3FFA66
3FFA8A:  B               loc_3FFA9E
3FFA8C:  LDR.W           R5, =(unk_959E38 - 0x3FFA9C)
3FFA90:  VMOV            D11, D9
3FFA94:  MOVS            R0, #0
3FFA96:  MOV             R4, R1
3FFA98:  ADD             R5, PC; unk_959E38
3FFA9A:  STR             R0, [SP,#0x1A0+var_E8]
3FFA9C:  B               loc_3FFA66
3FFA9E:  LDR             R1, [SP,#0x1A0+var_E8]
3FFAA0:  ADD             R4, SP, #0x1A0+var_78
3FFAA2:  LDR.W           R10, [SP,#0x1A0+var_E4]
3FFAA6:  MOVS            R5, #0
3FFAA8:  LSLS            R0, R1, #0x18
3FFAAA:  BEQ.W           loc_4006EC
3FFAAE:  UXTB            R0, R1
3FFAB0:  VMOV            S0, R0
3FFAB4:  ADD             R0, SP, #0x1A0+var_D0
3FFAB6:  VCVT.F32.U32    S0, S0
3FFABA:  VLDR            S7, [SP,#0x1A0+var_88]
3FFABE:  VLDR            S2, [SP,#0x1A0+var_80]
3FFAC2:  VDIV.F32        S12, S30, S0
3FFAC6:  VLDR            S0, [SP,#0x1A0+var_88+4]
3FFACA:  VLDM            R0, {S4-S6}
3FFACE:  VMUL.F32        S14, S12, S0
3FFAD2:  VMUL.F32        Q8, Q1, D6[0]
3FFAD6:  LDR             R0, [SP,#0x1A0+var_11C]
3FFAD8:  VLD1.32         {D18-D19}, [R0]
3FFADC:  VMUL.F32        S12, S12, S2
3FFAE0:  VADD.F32        Q2, Q8, Q9
3FFAE4:  VST1.32         {D4-D5}, [R0]
3FFAE8:  VLDR            S1, [R10,#0x58]
3FFAEC:  VLDR            S3, [R10,#0x5C]
3FFAF0:  VADD.F32        S14, S14, S1
3FFAF4:  VADD.F32        S12, S12, S3
3FFAF8:  VSTR            S14, [R10,#0x58]
3FFAFC:  VSTR            S12, [R10,#0x5C]
3FFB00:  LDR             R0, [SP,#0x1A0+var_120]
3FFB02:  LDRB            R0, [R0]
3FFB04:  CMP             R0, #0
3FFB06:  ITT EQ
3FFB08:  LDRBEQ.W        R0, [R10,#0x3A]
3FFB0C:  CMPEQ           R0, #2
3FFB0E:  BEQ             loc_3FFB58
3FFB10:  LDRB.W          R0, [R11,#0x3A]
3FFB14:  AND.W           R0, R0, #7
3FFB18:  CMP             R0, #4
3FFB1A:  BNE             loc_3FFB4A
3FFB1C:  VCMPE.F32       S22, S19
3FFB20:  VMRS            APSR_nzcv, FPSCR
3FFB24:  BLE             loc_3FFB4A
3FFB26:  LDRB.W          R0, [R11,#0x148]
3FFB2A:  CBZ             R0, loc_3FFB4A
3FFB2C:  VMOV            R1, S22
3FFB30:  LDR.W           R2, =(unk_959E38 - 0x3FFB3E)
3FFB34:  MOVS            R0, #0x37 ; '7'
3FFB36:  STR.W           R10, [SP,#0x1A0+var_1A0]
3FFB3A:  ADD             R2, PC; unk_959E38
3FFB3C:  STR             R0, [SP,#0x1A0+var_19C]
3FFB3E:  ADD.W           R3, R2, #0x10
3FFB42:  MOV             R0, R11
3FFB44:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
3FFB48:  MOVS            R5, #0
3FFB4A:  LDR             R0, [SP,#0x1A0+var_124]
3FFB4C:  LDRB            R0, [R0]
3FFB4E:  CMP             R0, #0
3FFB50:  BNE.W           loc_3FF9FE
3FFB54:  B.W             loc_400BF8
3FFB58:  VABS.F32        S12, S8
3FFB5C:  VCMPE.F32       S12, S20
3FFB60:  VMRS            APSR_nzcv, FPSCR
3FFB64:  BLE             loc_3FFB10
3FFB66:  VABS.F32        S8, S9
3FFB6A:  VCMPE.F32       S8, S20
3FFB6E:  VMRS            APSR_nzcv, FPSCR
3FFB72:  BLE             loc_3FFB10
3FFB74:  LDRB.W          R0, [R10,#0x45]
3FFB78:  LSLS            R0, R0, #0x1F
3FFB7A:  BNE             loc_3FFB10
3FFB7C:  LDR             R0, [SP,#0x1A0+var_188]
3FFB7E:  VLDR            S10, =-0.3
3FFB82:  VMOV            S8, R0
3FFB86:  VMOV.F32        S1, S10
3FFB8A:  VCVT.F32.S32    S8, S8
3FFB8E:  VLDR            S3, [R10,#0x74]
3FFB92:  VMUL.F32        S10, S4, S1
3FFB96:  VMUL.F32        S12, S5, S1
3FFB9A:  VDIV.F32        S14, S30, S8
3FFB9E:  VDIV.F32        S10, S10, S8
3FFBA2:  VDIV.F32        S8, S12, S8
3FFBA6:  VMUL.F32        S4, S7, S1
3FFBAA:  VLDR            S6, [R10,#0x60]
3FFBAE:  VMUL.F32        S0, S0, S1
3FFBB2:  VLDR            S12, [R10,#0x64]
3FFBB6:  VMUL.F32        S2, S2, S1
3FFBBA:  VLDR            S1, [R10,#0x70]
3FFBBE:  VADD.F32        S6, S6, S10
3FFBC2:  VADD.F32        S8, S12, S8
3FFBC6:  VMUL.F32        S4, S14, S4
3FFBCA:  VMUL.F32        S0, S14, S0
3FFBCE:  VMUL.F32        S2, S14, S2
3FFBD2:  VLDR            S14, [R10,#0x6C]
3FFBD6:  VSTR            S6, [R10,#0x60]
3FFBDA:  VSTR            S8, [R10,#0x64]
3FFBDE:  VADD.F32        S4, S4, S14
3FFBE2:  VADD.F32        S0, S0, S1
3FFBE6:  VADD.F32        S2, S2, S3
3FFBEA:  VSTR            S4, [R10,#0x6C]
3FFBEE:  VSTR            S0, [R10,#0x70]
3FFBF2:  VSTR            S2, [R10,#0x74]
3FFBF6:  B               loc_3FFB10
3FFBF8:  DCFS 0.0
3FFBFC:  DCFS 0.2
3FFC00:  DCFS 0.6
3FFC04:  DCFS -0.3
3FFC08:  ADD             R0, SP, #0x1A0+var_68
3FFC0A:  ADD             R3, SP, #0x1A0+var_64; int
3FFC0C:  STR             R0, [SP,#0x1A0+var_1A0]; int
3FFC0E:  MOV             R0, R10; this
3FFC10:  MOV             R1, R11; int
3FFC12:  MOV             R2, R5; int
3FFC14:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
3FFC18:  CMP             R0, #1
3FFC1A:  BNE.W           loc_3FFD88
3FFC1E:  VLDR            S24, [SP,#0x1A0+var_64]
3FFC22:  MOV.W           R0, #0x3F800000
3FFC26:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFC28:  MOV             R0, R10; CEntity **
3FFC2A:  VMOV            R1, S24; int
3FFC2E:  MOV             R2, R11; int
3FFC30:  MOV             R3, R5; int
3FFC32:  VLDR            S26, [SP,#0x1A0+var_68]
3FFC36:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFC3A:  MOVS            R0, #0
3FFC3C:  LDR             R1, [SP,#0x1A0+var_68]; int
3FFC3E:  MOVT            R0, #0xBF80
3FFC42:  MOV             R2, R10; int
3FFC44:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFC46:  MOV             R0, R11; CEntity **
3FFC48:  MOV             R3, R5; int
3FFC4A:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFC4E:  LDR             R0, [SP,#0x1A0+var_130]
3FFC50:  MOV             R1, R5
3FFC52:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
3FFC56:  VMOV            S0, R0
3FFC5A:  LDRB.W          R0, [R10,#0x3A]
3FFC5E:  VMAX.F32        D14, D13, D14
3FFC62:  VDIV.F32        S0, S0, S17
3FFC66:  AND.W           R0, R0, #7
3FFC6A:  CMP             R0, #2
3FFC6C:  VMAX.F32        D11, D12, D11
3FFC70:  BNE             loc_3FFCF0
3FFC72:  LDRB.W          R0, [R11,#0x3A]
3FFC76:  AND.W           R0, R0, #7
3FFC7A:  CMP             R0, #2
3FFC7C:  BNE             loc_3FFCF0
3FFC7E:  VLDR            S2, [R10,#0x48]
3FFC82:  VLDR            S4, [R10,#0x4C]
3FFC86:  VMUL.F32        S2, S2, S2
3FFC8A:  VLDR            S6, [R10,#0x50]
3FFC8E:  VMUL.F32        S4, S4, S4
3FFC92:  LDR             R0, [SP,#0x1A0+var_148]
3FFC94:  VMUL.F32        S6, S6, S6
3FFC98:  VADD.F32        S2, S2, S4
3FFC9C:  VLDR            S4, [R0]
3FFCA0:  VADD.F32        S2, S2, S6
3FFCA4:  VCMPE.F32       S2, S4
3FFCA8:  VMRS            APSR_nzcv, FPSCR
3FFCAC:  BGT             loc_3FFCDE
3FFCAE:  VLDR            S2, [R10,#0x54]
3FFCB2:  VLDR            S4, [R10,#0x58]
3FFCB6:  VMUL.F32        S2, S2, S2
3FFCBA:  VLDR            S6, [R10,#0x5C]
3FFCBE:  VMUL.F32        S4, S4, S4
3FFCC2:  LDR             R0, [SP,#0x1A0+var_158]
3FFCC4:  VMUL.F32        S6, S6, S6
3FFCC8:  VADD.F32        S2, S2, S4
3FFCCC:  VLDR            S4, [R0]
3FFCD0:  VADD.F32        S2, S2, S6
3FFCD4:  VCMPE.F32       S2, S4
3FFCD8:  VMRS            APSR_nzcv, FPSCR
3FFCDC:  BLE             loc_3FFCF0
3FFCDE:  LDR             R0, [SP,#0x1A0+var_150]
3FFCE0:  VLDR            S2, [SP,#0x1A0+var_64]
3FFCE4:  VLDR            S4, [R0]
3FFCE8:  VMUL.F32        S2, S4, S2
3FFCEC:  VMUL.F32        S0, S0, S2
3FFCF0:  LDR             R0, [R6]
3FFCF2:  TST.W           R0, #0x40004
3FFCF6:  BEQ             loc_3FFD16
3FFCF8:  VMOV            R1, S0
3FFCFC:  MOV             R0, R10
3FFCFE:  MOV             R2, R5
3FFD00:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
3FFD04:  CMP             R0, #1
3FFD06:  BNE             loc_3FFD88
3FFD08:  LDR             R0, [SP,#0x1A0+var_F0]
3FFD0A:  MOV             R1, R0
3FFD0C:  LDR             R0, [R1]
3FFD0E:  ORR.W           R0, R0, #8
3FFD12:  STR             R0, [R1]
3FFD14:  B               loc_3FFD88
3FFD16:  VMOV            R2, S0
3FFD1A:  MOV             R0, R10
3FFD1C:  MOV             R1, R11
3FFD1E:  MOV             R3, R5
3FFD20:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
3FFD24:  CMP             R0, #1
3FFD26:  BNE             loc_3FFD88
3FFD28:  LDR             R0, [SP,#0x1A0+var_F0]
3FFD2A:  MOV             R1, R0
3FFD2C:  LDR             R0, [R1]
3FFD2E:  ORR.W           R0, R0, #8
3FFD32:  STR             R0, [R1]
3FFD34:  LDR             R0, [R6]
3FFD36:  ORR.W           R0, R0, #8
3FFD3A:  STR             R0, [R6]
3FFD3C:  B               loc_3FFD88
3FFD3E:  LDRB.W          R0, [SP,#0x1A0+var_6C]
3FFD42:  CBNZ            R0, loc_3FFD52
3FFD44:  LDRB.W          R0, [R5,#0x21]
3FFD48:  SUBS            R0, #0xD
3FFD4A:  UXTB            R0, R0
3FFD4C:  CMP             R0, #3
3FFD4E:  BHI.W           loc_3FFC08
3FFD52:  ADD             R0, SP, #0x1A0+var_68
3FFD54:  ADD             R3, SP, #0x1A0+var_64; int
3FFD56:  STR             R0, [SP,#0x1A0+var_1A0]; int
3FFD58:  MOV             R0, R10; this
3FFD5A:  MOV             R1, R11; int
3FFD5C:  MOV             R2, R5; int
3FFD5E:  BLX             j__ZN9CPhysical18ApplySoftCollisionEPS_R9CColPointRfS3_; CPhysical::ApplySoftCollision(CPhysical*,CColPoint &,float &,float &)
3FFD62:  LDRB.W          R0, [R5,#0x24]
3FFD66:  LDR             R1, [SP,#0x1A0+var_E8]
3FFD68:  SUBS            R0, #0xD
3FFD6A:  ADDS            R1, #1
3FFD6C:  STR             R1, [SP,#0x1A0+var_E8]
3FFD6E:  UXTB            R0, R0
3FFD70:  CMP             R0, #3
3FFD72:  BHI             loc_3FFD88
3FFD74:  MOVS            R0, #0
3FFD76:  LDR             R1, [SP,#0x1A0+var_68]; int
3FFD78:  MOVT            R0, #0xBF80
3FFD7C:  MOV             R2, R10; int
3FFD7E:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFD80:  MOV             R0, R11; CEntity **
3FFD82:  MOV             R3, R5; int
3FFD84:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFD88:  ADDS            R5, #0x2C ; ','
3FFD8A:  SUBS            R4, #1
3FFD8C:  BNE             loc_3FFD3E
3FFD8E:  B               loc_400274
3FFD90:  LDR.W           R0, [R10,#0x12C]
3FFD94:  CMP             R0, R11
3FFD96:  BEQ             loc_3FFD9E
3FFD98:  MOVS            R5, #0
3FFD9A:  B.W             loc_4006EC
3FFD9E:  MOV.W           R0, #0xFFFFFFFF; int
3FFDA2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FFDA6:  MOVS            R5, #0
3FFDA8:  CMP             R0, R10
3FFDAA:  IT EQ
3FFDAC:  STREQ.W         R5, [R10,#0x12C]
3FFDB0:  B.W             loc_4006EC
3FFDB4:  MOVS            R5, #0
3FFDB6:  B.W             loc_4006EC
3FFDBA:  CMP             R2, #0
3FFDBC:  BNE.W           loc_3FFFF4
3FFDC0:  LDR             R2, [SP,#0x1A0+var_140]
3FFDC2:  BIC.W           R0, R0, #8
3FFDC6:  LDR             R1, [SP,#0x1A0+var_F0]
3FFDC8:  VMOV.F64        D14, D9
3FFDCC:  LDR.W           R10, [SP,#0x1A0+var_188]
3FFDD0:  MOV.W           R12, #0
3FFDD4:  MOV             R3, R2
3FFDD6:  MOV             R5, R1
3FFDD8:  LDR             R2, [R3,#8]
3FFDDA:  LDR             R1, [R5,#4]
3FFDDC:  VMOV            S0, R10
3FFDE0:  VLDR            D16, [R3]
3FFDE4:  STR             R2, [SP,#0x1A0+var_C8]
3FFDE6:  VMOV.F64        D11, D9
3FFDEA:  LDR             R2, [SP,#0x1A0+var_13C]
3FFDEC:  VSTR            D16, [SP,#0x1A0+var_D0]
3FFDF0:  VLDR            D16, [R2]
3FFDF4:  LDR             R2, [R2,#8]
3FFDF6:  VCVT.F32.S32    S17, S0
3FFDFA:  STR             R2, [SP,#0x1A0+var_80]
3FFDFC:  VSTR            D16, [SP,#0x1A0+var_88]
3FFE00:  VMOV.I32        Q8, #0
3FFE04:  STRD.W          R0, R1, [R5]
3FFE08:  MOV             R0, R3
3FFE0A:  LDR.W           R5, =(unk_959E38 - 0x3FFE1C)
3FFE0E:  MOVS            R1, #0
3FFE10:  STR.W           R12, [R3,#0x14]
3FFE14:  VST1.32         {D16-D17}, [R0]!
3FFE18:  ADD             R5, PC; unk_959E38
3FFE1A:  STR             R1, [SP,#0x1A0+var_E8]
3FFE1C:  STR.W           R12, [R0]
3FFE20:  B               loc_3FFF5E
3FFE22:  LDR             R4, [SP,#0x1A0+var_E4]
3FFE24:  ADD             R0, SP, #0x1A0+var_68
3FFE26:  ADD             R3, SP, #0x1A0+var_64; int
3FFE28:  STR             R0, [SP,#0x1A0+var_1A0]; int
3FFE2A:  MOV             R1, R11; int
3FFE2C:  MOV             R2, R5; int
3FFE2E:  MOV             R0, R4; this
3FFE30:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
3FFE34:  CMP             R0, #1
3FFE36:  BNE.W           loc_3FFFB6
3FFE3A:  VLDR            S24, [SP,#0x1A0+var_64]
3FFE3E:  MOV.W           R0, #0x3F800000
3FFE42:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFE44:  MOV             R0, R4; CEntity **
3FFE46:  VMOV            R1, S24; int
3FFE4A:  MOV             R2, R11; int
3FFE4C:  MOV             R3, R5; int
3FFE4E:  VLDR            S26, [SP,#0x1A0+var_68]
3FFE52:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFE56:  MOVS            R0, #0
3FFE58:  LDR             R1, [SP,#0x1A0+var_68]; int
3FFE5A:  MOVT            R0, #0xBF80
3FFE5E:  MOV             R2, R4; int
3FFE60:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFE62:  MOV             R0, R11; CEntity **
3FFE64:  MOV             R3, R5; int
3FFE66:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFE6A:  LDR             R0, [SP,#0x1A0+var_138]
3FFE6C:  MOV             R1, R5
3FFE6E:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
3FFE72:  VMOV            S0, R0
3FFE76:  LDRB.W          R0, [R4,#0x3A]
3FFE7A:  VMAX.F32        D14, D13, D14
3FFE7E:  VDIV.F32        S0, S0, S17
3FFE82:  AND.W           R0, R0, #7
3FFE86:  CMP             R0, #2
3FFE88:  VMAX.F32        D11, D12, D11
3FFE8C:  BNE             loc_3FFF10
3FFE8E:  LDRB.W          R0, [R11,#0x3A]
3FFE92:  AND.W           R0, R0, #7
3FFE96:  CMP             R0, #2
3FFE98:  BNE             loc_3FFF10
3FFE9A:  LDR             R0, [SP,#0x1A0+var_E4]
3FFE9C:  VLDR            S2, [R0,#0x48]
3FFEA0:  VLDR            S4, [R0,#0x4C]
3FFEA4:  VMUL.F32        S2, S2, S2
3FFEA8:  VLDR            S6, [R0,#0x50]
3FFEAC:  VMUL.F32        S4, S4, S4
3FFEB0:  LDR             R0, [SP,#0x1A0+var_160]
3FFEB2:  VMUL.F32        S6, S6, S6
3FFEB6:  VADD.F32        S2, S2, S4
3FFEBA:  VLDR            S4, [R0]
3FFEBE:  VADD.F32        S2, S2, S6
3FFEC2:  VCMPE.F32       S2, S4
3FFEC6:  VMRS            APSR_nzcv, FPSCR
3FFECA:  BGT             loc_3FFEFE
3FFECC:  LDR             R0, [SP,#0x1A0+var_E4]
3FFECE:  VLDR            S2, [R0,#0x54]
3FFED2:  VLDR            S4, [R0,#0x58]
3FFED6:  VMUL.F32        S2, S2, S2
3FFEDA:  VLDR            S6, [R0,#0x5C]
3FFEDE:  VMUL.F32        S4, S4, S4
3FFEE2:  LDR             R0, [SP,#0x1A0+var_178]
3FFEE4:  VMUL.F32        S6, S6, S6
3FFEE8:  VADD.F32        S2, S2, S4
3FFEEC:  VLDR            S4, [R0]
3FFEF0:  VADD.F32        S2, S2, S6
3FFEF4:  VCMPE.F32       S2, S4
3FFEF8:  VMRS            APSR_nzcv, FPSCR
3FFEFC:  BLE             loc_3FFF10
3FFEFE:  LDR             R0, [SP,#0x1A0+var_170]
3FFF00:  VLDR            S2, [SP,#0x1A0+var_64]
3FFF04:  VLDR            S4, [R0]
3FFF08:  VMUL.F32        S2, S4, S2
3FFF0C:  VMUL.F32        S0, S0, S2
3FFF10:  LDR             R0, [R6]
3FFF12:  TST.W           R0, #0x40004
3FFF16:  BEQ             loc_3FFF36
3FFF18:  VMOV            R1, S0
3FFF1C:  LDR             R0, [SP,#0x1A0+var_E4]
3FFF1E:  MOV             R2, R5
3FFF20:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
3FFF24:  CMP             R0, #1
3FFF26:  BNE             loc_3FFFB6
3FFF28:  LDR             R0, [SP,#0x1A0+var_F0]
3FFF2A:  MOV             R1, R0
3FFF2C:  LDR             R0, [R1]
3FFF2E:  ORR.W           R0, R0, #8
3FFF32:  STR             R0, [R1]
3FFF34:  B               loc_3FFFB6
3FFF36:  VMOV            R2, S0
3FFF3A:  LDR             R0, [SP,#0x1A0+var_E4]
3FFF3C:  MOV             R1, R11
3FFF3E:  MOV             R3, R5
3FFF40:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
3FFF44:  CMP             R0, #1
3FFF46:  BNE             loc_3FFFB6
3FFF48:  LDR             R0, [SP,#0x1A0+var_F0]
3FFF4A:  MOV             R1, R0
3FFF4C:  LDR             R0, [R1]
3FFF4E:  ORR.W           R0, R0, #8
3FFF52:  STR             R0, [R1]
3FFF54:  LDR             R0, [R6]
3FFF56:  ORR.W           R0, R0, #8
3FFF5A:  STR             R0, [R6]
3FFF5C:  B               loc_3FFFB6
3FFF5E:  LDRB.W          R0, [SP,#0x1A0+var_6C]
3FFF62:  CBNZ            R0, loc_3FFF7E
3FFF64:  LDRB.W          R0, [R5,#0x21]
3FFF68:  SUBS            R0, #0xD
3FFF6A:  UXTB            R0, R0
3FFF6C:  CMP             R0, #4
3FFF6E:  BCC             loc_3FFF7E
3FFF70:  LDRB.W          R0, [R5,#0x24]
3FFF74:  SUBS            R0, #0xD
3FFF76:  UXTB            R0, R0
3FFF78:  CMP             R0, #3
3FFF7A:  BHI.W           loc_3FFE22
3FFF7E:  LDR             R4, [SP,#0x1A0+var_E4]
3FFF80:  ADD             R0, SP, #0x1A0+var_68
3FFF82:  ADD             R3, SP, #0x1A0+var_64; int
3FFF84:  STR             R0, [SP,#0x1A0+var_1A0]; int
3FFF86:  MOV             R1, R11; int
3FFF88:  MOV             R2, R5; int
3FFF8A:  MOV             R0, R4; this
3FFF8C:  BLX             j__ZN9CPhysical18ApplySoftCollisionEPS_R9CColPointRfS3_; CPhysical::ApplySoftCollision(CPhysical*,CColPoint &,float &,float &)
3FFF90:  LDRB.W          R0, [R5,#0x24]
3FFF94:  LDR             R1, [SP,#0x1A0+var_E8]
3FFF96:  SUBS            R0, #0xD
3FFF98:  ADDS            R1, #1
3FFF9A:  STR             R1, [SP,#0x1A0+var_E8]
3FFF9C:  UXTB            R0, R0
3FFF9E:  CMP             R0, #3
3FFFA0:  BHI             loc_3FFFB6
3FFFA2:  MOVS            R0, #0
3FFFA4:  LDR             R1, [SP,#0x1A0+var_68]; int
3FFFA6:  MOVT            R0, #0xBF80
3FFFAA:  MOV             R2, R4; int
3FFFAC:  STR             R0, [SP,#0x1A0+var_1A0]; float
3FFFAE:  MOV             R0, R11; CEntity **
3FFFB0:  MOV             R3, R5; int
3FFFB2:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
3FFFB6:  ADDS            R5, #0x2C ; ','
3FFFB8:  SUBS.W          R10, R10, #1
3FFFBC:  BNE             loc_3FFF5E
3FFFBE:  LDR             R0, [SP,#0x1A0+var_F0]
3FFFC0:  LDR.W           R10, [SP,#0x1A0+var_E4]
3FFFC4:  LDR             R0, [R0]
3FFFC6:  TST.W           R0, #8
3FFFCA:  BNE.W           loc_400274
3FFFCE:  LDR             R1, [SP,#0x1A0+var_F0]
3FFFD0:  ORR.W           R0, R0, #8
3FFFD4:  MOV             R2, R1
3FFFD6:  LDR             R1, [R2,#4]
3FFFD8:  STRD.W          R0, R1, [R2]
3FFFDC:  LDR             R1, [SP,#0x1A0+var_140]
3FFFDE:  VLDR            D16, [SP,#0x1A0+var_D0]
3FFFE2:  LDR             R0, [SP,#0x1A0+var_C8]
3FFFE4:  STR             R0, [R1,#8]
3FFFE6:  VSTR            D16, [R1]
3FFFEA:  VLDR            D16, [SP,#0x1A0+var_88]
3FFFEE:  LDR             R0, [SP,#0x1A0+var_80]
3FFFF0:  LDR             R1, [SP,#0x1A0+var_13C]
3FFFF2:  B               loc_40026E
3FFFF4:  LDR.W           R5, =(unk_959E38 - 0x400004)
3FFFF8:  VMOV.F64        D14, D9
3FFFFC:  LDR             R4, [SP,#0x1A0+var_188]
3FFFFE:  MOVS            R0, #0
400000:  ADD             R5, PC; unk_959E38
400002:  STR             R0, [SP,#0x1A0+var_E8]
400004:  VMOV.F64        D11, D9
400008:  B               loc_400058
40000A:  ADD             R0, SP, #0x1A0+var_68
40000C:  ADD             R3, SP, #0x1A0+var_64; int
40000E:  STR             R0, [SP,#0x1A0+var_1A0]; int
400010:  MOV             R0, R10; this
400012:  MOV             R1, R11; int
400014:  MOV             R2, R5; int
400016:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
40001A:  CMP             R0, #1
40001C:  BNE             loc_4000AC
40001E:  VLDR            S24, [SP,#0x1A0+var_64]
400022:  MOV.W           R0, #0x3F800000
400026:  STR             R0, [SP,#0x1A0+var_1A0]; float
400028:  MOV             R0, R10; CEntity **
40002A:  VMOV            R1, S24; int
40002E:  MOV             R2, R11; int
400030:  MOV             R3, R5; int
400032:  VLDR            S26, [SP,#0x1A0+var_68]
400036:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
40003A:  MOVS            R0, #0
40003C:  LDR             R1, [SP,#0x1A0+var_68]; int
40003E:  MOVT            R0, #0xBF80
400042:  MOV             R2, R10; int
400044:  STR             R0, [SP,#0x1A0+var_1A0]; float
400046:  MOV             R0, R11; CEntity **
400048:  MOV             R3, R5; int
40004A:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
40004E:  VMAX.F32        D14, D13, D14
400052:  VMAX.F32        D11, D12, D11
400056:  B               loc_4000AC
400058:  LDRB.W          R0, [SP,#0x1A0+var_6C]
40005C:  CBNZ            R0, loc_400076
40005E:  LDRB.W          R0, [R5,#0x21]
400062:  SUBS            R0, #0xD
400064:  UXTB            R0, R0
400066:  CMP             R0, #4
400068:  BCC             loc_400076
40006A:  LDRB.W          R0, [R5,#0x24]
40006E:  SUBS            R0, #0xD
400070:  UXTB            R0, R0
400072:  CMP             R0, #3
400074:  BHI             loc_40000A
400076:  ADD             R0, SP, #0x1A0+var_68
400078:  ADD             R3, SP, #0x1A0+var_64; int
40007A:  STR             R0, [SP,#0x1A0+var_1A0]; int
40007C:  MOV             R0, R10; this
40007E:  MOV             R1, R11; int
400080:  MOV             R2, R5; int
400082:  BLX             j__ZN9CPhysical18ApplySoftCollisionEPS_R9CColPointRfS3_; CPhysical::ApplySoftCollision(CPhysical*,CColPoint &,float &,float &)
400086:  LDRB.W          R0, [R5,#0x24]
40008A:  LDR             R1, [SP,#0x1A0+var_E8]
40008C:  SUBS            R0, #0xD
40008E:  ADDS            R1, #1
400090:  STR             R1, [SP,#0x1A0+var_E8]
400092:  UXTB            R0, R0
400094:  CMP             R0, #3
400096:  BHI             loc_4000AC
400098:  MOVS            R0, #0
40009A:  LDR             R1, [SP,#0x1A0+var_68]; int
40009C:  MOVT            R0, #0xBF80
4000A0:  MOV             R2, R10; int
4000A2:  STR             R0, [SP,#0x1A0+var_1A0]; float
4000A4:  MOV             R0, R11; CEntity **
4000A6:  MOV             R3, R5; int
4000A8:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
4000AC:  ADDS            R5, #0x2C ; ','
4000AE:  SUBS            R4, #1
4000B0:  BNE             loc_400058
4000B2:  B               loc_400274
4000B4:  ADD             R0, SP, #0x1A0+var_68
4000B6:  ADD             R3, SP, #0x1A0+var_64; int
4000B8:  STR             R0, [SP,#0x1A0+var_1A0]; int
4000BA:  MOV             R0, R10; this
4000BC:  MOV             R1, R11; int
4000BE:  MOV             R2, R5; int
4000C0:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
4000C4:  CMP             R0, #1
4000C6:  BNE.W           loc_400240
4000CA:  VLDR            S24, [SP,#0x1A0+var_64]
4000CE:  MOV.W           R0, #0x3F800000
4000D2:  STR             R0, [SP,#0x1A0+var_1A0]; float
4000D4:  MOV             R0, R10; CEntity **
4000D6:  VMOV            R1, S24; int
4000DA:  MOV             R2, R11; int
4000DC:  MOV             R3, R5; int
4000DE:  VLDR            S26, [SP,#0x1A0+var_68]
4000E2:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
4000E6:  MOVS            R0, #0
4000E8:  LDR             R1, [SP,#0x1A0+var_68]; int
4000EA:  MOVT            R0, #0xBF80
4000EE:  MOV             R2, R10; int
4000F0:  STR             R0, [SP,#0x1A0+var_1A0]; float
4000F2:  MOV             R0, R11; CEntity **
4000F4:  MOV             R3, R5; int
4000F6:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
4000FA:  LDR             R0, [SP,#0x1A0+var_134]
4000FC:  MOV             R1, R5
4000FE:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400102:  VMOV            S0, R0
400106:  LDRB.W          R0, [R10,#0x3A]
40010A:  VMAX.F32        D14, D13, D14
40010E:  VDIV.F32        S0, S0, S17
400112:  AND.W           R0, R0, #7
400116:  CMP             R0, #2
400118:  VMAX.F32        D11, D12, D11
40011C:  BNE             loc_40019C
40011E:  LDRB.W          R0, [R11,#0x3A]
400122:  AND.W           R0, R0, #7
400126:  CMP             R0, #2
400128:  BNE             loc_40019C
40012A:  VLDR            S2, [R10,#0x48]
40012E:  VLDR            S4, [R10,#0x4C]
400132:  VMUL.F32        S2, S2, S2
400136:  VLDR            S6, [R10,#0x50]
40013A:  VMUL.F32        S4, S4, S4
40013E:  LDR             R0, [SP,#0x1A0+var_15C]
400140:  VMUL.F32        S6, S6, S6
400144:  VADD.F32        S2, S2, S4
400148:  VLDR            S4, [R0]
40014C:  VADD.F32        S2, S2, S6
400150:  VCMPE.F32       S2, S4
400154:  VMRS            APSR_nzcv, FPSCR
400158:  BGT             loc_40018A
40015A:  VLDR            S2, [R10,#0x54]
40015E:  VLDR            S4, [R10,#0x58]
400162:  VMUL.F32        S2, S2, S2
400166:  VLDR            S6, [R10,#0x5C]
40016A:  VMUL.F32        S4, S4, S4
40016E:  LDR             R0, [SP,#0x1A0+var_174]
400170:  VMUL.F32        S6, S6, S6
400174:  VADD.F32        S2, S2, S4
400178:  VLDR            S4, [R0]
40017C:  VADD.F32        S2, S2, S6
400180:  VCMPE.F32       S2, S4
400184:  VMRS            APSR_nzcv, FPSCR
400188:  BLE             loc_40019C
40018A:  LDR             R0, [SP,#0x1A0+var_16C]
40018C:  VLDR            S2, [SP,#0x1A0+var_64]
400190:  VLDR            S4, [R0]
400194:  VMUL.F32        S2, S4, S2
400198:  VMUL.F32        S0, S0, S2
40019C:  LDR             R0, [R6]
40019E:  TST.W           R0, #0x40004
4001A2:  BEQ             loc_4001C2
4001A4:  VMOV            R1, S0
4001A8:  MOV             R0, R10
4001AA:  MOV             R2, R5
4001AC:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
4001B0:  CMP             R0, #1
4001B2:  BNE             loc_400240
4001B4:  LDR             R0, [SP,#0x1A0+var_F0]
4001B6:  MOV             R1, R0
4001B8:  LDR             R0, [R1]
4001BA:  ORR.W           R0, R0, #8
4001BE:  STR             R0, [R1]
4001C0:  B               loc_400240
4001C2:  VMOV            R2, S0
4001C6:  MOV             R0, R10
4001C8:  MOV             R1, R11
4001CA:  MOV             R3, R5
4001CC:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
4001D0:  CMP             R0, #1
4001D2:  BNE             loc_400240
4001D4:  LDR             R0, [SP,#0x1A0+var_F0]
4001D6:  MOV             R1, R0
4001D8:  LDR             R0, [R1]
4001DA:  ORR.W           R0, R0, #8
4001DE:  STR             R0, [R1]
4001E0:  LDR             R0, [R6]
4001E2:  ORR.W           R0, R0, #8
4001E6:  STR             R0, [R6]
4001E8:  B               loc_400240
4001EA:  LDRB.W          R0, [SP,#0x1A0+var_6C]
4001EE:  CBNZ            R0, loc_40020A
4001F0:  LDRB.W          R0, [R5,#0x21]
4001F4:  SUBS            R0, #0xD
4001F6:  UXTB            R0, R0
4001F8:  CMP             R0, #4
4001FA:  BCC             loc_40020A
4001FC:  LDRB.W          R0, [R5,#0x24]
400200:  SUBS            R0, #0xD
400202:  UXTB            R0, R0
400204:  CMP             R0, #3
400206:  BHI.W           loc_4000B4
40020A:  ADD             R0, SP, #0x1A0+var_68
40020C:  ADD             R3, SP, #0x1A0+var_64; int
40020E:  STR             R0, [SP,#0x1A0+var_1A0]; int
400210:  MOV             R0, R10; this
400212:  MOV             R1, R11; int
400214:  MOV             R2, R5; int
400216:  BLX             j__ZN9CPhysical18ApplySoftCollisionEPS_R9CColPointRfS3_; CPhysical::ApplySoftCollision(CPhysical*,CColPoint &,float &,float &)
40021A:  LDRB.W          R0, [R5,#0x24]
40021E:  LDR             R1, [SP,#0x1A0+var_E8]
400220:  SUBS            R0, #0xD
400222:  ADDS            R1, #1
400224:  STR             R1, [SP,#0x1A0+var_E8]
400226:  UXTB            R0, R0
400228:  CMP             R0, #3
40022A:  BHI             loc_400240
40022C:  MOVS            R0, #0
40022E:  LDR             R1, [SP,#0x1A0+var_68]; int
400230:  MOVT            R0, #0xBF80
400234:  MOV             R2, R10; int
400236:  STR             R0, [SP,#0x1A0+var_1A0]; float
400238:  MOV             R0, R11; CEntity **
40023A:  MOV             R3, R5; int
40023C:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400240:  ADDS            R5, #0x2C ; ','
400242:  SUBS            R4, #1
400244:  BNE             loc_4001EA
400246:  LDR             R0, [R6]
400248:  TST.W           R0, #8
40024C:  BNE             loc_400274
40024E:  LDR             R1, [R6,#4]
400250:  ORR.W           R0, R0, #8
400254:  STRD.W          R0, R1, [R6]
400258:  LDR             R1, [SP,#0x1A0+var_18C]
40025A:  VLDR            D16, [SP,#0x1A0+var_D0]
40025E:  LDR             R0, [SP,#0x1A0+var_C8]
400260:  STR             R0, [R1,#8]
400262:  VSTR            D16, [R1]
400266:  LDR             R0, [SP,#0x1A0+var_80]
400268:  LDR             R1, [SP,#0x1A0+var_190]
40026A:  VLDR            D16, [SP,#0x1A0+var_88]
40026E:  STR             R0, [R1,#8]
400270:  VSTR            D16, [R1]
400274:  LDRB.W          R0, [R11,#0x3A]
400278:  AND.W           R0, R0, #7
40027C:  CMP             R0, #3
40027E:  BNE             loc_4002DE
400280:  LDRB.W          R0, [R10,#0x3A]
400284:  AND.W           R0, R0, #7
400288:  CMP             R0, #2
40028A:  BNE             loc_4002DE
40028C:  MOV             R0, R11; this
40028E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
400292:  CMP             R0, #1
400294:  BNE             loc_4002CA
400296:  LDRB            R0, [R6,#1]
400298:  LSLS            R0, R0, #0x1B
40029A:  BPL             loc_4002DE
40029C:  VLDR            S0, [R10,#0x48]
4002A0:  VLDR            S2, [R10,#0x4C]
4002A4:  VMUL.F32        S0, S0, S0
4002A8:  VLDR            S4, [R10,#0x50]
4002AC:  VMUL.F32        S2, S2, S2
4002B0:  VMUL.F32        S4, S4, S4
4002B4:  VADD.F32        S0, S0, S2
4002B8:  VLDR            S2, =0.0025
4002BC:  VADD.F32        S0, S0, S4
4002C0:  VCMPE.F32       S0, S2
4002C4:  VMRS            APSR_nzcv, FPSCR
4002C8:  BLE             loc_4002DE
4002CA:  VMOV            R2, S28; float
4002CE:  MOV             R0, R11; this
4002D0:  MOV             R1, R10; CVehicle *
4002D2:  MOVS            R3, #0; bool
4002D4:  BLX             j__ZN4CPed14KillPedWithCarEP8CVehiclefb; CPed::KillPedWithCar(CVehicle *,float,bool)
4002D8:  MOVS            R5, #0
4002DA:  ADD             R4, SP, #0x1A0+var_78
4002DC:  B               loc_4005AC
4002DE:  LDRB.W          R1, [R10,#0x3A]
4002E2:  ADD             R4, SP, #0x1A0+var_78
4002E4:  LDRB.W          R0, [R11,#0x3A]
4002E8:  MOVS            R5, #0
4002EA:  AND.W           R1, R1, #7
4002EE:  AND.W           R3, R0, #7
4002F2:  CMP             R1, #3
4002F4:  BNE             loc_400376
4002F6:  CMP             R3, #2
4002F8:  ITT EQ
4002FA:  LDREQ.W         R2, [R11,#0x5A4]
4002FE:  CMPEQ           R2, #6
400300:  BNE             loc_400376
400302:  VLDR            S6, [R10,#0xE4]
400306:  VLDR            S0, [R11,#0x48]
40030A:  VLDR            S8, [R10,#0xE8]
40030E:  VLDR            S4, [R11,#0x4C]
400312:  VMUL.F32        S6, S0, S6
400316:  VLDR            S10, [R10,#0xEC]
40031A:  VMUL.F32        S8, S4, S8
40031E:  VLDR            S2, [R11,#0x50]
400322:  VMUL.F32        S10, S2, S10
400326:  VADD.F32        S6, S6, S8
40032A:  VADD.F32        S6, S6, S10
40032E:  VCMPE.F32       S6, S20
400332:  VMRS            APSR_nzcv, FPSCR
400336:  BLE             loc_40034C
400338:  VADD.F32        S0, S22, S22
40033C:  MOV             R0, R10; this
40033E:  MOV             R1, R11; CVehicle *
400340:  MOVS            R3, #0; bool
400342:  VMOV            R2, S0; float
400346:  BLX             j__ZN4CPed14KillPedWithCarEP8CVehiclefb; CPed::KillPedWithCar(CVehicle *,float,bool)
40034A:  B               loc_4005AA
40034C:  LDR             R2, [SP,#0x1A0+var_154]
40034E:  LDRB            R2, [R2,#0xA]
400350:  LSLS            R2, R2, #0x1B
400352:  BPL             loc_400376
400354:  VMUL.F32        S4, S4, S4
400358:  VMUL.F32        S0, S0, S0
40035C:  VMUL.F32        S2, S2, S2
400360:  VADD.F32        S0, S0, S4
400364:  VADD.F32        S0, S0, S2
400368:  VLDR            S2, =0.0005
40036C:  VCMPE.F32       S0, S2
400370:  VMRS            APSR_nzcv, FPSCR
400374:  BGT             loc_400338
400376:  CMP             R3, #4
400378:  BNE             loc_4003B2
40037A:  LDR             R2, [R6]
40037C:  LSLS            R2, R2, #0x1F
40037E:  BEQ             loc_4003B2
400380:  CMP             R1, #2
400382:  BNE             loc_4003B2
400384:  LDRB.W          R0, [R11,#0x148]
400388:  VCMPE.F32       S28, S19
40038C:  VMRS            APSR_nzcv, FPSCR
400390:  BLE             loc_4003FA
400392:  CBZ             R0, loc_4003FA
400394:  VMOV            R1, S28
400398:  LDR.W           R2, =(unk_959E38 - 0x4003A6)
40039C:  MOVS            R0, #0x32 ; '2'
40039E:  STR.W           R10, [SP,#0x1A0+var_1A0]
4003A2:  ADD             R2, PC; unk_959E38
4003A4:  STR             R0, [SP,#0x1A0+var_19C]
4003A6:  ADD.W           R3, R2, #0x10
4003AA:  MOV             R0, R11
4003AC:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4003B0:  B               loc_4005AA
4003B2:  ADD             R0, SP, #0x1A0+var_E0
4003B4:  CMP             R1, #4
4003B6:  BNE.W           loc_4005AC
4003BA:  LDR             R1, [SP,#0x1A0+var_F0]
4003BC:  LDR             R1, [R1]
4003BE:  LSLS            R1, R1, #0x1F
4003C0:  BEQ.W           loc_4005AC
4003C4:  CMP             R3, #2
4003C6:  BNE.W           loc_4005AC
4003CA:  VCMPE.F32       S28, S19
4003CE:  VMRS            APSR_nzcv, FPSCR
4003D2:  BLE             loc_40048C
4003D4:  LDRB.W          R1, [R10,#0x148]
4003D8:  CMP             R1, #0
4003DA:  BEQ             loc_40048C
4003DC:  VMOV            R1, S28
4003E0:  LDR.W           R2, =(unk_959E38 - 0x4003EE)
4003E4:  MOVS            R0, #0x32 ; '2'
4003E6:  STR.W           R11, [SP,#0x1A0+var_1A0]
4003EA:  ADD             R2, PC; unk_959E38
4003EC:  STR             R0, [SP,#0x1A0+var_19C]
4003EE:  ADD.W           R3, R2, #0x10
4003F2:  MOV             R0, R10
4003F4:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4003F8:  B               loc_4005AA
4003FA:  CMP             R0, #0x14
4003FC:  ADD             R0, SP, #0x1A0+var_E0
4003FE:  BCC.W           loc_4005AC
400402:  STRD.W          R5, R5, [SP,#0x1A0+var_90]
400406:  ADD             R5, SP, #0x1A0+var_88
400408:  LDRSH.W         R2, [R11,#0x26]
40040C:  LDR             R1, [SP,#0x1A0+var_17C]
40040E:  LDR.W           R1, [R1,R2,LSL#2]
400412:  MOV             R2, R5
400414:  LDR             R1, [R1,#0x2C]
400416:  VLDR            S0, [R1]
40041A:  VLDR            S6, [R1,#0xC]
40041E:  VLDR            S2, [R1,#4]
400422:  VLDR            S8, [R1,#0x10]
400426:  VSUB.F32        S0, S6, S0
40042A:  VLDR            S4, [R1,#8]
40042E:  VLDR            S10, [R1,#0x14]
400432:  VSUB.F32        S2, S8, S2
400436:  VSUB.F32        S4, S10, S4
40043A:  VSTR            S2, [SP,#0x1A0+var_88+4]
40043E:  VSTR            S0, [SP,#0x1A0+var_88]
400442:  VSTR            S4, [SP,#0x1A0+var_80]
400446:  LDR.W           R1, [R11,#0x14]
40044A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
40044E:  VLDR            D16, [SP,#0x1A0+var_E0]
400452:  LDR             R0, [SP,#0x1A0+var_D8]
400454:  STR             R0, [SP,#0x1A0+var_80]
400456:  VSTR            D16, [SP,#0x1A0+var_88]
40045A:  LDR.W           R0, [R10,#0x14]; CMatrix *
40045E:  VLDR            S0, [SP,#0x1A0+var_80]
400462:  ADD.W           R1, R0, #0x30 ; '0'
400466:  CMP             R0, #0
400468:  IT EQ
40046A:  ADDEQ.W         R1, R10, #4
40046E:  VLDR            S2, [R1,#8]
400472:  VCMPE.F32       S2, S0
400476:  VMRS            APSR_nzcv, FPSCR
40047A:  BLE             loc_400520
40047C:  LDR.W           R2, =(unk_959E38 - 0x40048C)
400480:  MOVS            R0, #0x32 ; '2'
400482:  STR.W           R10, [SP,#0x1A0+var_1A0]
400486:  STR             R0, [SP,#0x1A0+var_19C]
400488:  ADD             R2, PC; unk_959E38
40048A:  B               loc_400556
40048C:  LDRB.W          R1, [R11,#0x148]
400490:  CMP             R1, #0x14
400492:  BCC.W           loc_4005AC
400496:  STRD.W          R5, R5, [SP,#0x1A0+var_90]
40049A:  ADD             R5, SP, #0x1A0+var_88
40049C:  LDRSH.W         R1, [R10,#0x26]
4004A0:  LDR             R2, [SP,#0x1A0+var_184]
4004A2:  LDR.W           R1, [R2,R1,LSL#2]
4004A6:  MOV             R2, R5
4004A8:  LDR             R1, [R1,#0x2C]
4004AA:  VLDR            S0, [R1]
4004AE:  VLDR            S6, [R1,#0xC]
4004B2:  VLDR            S2, [R1,#4]
4004B6:  VLDR            S8, [R1,#0x10]
4004BA:  VSUB.F32        S0, S6, S0
4004BE:  VLDR            S4, [R1,#8]
4004C2:  VLDR            S10, [R1,#0x14]
4004C6:  VSUB.F32        S2, S8, S2
4004CA:  VSUB.F32        S4, S10, S4
4004CE:  VSTR            S2, [SP,#0x1A0+var_88+4]
4004D2:  VSTR            S0, [SP,#0x1A0+var_88]
4004D6:  VSTR            S4, [SP,#0x1A0+var_80]
4004DA:  LDR.W           R1, [R10,#0x14]
4004DE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
4004E2:  VLDR            D16, [SP,#0x1A0+var_E0]
4004E6:  LDR             R0, [SP,#0x1A0+var_D8]
4004E8:  STR             R0, [SP,#0x1A0+var_80]
4004EA:  VSTR            D16, [SP,#0x1A0+var_88]
4004EE:  LDR.W           R0, [R11,#0x14]; CMatrix *
4004F2:  VLDR            S0, [SP,#0x1A0+var_80]
4004F6:  ADD.W           R1, R0, #0x30 ; '0'
4004FA:  CMP             R0, #0
4004FC:  IT EQ
4004FE:  ADDEQ.W         R1, R11, #4
400502:  VLDR            S2, [R1,#8]
400506:  VCMPE.F32       S0, S2
40050A:  VMRS            APSR_nzcv, FPSCR
40050E:  BGE             loc_40055E
400510:  LDR.W           R2, =(unk_959E38 - 0x400520)
400514:  MOVS            R0, #0x32 ; '2'
400516:  STR.W           R11, [SP,#0x1A0+var_1A0]
40051A:  STR             R0, [SP,#0x1A0+var_19C]
40051C:  ADD             R2, PC; unk_959E38
40051E:  B               loc_400594
400520:  ADD             R6, SP, #0x1A0+var_D0
400522:  MOV             R1, R6; CMatrix *
400524:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
400528:  MOV             R1, R0
40052A:  MOV             R0, R6
40052C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
400530:  ADD             R0, SP, #0x1A0+var_E0
400532:  MOV             R1, R6
400534:  MOV             R2, R5
400536:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
40053A:  VLDR            S0, [SP,#0x1A0+var_D8]
40053E:  VCMPE.F32       S0, #0.0
400542:  VMRS            APSR_nzcv, FPSCR
400546:  BGE             loc_4005A4
400548:  LDR.W           R2, =(unk_959E38 - 0x400556)
40054C:  MOVS            R0, #0x32 ; '2'
40054E:  STR.W           R10, [SP,#0x1A0+var_1A0]
400552:  ADD             R2, PC; unk_959E38
400554:  STR             R0, [SP,#0x1A0+var_19C]
400556:  ADD.W           R3, R2, #0x10
40055A:  MOV             R0, R11
40055C:  B               loc_40059A
40055E:  ADD             R6, SP, #0x1A0+var_D0
400560:  MOV             R1, R6; CMatrix *
400562:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
400566:  MOV             R1, R0
400568:  MOV             R0, R6
40056A:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
40056E:  ADD             R0, SP, #0x1A0+var_E0
400570:  MOV             R1, R6
400572:  MOV             R2, R5
400574:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
400578:  VLDR            S0, [SP,#0x1A0+var_D8]
40057C:  VCMPE.F32       S0, #0.0
400580:  VMRS            APSR_nzcv, FPSCR
400584:  BGE             loc_4005A4
400586:  LDR.W           R2, =(unk_959E38 - 0x400594)
40058A:  MOVS            R0, #0x32 ; '2'
40058C:  STR.W           R11, [SP,#0x1A0+var_1A0]
400590:  ADD             R2, PC; unk_959E38
400592:  STR             R0, [SP,#0x1A0+var_19C]
400594:  ADD.W           R3, R2, #0x10
400598:  MOV             R0, R10
40059A:  MOVS            R1, #0x42480000
4005A0:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4005A4:  ADD             R0, SP, #0x1A0+var_D0; this
4005A6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4005AA:  MOVS            R5, #0
4005AC:  LDRB.W          R0, [R11,#0x3A]
4005B0:  AND.W           R1, R0, #0xF8
4005B4:  CMP             R1, #0x10
4005B6:  BNE             loc_4005D0
4005B8:  AND.W           R0, R0, #7
4005BC:  CMP             R0, #2
4005BE:  ORR.W           R1, R0, #0x18; CVehicle *
4005C2:  STRB.W          R1, [R11,#0x3A]
4005C6:  BNE             loc_4005D0
4005C8:  MOV             R0, R11; this
4005CA:  BLX             j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
4005CE:  MOVS            R5, #0
4005D0:  LDR             R0, [SP,#0x1A0+var_12C]
4005D2:  LDRB            R0, [R0]
4005D4:  CMP             R0, #0
4005D6:  BNE.W           loc_3FF9FE
4005DA:  LDR             R0, [SP,#0x1A0+var_188]
4005DC:  LDR             R1, [SP,#0x1A0+var_E8]
4005DE:  CMP             R0, R1
4005E0:  BLE.W           loc_4006EC
4005E4:  B               loc_400BF8
4005E6:  ALIGN 4
4005E8:  DCFS 0.0025
4005EC:  LDR.W           R2, [R11,#0x68]
4005F0:  VMOV.F64        D14, D9
4005F4:  LDR             R0, [R6,#4]
4005F6:  BIC.W           R1, R1, #8
4005FA:  LDR.W           R5, =(unk_959E38 - 0x400606)
4005FE:  VLDR            D16, [R11,#0x60]
400602:  ADD             R5, PC; unk_959E38
400604:  STR             R2, [SP,#0x1A0+var_C8]
400606:  VMOV.F64        D11, D9
40060A:  LDR             R2, [SP,#0x1A0+var_188]
40060C:  MOV             R3, R2
40060E:  VSTR            D16, [SP,#0x1A0+var_D0]
400612:  VMOV            S0, R3
400616:  VLDR            D16, [R11,#0x6C]
40061A:  LDR.W           R2, [R11,#0x74]
40061E:  MOV             R4, R3
400620:  VCVT.F32.S32    S17, S0
400624:  STR             R2, [SP,#0x1A0+var_80]
400626:  VSTR            D16, [SP,#0x1A0+var_88]
40062A:  VMOV.I32        Q8, #0
40062E:  STRD.W          R1, R0, [R6]
400632:  ADD.W           R0, R11, #0x60 ; '`'
400636:  STR             R0, [SP,#0x1A0+var_18C]
400638:  MOVS            R1, #0
40063A:  VST1.32         {D16-D17}, [R0]
40063E:  MOVS            R0, #0
400640:  STR.W           R1, [R11,#0x70]
400644:  STR             R0, [SP,#0x1A0+var_E8]
400646:  ADD.W           R0, R11, #0x6C ; 'l'
40064A:  STR.W           R1, [R11,#0x74]
40064E:  STR             R0, [SP,#0x1A0+var_190]
400650:  B               loc_4001EA
400652:  ALIGN 4
400654:  DCD byte_95A3B8 - 0x3FF7CA
400658:  DCD byte_95A3B8 - 0x3FF7DC
40065C:  DCD byte_95A3B8 - 0x3FF7E8
400660:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF7FC
400664:  DCD _ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x3FF856
400668:  DCD _ZN6CWorld11ms_aSectorsE_ptr - 0x3FF866
40066C:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF8CE
400670:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF8D8
400674:  DCD g_surfaceInfos_ptr - 0x3FF8E2
400678:  DCD g_surfaceInfos_ptr - 0x3FF8EC
40067C:  DCD g_surfaceInfos_ptr - 0x3FF8F6
400680:  DCD PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF900
400684:  DCD PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF90A
400688:  DCD PHYSICAL_CAR_FRICTION_MULT_ptr - 0x3FF914
40068C:  DCD PHYSICAL_CAR_FRICTION_MULT_ptr - 0x3FF91E
400690:  DCD g_surfaceInfos_ptr - 0x3FF928
400694:  DCD _ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x3FF932
400698:  DCD _ZN6CWorld12bSecondShiftE_ptr - 0x3FF93C
40069C:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF946
4006A0:  DCD g_surfaceInfos_ptr - 0x3FF950
4006A4:  DCD PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF95A
4006A8:  DCD PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF964
4006AC:  DCD PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF96E
4006B0:  DCD g_surfaceInfos_ptr - 0x3FF978
4006B4:  DCD PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF982
4006B8:  DCD PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF98C
4006BC:  DCD PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF996
4006C0:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF9A0
4006C4:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FF9AA
4006C8:  DCD _ZN6CWorld12bSecondShiftE_ptr - 0x3FF9B4
4006CC:  DCD g_surfaceInfos_ptr - 0x3FF9BE
4006D0:  DCD PHYSICAL_CAR_FRICTION_SPEED_LIMSQR_ptr - 0x3FF9C8
4006D4:  DCD PHYSICAL_CARCAR_FRICTION_MULT_ptr - 0x3FF9D2
4006D8:  DCD PHYSICAL_CAR_FRICTION_TURN_LIMSQR_ptr - 0x3FF9DC
4006DC:  DCD _ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x3FF9E6
4006E0:  DCD unk_959E38 - 0x3FFA9C
4006E4:  DCD unk_959E38 - 0x3FFB3E
4006E8:  DCFS 0.0005
4006EC:  CMP.W           R9, #0
4006F0:  BEQ.W           loc_400BBA
4006F4:  LDRD.W          R11, R9, [R9]
4006F8:  CMP             R11, R10
4006FA:  ITTT NE
4006FC:  MOVNE           R6, R11
4006FE:  LDRNE.W         R0, [R6,#0x1C]!
400702:  ANDSNE.W        R0, R0, #1
400706:  BEQ             loc_4006EC
400708:  LDR             R1, [SP,#0x1A0+var_EC]
40070A:  LDRH.W          R0, [R11,#0x30]
40070E:  LDRH            R1, [R1]
400710:  CMP             R0, R1
400712:  BEQ             loc_4006EC
400714:  VMOV            R2, S16; float
400718:  MOV             R0, R11; this
40071A:  MOV             R1, R4; CVector *
40071C:  BLX             j__ZNK7CEntity13GetIsTouchingERK7CVectorf; CEntity::GetIsTouching(CVector const&,float)
400720:  CMP             R0, #1
400722:  BNE             loc_4007B6
400724:  MOVS            R5, #0
400726:  STRB.W          R5, [R7,#var_69]
40072A:  STRB.W          R5, [R7,#var_6A]
40072E:  STRB.W          R5, [R7,#var_6B]
400732:  STRB.W          R5, [SP,#0x1A0+var_6C]
400736:  LDR.W           R0, [R10,#0x44]
40073A:  BIC.W           R1, R0, #0x1000
40073E:  STR.W           R1, [R10,#0x44]
400742:  LDRB.W          R1, [R11,#0x3A]
400746:  AND.W           R1, R1, #7
40074A:  CMP             R1, #1
40074C:  BNE             loc_4007F6
40074E:  LSLS            R1, R0, #0x19
400750:  STRB.W          R5, [R7,#var_6A]
400754:  BPL             loc_400764
400756:  LDR             R1, [SP,#0x1A0+var_F0]
400758:  LDRB            R1, [R1]
40075A:  LSLS            R1, R1, #0x1B
40075C:  ITT MI
40075E:  MOVMI           R1, #1
400760:  STRBMI.W        R1, [SP,#0x1A0+var_6C]
400764:  LSLS            R1, R0, #0x1D
400766:  BMI             loc_400822
400768:  LDR.W           R1, [R10,#0x100]
40076C:  CBZ             R1, loc_400786
40076E:  LDRB.W          R2, [R1,#0x3A]
400772:  AND.W           R2, R2, #7
400776:  SUBS            R2, #2
400778:  UXTB            R2, R2
40077A:  CMP             R2, #2
40077C:  BHI             loc_400786
40077E:  LDRB.W          R1, [R1,#0x44]
400782:  LSLS            R1, R1, #0x1D
400784:  BMI             loc_400836
400786:  LDR.W           R1, [R10,#0x12C]
40078A:  CMP             R1, R11
40078C:  ITT NE
40078E:  ANDNE.W         R1, R0, #0x82
400792:  CMPNE           R1, #0x80
400794:  BEQ             loc_400836
400796:  LSLS            R0, R0, #7
400798:  BPL             loc_40081C
40079A:  LDRB.W          R0, [R10,#0x3A]
40079E:  MOVS            R1, #8
4007A0:  ORR.W           R0, R1, R0,LSR#3
4007A4:  CMP             R0, #8
4007A6:  BEQ             loc_40081C
4007A8:  MOV             R0, R11; this
4007AA:  BLX             j__ZN7CEntity24DoesNotCollideWithFlyersEv; CEntity::DoesNotCollideWithFlyers(void)
4007AE:  MOVS            R5, #0
4007B0:  CMP             R0, #1
4007B2:  BEQ             loc_400836
4007B4:  B               loc_40081C
4007B6:  LDR.W           R0, [R10,#0x12C]
4007BA:  MOVS            R5, #0
4007BC:  CMP             R0, R11
4007BE:  BNE             loc_4007CC
4007C0:  LDR.W           R0, [R10,#0x100]
4007C4:  CMP             R0, R11
4007C6:  IT NE
4007C8:  STRNE.W         R5, [R10,#0x12C]
4007CC:  LDRB.W          R0, [R11,#0x3A]
4007D0:  AND.W           R0, R0, #7
4007D4:  SUBS            R0, #2
4007D6:  UXTB            R0, R0
4007D8:  CMP             R0, #2
4007DA:  BHI.W           loc_4006EC
4007DE:  LDR.W           R0, [R11,#0x12C]
4007E2:  CMP             R0, R10
4007E4:  BNE.W           loc_4006EC
4007E8:  LDR.W           R0, [R11,#0x100]
4007EC:  CMP             R0, R10
4007EE:  IT NE
4007F0:  STRNE.W         R5, [R11,#0x12C]
4007F4:  B               loc_4006EC
4007F6:  LDR.W           R0, [R10]
4007FA:  SUB.W           R3, R7, #-var_69
4007FE:  MOV             R1, R11
400800:  MOVS            R2, #0
400802:  LDR             R5, [R0,#0x40]
400804:  SUB.W           R0, R7, #-var_6A
400808:  STR             R0, [SP,#0x1A0+var_1A0]
40080A:  SUB.W           R0, R7, #-var_6B
40080E:  STR             R0, [SP,#0x1A0+var_19C]
400810:  ADD             R0, SP, #0x1A0+var_6C
400812:  STR             R0, [SP,#0x1A0+var_198]
400814:  MOV             R0, R10
400816:  BLX             R5
400818:  ADD             R4, SP, #0x1A0+var_78
40081A:  MOVS            R5, #0
40081C:  LDRB.W          R0, [R7,#var_69]
400820:  B               loc_40083C
400822:  LDRB.W          R1, [R10,#0x3A]
400826:  AND.W           R1, R1, #7
40082A:  CMP             R1, #2
40082C:  BNE             loc_400836
40082E:  LDR.W           R1, [R10,#0x5A4]
400832:  CMP             R1, #6
400834:  BNE             loc_400768
400836:  MOVS            R0, #1
400838:  STRB.W          R0, [R7,#var_69]
40083C:  LDR             R1, [SP,#0x1A0+var_F0]
40083E:  LDR             R1, [R1]
400840:  LSLS            R1, R1, #0x1F
400842:  BEQ             loc_4008B0
400844:  LDRB.W          R1, [R7,#var_6A]
400848:  ORRS            R1, R0
40084A:  LSLS            R1, R1, #0x18
40084C:  BNE             loc_4008B0
40084E:  LDRB.W          R0, [R11,#0x3A]
400852:  AND.W           R0, R0, #7
400856:  CMP             R0, #1
400858:  BNE             loc_4008EE
40085A:  LDR             R0, [SP,#0x1A0+var_110]
40085C:  MOV             R1, R11
40085E:  LDR.W           R2, =(unk_959E38 - 0x400868)
400862:  LDRH            R0, [R0]
400864:  ADD             R2, PC; unk_959E38
400866:  STRH.W          R0, [R11,#0x30]
40086A:  LDR.W           R0, [R10]
40086E:  LDR             R3, [R0,#0x5C]
400870:  MOV             R0, R10
400872:  BLX             R3
400874:  MOV             R1, R0
400876:  CMP             R1, #1
400878:  BLT.W           loc_3FFA06
40087C:  MOVS            R0, #0
40087E:  STRD.W          R0, R0, [SP,#0x1A0+var_D0]
400882:  STR             R0, [SP,#0x1A0+var_C8]
400884:  STRD.W          R0, R0, [SP,#0x1A0+var_88]
400888:  STR             R0, [SP,#0x1A0+var_80]
40088A:  LDR             R0, [SP,#0x1A0+var_F0]
40088C:  LDRB            R0, [R0]
40088E:  STR             R1, [SP,#0x1A0+var_188]
400890:  LSLS            R0, R0, #0x1C
400892:  BMI.W           loc_3FFA8C
400896:  VMOV            S0, R1
40089A:  LDR.W           R10, =(unk_959E38 - 0x4008AC)
40089E:  VMOV            D11, D9
4008A2:  MOVS            R0, #0
4008A4:  VCVT.F32.S32    S28, S0
4008A8:  ADD             R10, PC; unk_959E38
4008AA:  MOV             R5, R1
4008AC:  STR             R0, [SP,#0x1A0+var_E8]
4008AE:  B               loc_400AD4
4008B0:  LDR             R1, [SP,#0x1A0+var_108]
4008B2:  CMP             R0, #0
4008B4:  LDRH            R1, [R1]
4008B6:  STRH.W          R1, [R11,#0x30]
4008BA:  BNE.W           loc_4006EC
4008BE:  LDR.W           R0, [R10]
4008C2:  MOV             R1, R11
4008C4:  LDR             R2, =(unk_959E38 - 0x4008CC)
4008C6:  LDR             R3, [R0,#0x5C]
4008C8:  ADD             R2, PC; unk_959E38
4008CA:  MOV             R0, R10
4008CC:  BLX             R3
4008CE:  LDRB.W          R1, [R10,#0x46]
4008D2:  LSLS            R1, R1, #0x1F
4008D4:  BEQ             loc_4008E4
4008D6:  CMP             R0, #1
4008D8:  BLT             loc_4008E4
4008DA:  LDRB.W          R1, [R7,#var_6A]
4008DE:  CMP             R1, #0
4008E0:  BEQ.W           loc_400BF8
4008E4:  CMP             R0, #0
4008E6:  BEQ.W           loc_3FFD90
4008EA:  MOVS            R5, #0
4008EC:  B               loc_4006EC
4008EE:  LDR.W           R0, [R11,#0x44]
4008F2:  LSLS            R0, R0, #0x1C
4008F4:  BMI             loc_40085A
4008F6:  LDRB.W          R0, [R7,#var_6B]
4008FA:  CMP             R0, #0
4008FC:  BNE             loc_40085A
4008FE:  LDR             R0, [SP,#0x1A0+var_128]
400900:  MOV             R1, R11
400902:  LDR             R2, =(unk_959E38 - 0x40090A)
400904:  LDRH            R0, [R0]
400906:  ADD             R2, PC; unk_959E38
400908:  STRH.W          R0, [R11,#0x30]
40090C:  LDR.W           R0, [R10]
400910:  LDR             R3, [R0,#0x5C]
400912:  MOV             R0, R10
400914:  BLX             R3
400916:  CMP             R0, #1
400918:  STR             R0, [SP,#0x1A0+var_188]
40091A:  BLT.W           loc_3FFDB4
40091E:  LDR             R0, [SP,#0x1A0+var_F0]
400920:  LDR             R1, [R6]
400922:  LDR             R0, [R0]
400924:  AND.W           R2, R1, #8
400928:  TST.W           R0, #8
40092C:  BNE.W           loc_3FFDBA
400930:  CMP             R2, #0
400932:  BNE.W           loc_4005EC
400936:  LDR             R0, [SP,#0x1A0+var_188]
400938:  VMOV.F64        D14, D9
40093C:  LDR             R5, =(unk_959E38 - 0x400944)
40093E:  MOVS            R1, #0
400940:  ADD             R5, PC; unk_959E38
400942:  MOV             R4, R0
400944:  VMOV            S0, R0
400948:  VMOV.F64        D11, D9
40094C:  VCVT.F32.S32    S17, S0
400950:  STR             R1, [SP,#0x1A0+var_E8]
400952:  B.W             loc_3FFD3E
400956:  VLDR            S24, [SP,#0x1A0+var_64]
40095A:  MOV             R2, R11; int
40095C:  LDR             R0, [SP,#0x1A0+var_118]
40095E:  MOV             R3, R10; int
400960:  VMOV            R1, S24; int
400964:  VLDR            S26, [R0]
400968:  MOV.W           R0, #0x3F800000
40096C:  STR             R0, [SP,#0x1A0+var_1A0]; float
40096E:  MOV             R0, R4; CEntity **
400970:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400974:  VMUL.F32        S0, S26, S24
400978:  MOV             R0, R4
40097A:  VMUL.F32        S0, S29, S0
40097E:  VMOV            R1, S0
400982:  B               loc_400B12
400984:  LDR.W           R0, [R4,#0x5A0]
400988:  CMP             R0, #5
40098A:  BNE             loc_4009BE
40098C:  VMOV.F32        S2, S18
400990:  VLDR            S0, [R10,#0x18]
400994:  VCMPE.F32       S0, S31
400998:  VMRS            APSR_nzcv, FPSCR
40099C:  BLE.W           loc_400AB0
4009A0:  LDRB.W          R1, [R10,#0x23]; unsigned int
4009A4:  LDR             R0, [SP,#0x1A0+var_144]; this
4009A6:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
4009AA:  CMP             R0, #3
4009AC:  BEQ             loc_4009D8
4009AE:  LDRB.W          R1, [R10,#0x23]; unsigned int
4009B2:  LDR             R0, [SP,#0x1A0+var_14C]; this
4009B4:  BLX             j__ZN14SurfaceInfos_c16GetAdhesionGroupEj; SurfaceInfos_c::GetAdhesionGroup(uint)
4009B8:  CMP             R0, #4
4009BA:  BNE             loc_4009C6
4009BC:  B               loc_4009D8
4009BE:  LDR.W           R0, [R4,#0x5A4]
4009C2:  CMP             R0, #6
4009C4:  BNE             loc_4009CC
4009C6:  VMOV.F32        S2, S17
4009CA:  B               loc_400AB0
4009CC:  LDRB.W          R0, [R4,#0x3A]
4009D0:  AND.W           R1, R0, #0xF8
4009D4:  CMP             R1, #0x28 ; '('
4009D6:  BNE             loc_4009DE
4009D8:  VMUL.F32        S2, S17, S21
4009DC:  B               loc_400AB0
4009DE:  LDR             R0, [R4,#0x14]
4009E0:  VLDR            S2, =0.3
4009E4:  VLDR            S0, [R0,#0x28]
4009E8:  VCMPE.F32       S0, S2
4009EC:  VMRS            APSR_nzcv, FPSCR
4009F0:  BLE             loc_400A5A
4009F2:  LDR             R2, [SP,#0x1A0+var_E4]
4009F4:  VLDR            S2, [R2,#0x48]
4009F8:  VLDR            S4, [R2,#0x4C]
4009FC:  VMUL.F32        S2, S2, S2
400A00:  VLDR            S6, [R2,#0x50]
400A04:  VMUL.F32        S4, S4, S4
400A08:  LDR             R2, [SP,#0x1A0+var_168]
400A0A:  VMUL.F32        S6, S6, S6
400A0E:  VADD.F32        S2, S2, S4
400A12:  VLDR            S4, [R2]
400A16:  VADD.F32        S2, S2, S6
400A1A:  VCMPE.F32       S2, S4
400A1E:  VMRS            APSR_nzcv, FPSCR
400A22:  BGE             loc_400A5A
400A24:  LDR             R2, [SP,#0x1A0+var_E4]
400A26:  VLDR            S2, [R2,#0x54]
400A2A:  VLDR            S4, [R2,#0x58]
400A2E:  VMUL.F32        S2, S2, S2
400A32:  VLDR            S6, [R2,#0x5C]
400A36:  VMUL.F32        S4, S4, S4
400A3A:  LDR             R2, [SP,#0x1A0+var_180]
400A3C:  VMUL.F32        S6, S6, S6
400A40:  VADD.F32        S2, S2, S4
400A44:  VLDR            S4, [R2]
400A48:  VADD.F32        S2, S2, S6
400A4C:  VCMPE.F32       S2, S4
400A50:  VMOV.F32        S2, S18
400A54:  VMRS            APSR_nzcv, FPSCR
400A58:  BLT             loc_400AB0
400A5A:  CMP             R1, #0x20 ; ' '
400A5C:  BEQ             loc_400A94
400A5E:  VLDR            S2, [R10,#0x10]
400A62:  VLDR            S8, [R0,#0x20]
400A66:  VLDR            S4, [R10,#0x14]
400A6A:  VLDR            S10, [R0,#0x24]
400A6E:  VMUL.F32        S2, S2, S8
400A72:  VLDR            S6, [R10,#0x18]
400A76:  VMUL.F32        S4, S4, S10
400A7A:  VMUL.F32        S0, S6, S0
400A7E:  VADD.F32        S2, S2, S4
400A82:  VADD.F32        S0, S2, S0
400A86:  VLDR            S2, =0.707
400A8A:  VCMPE.F32       S0, S2
400A8E:  VMRS            APSR_nzcv, FPSCR
400A92:  BGE             loc_4009C6
400A94:  LDR             R0, [SP,#0x1A0+var_164]
400A96:  VLDR            S0, [SP,#0x1A0+var_64]
400A9A:  VLDR            S2, [R0]
400A9E:  LDR             R0, [SP,#0x1A0+var_E4]
400AA0:  VMUL.F32        S0, S2, S0
400AA4:  VLDR            S2, [R0,#0x90]
400AA8:  VDIV.F32        S0, S0, S2
400AAC:  VMUL.F32        S2, S17, S0
400AB0:  LDR             R0, [SP,#0x1A0+var_E4]
400AB2:  LDRB.W          R1, [R0,#0x3A]
400AB6:  AND.W           R1, R1, #7
400ABA:  CMP             R1, #2
400ABC:  BNE             loc_400ACE
400ABE:  VADD.F32        S0, S2, S2
400AC2:  LDR.W           R1, [R0,#0x5A4]
400AC6:  CMP             R1, #6
400AC8:  IT EQ
400ACA:  VMOVEQ.F32      S2, S0
400ACE:  VMOV            R1, S2
400AD2:  B               loc_400B12
400AD4:  LDRB.W          R0, [SP,#0x1A0+var_6C]
400AD8:  CBNZ            R0, loc_400AE6
400ADA:  LDRB.W          R0, [R10,#0x21]
400ADE:  SUBS            R0, #0xD
400AE0:  UXTB            R0, R0
400AE2:  CMP             R0, #3
400AE4:  BHI             loc_400B2A
400AE6:  LDR             R0, [SP,#0x1A0+var_E4]
400AE8:  ADD             R3, SP, #0x1A0+var_64
400AEA:  MOV             R1, R11
400AEC:  MOV             R2, R10
400AEE:  BLX             j__ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf; CPhysical::ApplySoftCollision(CEntity *,CColPoint &,float &)
400AF2:  CMP             R0, #1
400AF4:  BNE             loc_400BAE
400AF6:  LDRB.W          R0, [R10,#0x20]
400AFA:  CMP             R0, #0x3C ; '<'
400AFC:  ITT EQ
400AFE:  LDRBEQ.W        R0, [R10,#0x23]
400B02:  CMPEQ           R0, #0x3C ; '<'
400B04:  BEQ             loc_400BAE
400B06:  LDR             R0, [SP,#0x1A0+var_104]
400B08:  MOV             R1, R10
400B0A:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400B0E:  MOV             R1, R0
400B10:  LDR             R0, [SP,#0x1A0+var_E4]
400B12:  MOV             R2, R10
400B14:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
400B18:  CMP             R0, #1
400B1A:  BNE             loc_400BAE
400B1C:  LDR             R0, [SP,#0x1A0+var_F0]
400B1E:  MOV             R1, R0
400B20:  LDR             R0, [R1]
400B22:  ORR.W           R0, R0, #8
400B26:  STR             R0, [R1]
400B28:  B               loc_400BAE
400B2A:  LDR             R4, [SP,#0x1A0+var_E4]
400B2C:  ADD             R0, SP, #0x1A0+var_D0
400B2E:  STR             R0, [SP,#0x1A0+var_1A0]; int
400B30:  ADD             R0, SP, #0x1A0+var_88
400B32:  ADD             R3, SP, #0x1A0+var_64; int
400B34:  STR             R0, [SP,#0x1A0+var_19C]; int
400B36:  MOV             R0, R4; CEntity *
400B38:  MOV             R1, R11; CEntity *
400B3A:  MOV             R2, R10; int
400B3C:  BLX             j__ZN9CPhysical17ApplyCollisionAltEP7CEntityR9CColPointRfR7CVectorS6_; CPhysical::ApplyCollisionAlt(CEntity *,CColPoint &,float &,CVector &,CVector &)
400B40:  CMP             R0, #1
400B42:  BNE             loc_400BAE
400B44:  LDR             R0, [SP,#0x1A0+var_114]
400B46:  MOV             R1, R10
400B48:  VLDR            S24, [SP,#0x1A0+var_64]
400B4C:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400B50:  VMOV            S0, R0
400B54:  LDRB.W          R0, [R4,#0x3A]
400B58:  VMAX.F32        D11, D12, D11
400B5C:  LDR             R1, [SP,#0x1A0+var_E8]
400B5E:  VDIV.F32        S29, S0, S28
400B62:  AND.W           R0, R0, #7
400B66:  CMP             R0, #2
400B68:  ADD.W           R1, R1, #1
400B6C:  STR             R1, [SP,#0x1A0+var_E8]
400B6E:  BNE.W           loc_400956
400B72:  LDR.W           R0, [R4,#0x5A0]
400B76:  CMP             R0, #5
400B78:  BNE             loc_400B86
400B7A:  VMOV.F32        S17, S18
400B7E:  LDRB.W          R0, [R10,#0x23]
400B82:  CMP             R0, #0x2B ; '+'
400B84:  BEQ             loc_400B9C
400B86:  LDR             R1, [SP,#0x1A0+var_64]; int
400B88:  MOV.W           R0, #0x3F800000
400B8C:  STR             R0, [SP,#0x1A0+var_1A0]; float
400B8E:  MOV             R0, R4; CEntity **
400B90:  MOV             R2, R11; int
400B92:  MOV             R3, R10; int
400B94:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400B98:  VMOV.F32        S17, S29
400B9C:  LDRH            R0, [R4,#0x26]
400B9E:  MOVW            R1, #0x1B9
400BA2:  CMP             R0, R1
400BA4:  BNE.W           loc_400984
400BA8:  VMUL.F32        S2, S17, S20
400BAC:  B               loc_400AB0
400BAE:  ADD.W           R10, R10, #0x2C ; ','
400BB2:  SUBS            R5, #1
400BB4:  BNE             loc_400AD4
400BB6:  B.W             loc_3FFA9E
400BBA:  CMP.W           R8, #4; switch 5 cases
400BBE:  BHI.W           def_400BC2; jumptable 00400BC2 default case
400BC2:  TBB.W           [PC,R8]; switch jump
400BC6:  DCB 0xF; jump table for switch statement
400BC7:  DCB 0xC
400BC8:  DCB 9
400BC9:  DCB 6
400BCA:  DCB 3
400BCB:  ALIGN 2
400BCC:  LDR             R0, [SP,#0x1A0+var_F4]; jumptable 00400BC2 case 4
400BCE:  B.W             loc_3FF9F2
400BD2:  LDR             R0, [SP,#0x1A0+var_F8]; jumptable 00400BC2 case 3
400BD4:  B.W             loc_3FF9F2
400BD8:  LDR             R0, [SP,#0x1A0+var_100]; jumptable 00400BC2 case 2
400BDA:  B.W             loc_3FF9F2
400BDE:  LDR             R0, [SP,#0x1A0+var_FC]; jumptable 00400BC2 case 1
400BE0:  B.W             loc_3FF9F2
400BE4:  LDR             R0, [SP,#0x1A0+var_10C]; jumptable 00400BC2 case 0
400BE6:  AND.W           R0, R0, #1
400BEA:  ADD             SP, SP, #0x140
400BEC:  VPOP            {D8-D15}
400BF0:  ADD             SP, SP, #4
400BF2:  POP.W           {R8-R11}
400BF6:  POP             {R4-R7,PC}
400BF8:  MOVS            R0, #1
400BFA:  B               loc_400BE6
