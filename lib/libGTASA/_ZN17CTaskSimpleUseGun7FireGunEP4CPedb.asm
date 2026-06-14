; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun7FireGunEP4CPedb
; Address            : 0x4DDB68 - 0x4DDCF0
; =========================================================

4DDB68:  PUSH            {R4-R7,LR}
4DDB6A:  ADD             R7, SP, #0xC
4DDB6C:  PUSH.W          {R11}
4DDB70:  SUB             SP, SP, #0x30
4DDB72:  MOV             R6, R0
4DDB74:  MOVS            R0, #0
4DDB76:  STRD.W          R0, R0, [SP,#0x40+var_20]
4DDB7A:  MOV             R5, R1
4DDB7C:  STR             R0, [SP,#0x40+var_18]
4DDB7E:  MOV             R4, R2
4DDB80:  LDR             R0, [R6,#0x30]
4DDB82:  VLDR            D16, [R0,#0x24]
4DDB86:  LDR             R0, [R0,#0x2C]
4DDB88:  STR             R0, [SP,#0x40+var_28]
4DDB8A:  VSTR            D16, [SP,#0x40+var_30]
4DDB8E:  LDRB.W          R0, [R5,#0x48D]
4DDB92:  LSLS            R0, R0, #0x1D
4DDB94:  BMI             loc_4DDBD6
4DDB96:  LDR             R0, [R5,#0x14]
4DDB98:  VLDR            S0, =0.7
4DDB9C:  ADD.W           R1, R0, #0x30 ; '0'
4DDBA0:  CMP             R0, #0
4DDBA2:  IT EQ
4DDBA4:  ADDEQ           R1, R5, #4
4DDBA6:  LDR             R0, [R1,#8]
4DDBA8:  STR             R0, [SP,#0x40+var_18]
4DDBAA:  VLDR            S2, [SP,#0x40+var_18]
4DDBAE:  VLDR            D16, [R1]
4DDBB2:  VADD.F32        S0, S2, S0
4DDBB6:  VSTR            D16, [SP,#0x40+var_30]
4DDBBA:  VSTR            S0, [SP,#0x40+var_18]
4DDBBE:  LDR             R0, [SP,#0x40+var_18]
4DDBC0:  VSTR            D16, [SP,#0x40+var_20]
4DDBC4:  STR             R0, [SP,#0x40+var_28]
4DDBC6:  LDR.W           R0, [R5,#0x534]
4DDBCA:  TST.W           R0, #4
4DDBCE:  BEQ             loc_4DDC72
4DDBD0:  ORR.W           R0, R0, #1
4DDBD4:  B               loc_4DDC6E
4DDBD6:  ADD             R1, SP, #0x40+var_20
4DDBD8:  MOV             R0, R5; this
4DDBDA:  CMP             R4, #1
4DDBDC:  BNE             loc_4DDC1C
4DDBDE:  MOVS            R2, #0x22 ; '"'
4DDBE0:  MOVS            R3, #0
4DDBE2:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DDBE6:  VLDR            S0, =0.15
4DDBEA:  ADD             R1, SP, #0x40+var_30
4DDBEC:  VLDR            S2, [SP,#0x40+var_28]
4DDBF0:  MOV             R0, R5; this
4DDBF2:  MOVS            R2, #0x22 ; '"'
4DDBF4:  MOVS            R3, #0
4DDBF6:  VADD.F32        S0, S2, S0
4DDBFA:  VLDR            S2, [SP,#0x40+var_18]
4DDBFE:  VADD.F32        S0, S2, S0
4DDC02:  VSTR            S0, [SP,#0x40+var_18]
4DDC06:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
4DDC0A:  LDRB.W          R0, [R5,#0x534]
4DDC0E:  LSLS            R0, R0, #0x1D
4DDC10:  BPL             loc_4DDC72
4DDC12:  LDR             R0, =(g_ikChainMan_ptr - 0x4DDC1C)
4DDC14:  MOV             R1, R5
4DDC16:  MOVS            R2, #2
4DDC18:  ADD             R0, PC; g_ikChainMan_ptr
4DDC1A:  B               loc_4DDC58
4DDC1C:  MOVS            R2, #0x18
4DDC1E:  MOVS            R3, #0
4DDC20:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DDC24:  VLDR            S0, =0.15
4DDC28:  ADD             R1, SP, #0x40+var_30
4DDC2A:  VLDR            S2, [SP,#0x40+var_28]
4DDC2E:  MOV             R0, R5; this
4DDC30:  MOVS            R2, #0x18
4DDC32:  MOVS            R3, #0
4DDC34:  VADD.F32        S0, S2, S0
4DDC38:  VLDR            S2, [SP,#0x40+var_18]
4DDC3C:  VADD.F32        S0, S2, S0
4DDC40:  VSTR            S0, [SP,#0x40+var_18]
4DDC44:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
4DDC48:  LDRB.W          R0, [R5,#0x534]
4DDC4C:  LSLS            R0, R0, #0x1D
4DDC4E:  BPL             loc_4DDC72
4DDC50:  LDR             R0, =(g_ikChainMan_ptr - 0x4DDC5A)
4DDC52:  MOV             R1, R5; CPed *
4DDC54:  MOVS            R2, #1; int
4DDC56:  ADD             R0, PC; g_ikChainMan_ptr
4DDC58:  LDR             R0, [R0]; g_ikChainMan ; this
4DDC5A:  BLX             j__ZN16IKChainManager_c14IsFacingTargetEP4CPedi; IKChainManager_c::IsFacingTarget(CPed *,int)
4DDC5E:  LDR.W           R1, [R5,#0x534]
4DDC62:  CMP             R0, #0
4DDC64:  ITE EQ
4DDC66:  BICEQ.W         R0, R1, #1
4DDC6A:  ORRNE.W         R0, R1, #1
4DDC6E:  STR.W           R0, [R5,#0x534]
4DDC72:  VLDR            S0, [R6,#0x20]
4DDC76:  VCMP.F32        S0, #0.0
4DDC7A:  VMRS            APSR_nzcv, FPSCR
4DDC7E:  ITTT NE
4DDC80:  VLDRNE          S0, [R6,#0x24]
4DDC84:  VCMPNE.F32      S0, #0.0
4DDC88:  VMRSNE          APSR_nzcv, FPSCR
4DDC8C:  BEQ             loc_4DDCA6
4DDC8E:  LDRSB.W         R2, [R5,#0x71C]
4DDC92:  ADD.W           R0, R6, #0x20 ; ' '
4DDC96:  LDR             R1, [R6,#0x1C]
4DDC98:  MOVS            R3, #0
4DDC9A:  STRD.W          R1, R0, [SP,#0x40+var_40]
4DDC9E:  STR             R3, [SP,#0x40+var_38]
4DDCA0:  RSB.W           R0, R2, R2,LSL#3
4DDCA4:  B               loc_4DDCB8
4DDCA6:  LDRSB.W         R1, [R5,#0x71C]
4DDCAA:  MOVS            R2, #0
4DDCAC:  LDR             R0, [R6,#0x1C]
4DDCAE:  STRD.W          R0, R2, [SP,#0x40+var_40]; CEntity *
4DDCB2:  RSB.W           R0, R1, R1,LSL#3
4DDCB6:  STR             R2, [SP,#0x40+var_38]; CVector *
4DDCB8:  ADD.W           R0, R5, R0,LSL#2
4DDCBC:  ADD             R2, SP, #0x40+var_20; CVector *
4DDCBE:  ADDW            R0, R0, #0x5A4; this
4DDCC2:  ADD             R3, SP, #0x40+var_30; CVector *
4DDCC4:  MOV             R1, R5; CEntity *
4DDCC6:  BLX             j__ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_; CWeapon::Fire(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *)
4DDCCA:  LDRSB.W         R0, [R5,#0x71C]
4DDCCE:  RSB.W           R0, R0, R0,LSL#3
4DDCD2:  ADD.W           R0, R5, R0,LSL#2
4DDCD6:  LDR.W           R0, [R0,#0x5A8]
4DDCDA:  CMP             R0, #1
4DDCDC:  BNE             loc_4DDCE8
4DDCDE:  MOV             R0, R5; this
4DDCE0:  MOVS            R1, #0xFA; int
4DDCE2:  MOV             R2, R4; bool
4DDCE4:  BLX             j__ZN4CPed10DoGunFlashEib; CPed::DoGunFlash(int,bool)
4DDCE8:  ADD             SP, SP, #0x30 ; '0'
4DDCEA:  POP.W           {R11}
4DDCEE:  POP             {R4-R7,PC}
