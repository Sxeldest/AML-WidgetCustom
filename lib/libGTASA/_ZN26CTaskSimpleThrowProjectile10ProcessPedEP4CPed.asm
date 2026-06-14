; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectile10ProcessPedEP4CPed
; Address            : 0x4DEA88 - 0x4DEC34
; =========================================================

4DEA88:  PUSH            {R4-R7,LR}
4DEA8A:  ADD             R7, SP, #0xC
4DEA8C:  PUSH.W          {R8,R9,R11}
4DEA90:  SUB             SP, SP, #0x20
4DEA92:  MOV             R4, R1
4DEA94:  MOV             R5, R0
4DEA96:  LDRSB.W         R0, [R4,#0x71C]
4DEA9A:  MOVS            R1, #1
4DEA9C:  MOVS            R6, #1
4DEA9E:  RSB.W           R0, R0, R0,LSL#3
4DEAA2:  ADD.W           R0, R4, R0,LSL#2
4DEAA6:  LDR.W           R0, [R0,#0x5A4]
4DEAAA:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DEAAE:  MOV             R8, R0
4DEAB0:  LDRB            R0, [R5,#8]
4DEAB2:  CBNZ            R0, loc_4DEB2A
4DEAB4:  LDRB.W          R0, [R8,#0x19]
4DEAB8:  LSLS            R0, R0, #0x1F
4DEABA:  BNE             loc_4DEAC0
4DEABC:  MOVS            R6, #1
4DEABE:  B               loc_4DEB2A
4DEAC0:  LDR             R0, [R5,#0xC]
4DEAC2:  CBZ             R0, loc_4DEB20
4DEAC4:  LDRSH.W         R1, [R0,#0x2C]
4DEAC8:  SUB.W           R2, R1, #0xE5
4DEACC:  CMP             R2, #1
4DEACE:  BHI             loc_4DEB28
4DEAD0:  UXTH            R1, R1
4DEAD2:  ADD.W           R2, R8, #0x48 ; 'H'
4DEAD6:  CMP             R1, #0xE6
4DEAD8:  VLDR            S0, [R0,#0x20]
4DEADC:  IT EQ
4DEADE:  ADDEQ.W         R2, R8, #0x54 ; 'T'
4DEAE2:  VLDR            S2, [R2]
4DEAE6:  VCMPE.F32       S0, S2
4DEAEA:  VMRS            APSR_nzcv, FPSCR
4DEAEE:  BLE             loc_4DEB28
4DEAF0:  VLDR            S4, [R0,#0x28]
4DEAF4:  VSUB.F32        S0, S0, S4
4DEAF8:  VCMPE.F32       S0, S2
4DEAFC:  VMRS            APSR_nzcv, FPSCR
4DEB00:  BGT             loc_4DEB28
4DEB02:  LDRB.W          R0, [R0,#0x2E]
4DEB06:  LSLS            R0, R0, #0x1F
4DEB08:  BEQ             loc_4DEB28
4DEB0A:  MOV             R0, R4; this
4DEB0C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DEB10:  CMP             R0, #1
4DEB12:  BNE             loc_4DEB74
4DEB14:  LDRB            R0, [R5,#0xA]
4DEB16:  CBZ             R0, loc_4DEB34
4DEB18:  MOV             R0, R5
4DEB1A:  LDR.W           R1, [R0,#0x20]!
4DEB1E:  B               loc_4DEB46
4DEB20:  MOV             R0, R5; this
4DEB22:  MOV             R1, R4; CPed *
4DEB24:  BLX             j__ZN26CTaskSimpleThrowProjectile9StartAnimEP4CPed; CTaskSimpleThrowProjectile::StartAnim(CPed *)
4DEB28:  MOVS            R6, #0
4DEB2A:  MOV             R0, R6
4DEB2C:  ADD             SP, SP, #0x20 ; ' '
4DEB2E:  POP.W           {R8,R9,R11}
4DEB32:  POP             {R4-R7,PC}
4DEB34:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DEB3A)
4DEB36:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DEB38:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
4DEB3A:  MOV             R0, R5
4DEB3C:  LDR.W           R2, [R0,#0x20]!
4DEB40:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4DEB42:  SUBS            R1, R1, R2
4DEB44:  STR             R1, [R0]
4DEB46:  MOVW            R2, #0x216
4DEB4A:  CMP             R1, R2
4DEB4C:  ITT GE
4DEB4E:  MOVWGE          R1, #0x215
4DEB52:  STRGE           R1, [R0]
4DEB54:  VLDR            S2, =50.0
4DEB58:  VMOV            S0, R1
4DEB5C:  VCVT.F32.S32    S0, S0
4DEB60:  LDR.W           R0, [R4,#0x444]
4DEB64:  VMUL.F32        S0, S0, S2
4DEB68:  VLDR            S2, =1000.0
4DEB6C:  VDIV.F32        S0, S0, S2
4DEB70:  VSTR            S0, [R0,#0x2C]
4DEB74:  LDR             R0, [R5,#0x10]
4DEB76:  CBZ             R0, loc_4DEB90
4DEB78:  LDR             R1, [R0,#0x14]
4DEB7A:  ADD.W           R2, R1, #0x30 ; '0'
4DEB7E:  CMP             R1, #0
4DEB80:  IT EQ
4DEB82:  ADDEQ           R2, R0, #4
4DEB84:  VLDR            D16, [R2]
4DEB88:  LDR             R0, [R2,#8]
4DEB8A:  STR             R0, [R5,#0x1C]
4DEB8C:  VSTR            D16, [R5,#0x14]
4DEB90:  VLDR            D16, [R8,#0x24]
4DEB94:  ADD.W           R9, R5, #0x14
4DEB98:  LDR.W           R0, [R8,#0x2C]
4DEB9C:  STR             R0, [SP,#0x38+var_20]
4DEB9E:  VSTR            D16, [SP,#0x38+var_28]
4DEBA2:  LDR             R0, [R4,#0x18]
4DEBA4:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4DEBA8:  MOV             R6, R0
4DEBAA:  LDR.W           R0, [R4,#0x4AC]
4DEBAE:  LDR             R1, [R0,#0x14]
4DEBB0:  MOV             R0, R6
4DEBB2:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4DEBB6:  MOV             R8, R0
4DEBB8:  MOV             R0, R6
4DEBBA:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4DEBBE:  ADD.W           R3, R0, R8,LSL#6
4DEBC2:  ADD             R0, SP, #0x38+var_28
4DEBC4:  MOVS            R2, #1
4DEBC6:  MOV             R1, R0
4DEBC8:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4DEBCC:  VLDR            S0, [R5,#0x14]
4DEBD0:  VCMP.F32        S0, #0.0
4DEBD4:  VMRS            APSR_nzcv, FPSCR
4DEBD8:  ITTT EQ
4DEBDA:  VLDREQ          S0, [R5,#0x18]
4DEBDE:  VCMPEQ.F32      S0, #0.0
4DEBE2:  VMRSEQ          APSR_nzcv, FPSCR
4DEBE6:  BEQ             loc_4DEBFA
4DEBE8:  LDRSB.W         R0, [R4,#0x71C]
4DEBEC:  RSB.W           R0, R0, R0,LSL#3
4DEBF0:  ADD.W           R0, R4, R0,LSL#2
4DEBF4:  ADDW            R0, R0, #0x5A4
4DEBF8:  B               loc_4DEC18
4DEBFA:  LDRSB.W         R0, [R4,#0x71C]
4DEBFE:  VLDR            S0, [R5,#0x1C]
4DEC02:  RSB.W           R0, R0, R0,LSL#3
4DEC06:  VCMP.F32        S0, #0.0
4DEC0A:  VMRS            APSR_nzcv, FPSCR
4DEC0E:  ADD.W           R0, R4, R0,LSL#2
4DEC12:  ADDW            R0, R0, #0x5A4; this
4DEC16:  BEQ             loc_4DEC2C
4DEC18:  MOVS            R1, #0
4DEC1A:  STRD.W          R1, R9, [SP,#0x38+var_38]; CEntity *
4DEC1E:  ADD             R2, SP, #0x38+var_28; CVector *
4DEC20:  STR             R1, [SP,#0x38+var_30]; CVector *
4DEC22:  MOV             R1, R4; CEntity *
4DEC24:  MOV             R3, R2; CVector *
4DEC26:  BLX             j__ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_; CWeapon::Fire(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *)
4DEC2A:  B               loc_4DEB28
4DEC2C:  MOVS            R1, #0
4DEC2E:  STRD.W          R1, R1, [SP,#0x38+var_38]
4DEC32:  B               loc_4DEC1E
