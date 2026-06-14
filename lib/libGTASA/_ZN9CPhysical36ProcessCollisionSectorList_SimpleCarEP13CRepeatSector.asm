; =========================================================
; Game Engine Function: _ZN9CPhysical36ProcessCollisionSectorList_SimpleCarEP13CRepeatSector
; Address            : 0x400C3C - 0x4010B8
; =========================================================

400C3C:  PUSH            {R4-R7,LR}
400C3E:  ADD             R7, SP, #0xC
400C40:  PUSH.W          {R8-R11}
400C44:  SUB             SP, SP, #4
400C46:  VPUSH           {D8-D9}
400C4A:  SUB             SP, SP, #0x48
400C4C:  MOV             R4, R0
400C4E:  LDR.W           R0, =(byte_95A93C - 0x400C58)
400C52:  STR             R1, [SP,#0x78+var_6C]
400C54:  ADD             R0, PC; byte_95A93C
400C56:  LDRB            R0, [R0]
400C58:  DMB.W           ISH
400C5C:  TST.W           R0, #1
400C60:  BNE             loc_400C78
400C62:  LDR.W           R0, =(byte_95A93C - 0x400C6A)
400C66:  ADD             R0, PC; byte_95A93C ; __guard *
400C68:  BLX             j___cxa_guard_acquire
400C6C:  CBZ             R0, loc_400C78
400C6E:  LDR.W           R0, =(byte_95A93C - 0x400C76)
400C72:  ADD             R0, PC; byte_95A93C ; __guard *
400C74:  BLX             j___cxa_guard_release
400C78:  MOVS            R0, #0
400C7A:  MOV             R1, R4
400C7C:  MOVT            R0, #0xBF80
400C80:  STRD.W          R0, R0, [SP,#0x78+var_38]
400C84:  LDRB.W          R0, [R1,#0x1C]!
400C88:  TST.W           R0, #1
400C8C:  BEQ.W           loc_400D96
400C90:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x400C9A)
400C94:  STR             R1, [SP,#0x78+var_74]
400C96:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
400C98:  LDRSH.W         R1, [R4,#0x26]
400C9C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
400C9E:  LDR.W           R0, [R0,R1,LSL#2]
400CA2:  ADD             R1, SP, #0x78+var_44; CVector *
400CA4:  LDR             R0, [R0,#0x2C]
400CA6:  VLDR            S16, [R0,#0x24]
400CAA:  MOV             R0, R4; this
400CAC:  BLX             j__ZNK7CEntity14GetBoundCentreER7CVector; CEntity::GetBoundCentre(CVector &)
400CB0:  LDR             R0, [SP,#0x78+var_6C]
400CB2:  MOVS            R1, #0
400CB4:  VLDR            S18, =0.66
400CB8:  MOV.W           R8, #2
400CBC:  ADDS            R0, #8
400CBE:  STR             R0, [SP,#0x78+var_70]
400CC0:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x400CC8)
400CC4:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
400CC6:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
400CCA:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x400CD2)
400CCE:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
400CD0:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
400CD2:  STR             R0, [SP,#0x78+var_64]
400CD4:  B               loc_400CD8
400CD6:  LDR             R1, [SP,#0x78+var_68]
400CD8:  CMP.W           R8, #1
400CDC:  BEQ             loc_400CEC
400CDE:  CMP.W           R8, #2
400CE2:  BEQ             loc_400CF0
400CE4:  CMP.W           R8, #0
400CE8:  BNE             loc_400CF2
400CEA:  B               loc_400D96
400CEC:  LDR             R1, [SP,#0x78+var_6C]
400CEE:  B               loc_400CF2
400CF0:  LDR             R1, [SP,#0x78+var_70]
400CF2:  LDR.W           R10, [R1]
400CF6:  SUB.W           R8, R8, #1
400CFA:  CMP.W           R10, #0
400CFE:  BEQ             loc_400CD8
400D00:  STR             R1, [SP,#0x78+var_68]
400D02:  LDRD.W          R5, R10, [R10]
400D06:  LDRB.W          R0, [R5,#0x3A]
400D0A:  AND.W           R0, R0, #7
400D0E:  CMP             R0, #4
400D10:  BNE             loc_400D1A
400D12:  LDRB.W          R0, [R5,#0x145]
400D16:  LSLS            R0, R0, #0x1F
400D18:  BNE             loc_400D20
400D1A:  CMP             R5, R4
400D1C:  BNE             loc_400D4C
400D1E:  B               loc_400D8E
400D20:  LDR             R0, [R5,#0x14]
400D22:  CBZ             R0, loc_400D2A
400D24:  CMP             R5, R4
400D26:  BNE             loc_400D3E
400D28:  B               loc_400D8E
400D2A:  MOV             R0, R5; this
400D2C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
400D30:  LDR             R1, [R5,#0x14]; CMatrix *
400D32:  ADDS            R0, R5, #4; this
400D34:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
400D38:  LDR             R0, [R5,#0x14]
400D3A:  CMP             R5, R4
400D3C:  BEQ             loc_400D8E
400D3E:  VLDR            S0, [R0,#0x28]
400D42:  VCMPE.F32       S0, S18
400D46:  VMRS            APSR_nzcv, FPSCR
400D4A:  BLT             loc_400D8E
400D4C:  LDRH            R0, [R5,#0x30]
400D4E:  LDRH.W          R1, [R9]; CWorld::ms_nCurrentScanCode
400D52:  CMP             R0, R1
400D54:  BEQ             loc_400D8E
400D56:  MOV             R6, R5
400D58:  LDRB.W          R0, [R6,#0x1C]!
400D5C:  TST.W           R0, #1
400D60:  BEQ             loc_400D8E
400D62:  VMOV            R2, S16; float
400D66:  ADD             R1, SP, #0x78+var_44; CVector *
400D68:  MOV             R0, R5; this
400D6A:  BLX             j__ZNK7CEntity13GetIsTouchingERK7CVectorf; CEntity::GetIsTouching(CVector const&,float)
400D6E:  CMP             R0, #1
400D70:  BNE             loc_400D8E
400D72:  LDR             R0, [SP,#0x78+var_64]
400D74:  MOV             R1, R5
400D76:  LDR             R2, =(unk_95A3BC - 0x400D7E)
400D78:  LDRH            R0, [R0]
400D7A:  ADD             R2, PC; unk_95A3BC
400D7C:  STRH            R0, [R5,#0x30]
400D7E:  LDR             R0, [R4]
400D80:  LDR             R3, [R0,#0x5C]
400D82:  MOV             R0, R4
400D84:  BLX             R3
400D86:  MOV             R11, R0
400D88:  CMP.W           R11, #0
400D8C:  BGT             loc_400D9A
400D8E:  CMP.W           R10, #0
400D92:  BNE             loc_400D02
400D94:  B               loc_400CD6
400D96:  MOVS            R0, #0
400D98:  B               loc_4010AA
400D9A:  LDR             R3, [SP,#0x78+var_74]
400D9C:  LDR             R0, [R6]
400D9E:  LDR             R1, [R3]
400DA0:  AND.W           R2, R0, #8
400DA4:  TST.W           R1, #8
400DA8:  BNE             loc_400E44
400DAA:  CMP             R2, #0
400DAC:  BNE.W           loc_400F30
400DB0:  VMOV            S0, R11
400DB4:  LDR             R0, =(g_surfaceInfos_ptr - 0x400DC6)
400DB6:  LDR.W           R8, =(unk_95A3BC - 0x400DC8)
400DBA:  ADD.W           R9, SP, #0x78+var_34
400DBE:  VCVT.F32.S32    S16, S0
400DC2:  ADD             R0, PC; g_surfaceInfos_ptr
400DC4:  ADD             R8, PC; unk_95A3BC
400DC6:  LDR.W           R10, [R0]; g_surfaceInfos
400DCA:  ADD             R0, SP, #0x78+var_38
400DCC:  STR             R0, [SP,#0x78+var_78]; int
400DCE:  MOV             R0, R4; this
400DD0:  MOV             R1, R5; int
400DD2:  MOV             R2, R8; int
400DD4:  MOV             R3, R9; int
400DD6:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
400DDA:  CMP             R0, #1
400DDC:  BNE             loc_400E38
400DDE:  LDR             R1, [SP,#0x78+var_34]; int
400DE0:  MOV.W           R0, #0x3F800000
400DE4:  STR             R0, [SP,#0x78+var_78]; float
400DE6:  MOV             R0, R4; CEntity **
400DE8:  MOV             R2, R5; int
400DEA:  MOV             R3, R8; int
400DEC:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400DF0:  MOVS            R0, #0
400DF2:  LDR             R1, [SP,#0x78+var_38]; int
400DF4:  MOVT            R0, #0xBF80
400DF8:  MOV             R2, R4; int
400DFA:  STR             R0, [SP,#0x78+var_78]; float
400DFC:  MOV             R0, R5; CEntity **
400DFE:  MOV             R3, R8; int
400E00:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400E04:  MOV             R0, R10
400E06:  MOV             R1, R8
400E08:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400E0C:  VMOV            S0, R0
400E10:  MOV             R0, R4
400E12:  MOV             R1, R5
400E14:  MOV             R3, R8
400E16:  VDIV.F32        S0, S0, S16
400E1A:  VMOV            R2, S0
400E1E:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
400E22:  CMP             R0, #1
400E24:  BNE             loc_400E38
400E26:  LDR             R1, [SP,#0x78+var_74]
400E28:  LDR             R0, [R1]
400E2A:  ORR.W           R0, R0, #8
400E2E:  STR             R0, [R1]
400E30:  LDR             R0, [R6]
400E32:  ORR.W           R0, R0, #8
400E36:  STR             R0, [R6]
400E38:  SUBS.W          R11, R11, #1
400E3C:  ADD.W           R8, R8, #0x2C ; ','
400E40:  BNE             loc_400DCA
400E42:  B               loc_401086
400E44:  CMP             R2, #0
400E46:  BNE.W           loc_401034
400E4A:  VLDR            D16, [R4,#0x60]
400E4E:  VMOV            S0, R11
400E52:  LDR             R2, [R4,#0x68]
400E54:  VMOV.I32        Q9, #0
400E58:  LDR             R0, [R3,#4]
400E5A:  BIC.W           R1, R1, #8
400E5E:  STR             R2, [SP,#0x78+var_48]
400E60:  ADD.W           R9, SP, #0x78+var_34
400E64:  VSTR            D16, [SP,#0x78+var_50]
400E68:  VLDR            D16, [R4,#0x6C]
400E6C:  LDR             R2, [R4,#0x74]
400E6E:  VCVT.F32.S32    S16, S0
400E72:  STR             R2, [SP,#0x78+var_58]
400E74:  VSTR            D16, [SP,#0x78+var_60]
400E78:  STRD.W          R1, R0, [R3]
400E7C:  ADD.W           R0, R4, #0x60 ; '`'
400E80:  STR             R0, [SP,#0x78+var_64]
400E82:  VST1.32         {D18-D19}, [R0]
400E86:  MOVS            R0, #0
400E88:  STRD.W          R0, R0, [R4,#0x70]
400E8C:  ADD.W           R0, R4, #0x6C ; 'l'
400E90:  STR             R0, [SP,#0x78+var_68]
400E92:  LDR             R0, =(g_surfaceInfos_ptr - 0x400E9C)
400E94:  LDR.W           R8, =(unk_95A3BC - 0x400E9E)
400E98:  ADD             R0, PC; g_surfaceInfos_ptr
400E9A:  ADD             R8, PC; unk_95A3BC
400E9C:  LDR.W           R10, [R0]; g_surfaceInfos
400EA0:  ADD             R0, SP, #0x78+var_38
400EA2:  STR             R0, [SP,#0x78+var_78]; int
400EA4:  MOV             R0, R4; this
400EA6:  MOV             R1, R5; int
400EA8:  MOV             R2, R8; int
400EAA:  MOV             R3, R9; int
400EAC:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
400EB0:  CMP             R0, #1
400EB2:  BNE             loc_400F0E
400EB4:  LDR             R1, [SP,#0x78+var_34]; int
400EB6:  MOV.W           R0, #0x3F800000
400EBA:  STR             R0, [SP,#0x78+var_78]; float
400EBC:  MOV             R0, R4; CEntity **
400EBE:  MOV             R2, R5; int
400EC0:  MOV             R3, R8; int
400EC2:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400EC6:  MOVS            R0, #0
400EC8:  LDR             R1, [SP,#0x78+var_38]; int
400ECA:  MOVT            R0, #0xBF80
400ECE:  MOV             R2, R4; int
400ED0:  STR             R0, [SP,#0x78+var_78]; float
400ED2:  MOV             R0, R5; CEntity **
400ED4:  MOV             R3, R8; int
400ED6:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400EDA:  MOV             R0, R10
400EDC:  MOV             R1, R8
400EDE:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400EE2:  VMOV            S0, R0
400EE6:  MOV             R0, R4
400EE8:  MOV             R1, R5
400EEA:  MOV             R3, R8
400EEC:  VDIV.F32        S0, S0, S16
400EF0:  VMOV            R2, S0
400EF4:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
400EF8:  CMP             R0, #1
400EFA:  BNE             loc_400F0E
400EFC:  LDR             R1, [SP,#0x78+var_74]
400EFE:  LDR             R0, [R1]
400F00:  ORR.W           R0, R0, #8
400F04:  STR             R0, [R1]
400F06:  LDR             R0, [R6]
400F08:  ORR.W           R0, R0, #8
400F0C:  STR             R0, [R6]
400F0E:  SUBS.W          R11, R11, #1
400F12:  ADD.W           R8, R8, #0x2C ; ','
400F16:  BNE             loc_400EA0
400F18:  LDR             R2, [SP,#0x78+var_74]
400F1A:  LDR             R0, [R2]
400F1C:  TST.W           R0, #8
400F20:  BNE.W           loc_401086
400F24:  LDR             R1, [R2,#4]
400F26:  ORR.W           R0, R0, #8
400F2A:  STRD.W          R0, R1, [R2]
400F2E:  B               loc_401010
400F30:  VLDR            D16, [R5,#0x60]
400F34:  VMOV            S0, R11
400F38:  LDR             R2, [R5,#0x68]
400F3A:  VMOV.I32        Q9, #0
400F3E:  LDR             R1, [R6,#4]
400F40:  BIC.W           R0, R0, #8
400F44:  STR             R2, [SP,#0x78+var_48]
400F46:  ADD.W           R9, SP, #0x78+var_34
400F4A:  VSTR            D16, [SP,#0x78+var_50]
400F4E:  VLDR            D16, [R5,#0x6C]
400F52:  LDR             R2, [R5,#0x74]
400F54:  VCVT.F32.S32    S16, S0
400F58:  STR             R2, [SP,#0x78+var_58]
400F5A:  VSTR            D16, [SP,#0x78+var_60]
400F5E:  STRD.W          R0, R1, [R6]
400F62:  ADD.W           R0, R5, #0x60 ; '`'
400F66:  STR             R0, [SP,#0x78+var_64]
400F68:  VST1.32         {D18-D19}, [R0]
400F6C:  MOVS            R0, #0
400F6E:  STRD.W          R0, R0, [R5,#0x70]
400F72:  ADD.W           R0, R5, #0x6C ; 'l'
400F76:  STR             R0, [SP,#0x78+var_68]
400F78:  LDR             R0, =(g_surfaceInfos_ptr - 0x400F82)
400F7A:  LDR.W           R8, =(unk_95A3BC - 0x400F84)
400F7E:  ADD             R0, PC; g_surfaceInfos_ptr
400F80:  ADD             R8, PC; unk_95A3BC
400F82:  LDR.W           R10, [R0]; g_surfaceInfos
400F86:  ADD             R0, SP, #0x78+var_38
400F88:  STR             R0, [SP,#0x78+var_78]; int
400F8A:  MOV             R0, R4; this
400F8C:  MOV             R1, R5; int
400F8E:  MOV             R2, R8; int
400F90:  MOV             R3, R9; int
400F92:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
400F96:  CMP             R0, #1
400F98:  BNE             loc_400FF4
400F9A:  LDR             R1, [SP,#0x78+var_34]; int
400F9C:  MOV.W           R0, #0x3F800000
400FA0:  STR             R0, [SP,#0x78+var_78]; float
400FA2:  MOV             R0, R4; CEntity **
400FA4:  MOV             R2, R5; int
400FA6:  MOV             R3, R8; int
400FA8:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400FAC:  MOVS            R0, #0
400FAE:  LDR             R1, [SP,#0x78+var_38]; int
400FB0:  MOVT            R0, #0xBF80
400FB4:  MOV             R2, R4; int
400FB6:  STR             R0, [SP,#0x78+var_78]; float
400FB8:  MOV             R0, R5; CEntity **
400FBA:  MOV             R3, R8; int
400FBC:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
400FC0:  MOV             R0, R10
400FC2:  MOV             R1, R8
400FC4:  BLX             j__ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint; SurfaceInfos_c::GetAdhesiveLimit(CColPoint &)
400FC8:  VMOV            S0, R0
400FCC:  MOV             R0, R4
400FCE:  MOV             R1, R5
400FD0:  MOV             R3, R8
400FD2:  VDIV.F32        S0, S0, S16
400FD6:  VMOV            R2, S0
400FDA:  BLX             j__ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint; CPhysical::ApplyFriction(CPhysical*,float,CColPoint &)
400FDE:  CMP             R0, #1
400FE0:  BNE             loc_400FF4
400FE2:  LDR             R1, [SP,#0x78+var_74]
400FE4:  LDR             R0, [R1]
400FE6:  ORR.W           R0, R0, #8
400FEA:  STR             R0, [R1]
400FEC:  LDR             R0, [R6]
400FEE:  ORR.W           R0, R0, #8
400FF2:  STR             R0, [R6]
400FF4:  SUBS.W          R11, R11, #1
400FF8:  ADD.W           R8, R8, #0x2C ; ','
400FFC:  BNE             loc_400F86
400FFE:  LDR             R0, [R6]
401000:  TST.W           R0, #8
401004:  BNE             loc_401086
401006:  LDR             R1, [R6,#4]
401008:  ORR.W           R0, R0, #8
40100C:  STRD.W          R0, R1, [R6]
401010:  LDR             R1, [SP,#0x78+var_64]
401012:  VLDR            D16, [SP,#0x78+var_50]
401016:  LDR             R0, [SP,#0x78+var_48]
401018:  STR             R0, [R1,#8]
40101A:  VSTR            D16, [R1]
40101E:  LDR             R1, [SP,#0x78+var_68]
401020:  VLDR            D16, [SP,#0x78+var_60]
401024:  LDR             R0, [SP,#0x78+var_58]
401026:  STR             R0, [R1,#8]
401028:  VSTR            D16, [R1]
40102C:  B               loc_401086
40102E:  ALIGN 0x10
401030:  DCFS 0.66
401034:  LDR             R6, =(unk_95A3BC - 0x401046)
401036:  ADD.W           R9, SP, #0x78+var_38
40103A:  ADD.W           R8, SP, #0x78+var_34
40103E:  MOV.W           R10, #0x3F800000
401042:  ADD             R6, PC; unk_95A3BC
401044:  MOV             R0, R4; this
401046:  MOV             R1, R5; int
401048:  MOV             R2, R6; int
40104A:  MOV             R3, R8; int
40104C:  STR.W           R9, [SP,#0x78+var_78]; int
401050:  BLX             j__ZN9CPhysical14ApplyCollisionEPS_R9CColPointRfS3_; CPhysical::ApplyCollision(CPhysical*,CColPoint &,float &,float &)
401054:  CMP             R0, #1
401056:  BNE             loc_40107C
401058:  LDR             R1, [SP,#0x78+var_34]; int
40105A:  MOV             R0, R4; CEntity **
40105C:  MOV             R2, R5; int
40105E:  MOV             R3, R6; int
401060:  STR.W           R10, [SP,#0x78+var_78]; float
401064:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
401068:  MOVS            R0, #0
40106A:  LDR             R1, [SP,#0x78+var_38]; int
40106C:  MOVT            R0, #0xBF80
401070:  MOV             R2, R4; int
401072:  STR             R0, [SP,#0x78+var_78]; float
401074:  MOV             R0, R5; CEntity **
401076:  MOV             R3, R6; int
401078:  BLX             j__ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf; CPhysical::SetDamagedPieceRecord(float,CEntity *,CColPoint &,float)
40107C:  SUBS.W          R11, R11, #1
401080:  ADD.W           R6, R6, #0x2C ; ','
401084:  BNE             loc_401044
401086:  LDRB.W          R0, [R5,#0x3A]
40108A:  AND.W           R1, R0, #0xF8
40108E:  CMP             R1, #0x10
401090:  BNE             loc_4010A8
401092:  AND.W           R0, R0, #7
401096:  CMP             R0, #2
401098:  ORR.W           R1, R0, #0x18; CVehicle *
40109C:  STRB.W          R1, [R5,#0x3A]
4010A0:  ITT EQ
4010A2:  MOVEQ           R0, R5; this
4010A4:  BLXEQ           j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
4010A8:  MOVS            R0, #1
4010AA:  ADD             SP, SP, #0x48 ; 'H'
4010AC:  VPOP            {D8-D9}
4010B0:  ADD             SP, SP, #4
4010B2:  POP.W           {R8-R11}
4010B6:  POP             {R4-R7,PC}
