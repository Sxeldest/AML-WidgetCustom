; =========================================================
; Game Engine Function: _ZN6CWorld28ProcessLineOfSightSectorListER8CPtrListRK8CColLineR9CColPointRfRP7CEntitybbb
; Address            : 0x425B58 - 0x42610E
; =========================================================

425B58:  PUSH            {R4-R7,LR}
425B5A:  ADD             R7, SP, #0xC
425B5C:  PUSH.W          {R8-R11}
425B60:  SUB             SP, SP, #4
425B62:  VPUSH           {D8-D13}
425B66:  SUB             SP, SP, #0x160
425B68:  MOV             R5, R3
425B6A:  STR             R2, [SP,#0x1B0+var_174]
425B6C:  STR             R1, [SP,#0x1B0+var_168]
425B6E:  LDR             R4, [R5]
425B70:  STR             R4, [SP,#0x1B0+var_54]
425B72:  LDR.W           R9, [R0]
425B76:  ADD             R0, SP, #0x1B0+var_B0; this
425B78:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
425B7C:  ADD             R0, SP, #0x1B0+var_E4; this
425B7E:  BLX             j__ZN14CCollisionDataC2Ev; CCollisionData::CCollisionData(void)
425B82:  MOVS            R1, #0
425B84:  CMP.W           R9, #0
425B88:  STR             R1, [SP,#0x1B0+var_164]
425B8A:  BEQ             loc_425BC6
425B8C:  LDR.W           R1, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x425B94)
425B90:  ADD             R1, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
425B92:  LDR             R1, [R1]; CWorld::bIncludeCarTyres ...
425B94:  LDRB            R1, [R1]; CWorld::bIncludeCarTyres
425B96:  CBZ             R1, loc_425BC6
425B98:  LDR.W           R1, [R9]
425B9C:  MOVS            R2, #0
425B9E:  LDRB.W          R1, [R1,#0x3A]
425BA2:  STR             R2, [SP,#0x1B0+var_164]
425BA4:  AND.W           R1, R1, #7
425BA8:  CMP             R1, #2
425BAA:  BNE             loc_425BC6
425BAC:  STR             R0, [SP,#0x1B0+var_84]
425BAE:  MOVS            R0, #6
425BB0:  ADD             R1, SP, #0x1B0+var_15C
425BB2:  STR             R1, [SP,#0x1B0+var_DC]
425BB4:  STRH.W          R0, [SP,#0x1B0+var_E4]
425BB8:  MOVS            R0, #0
425BBA:  STRB.W          R0, [SP,#0x1B0+var_DE]
425BBE:  STR.W           R0, [SP,#0x1B0+var_E2]
425BC2:  MOVS            R0, #1
425BC4:  STR             R0, [SP,#0x1B0+var_164]
425BC6:  MOVS            R1, #0
425BC8:  CMP.W           R9, #0
425BCC:  BEQ             loc_425BEE
425BCE:  LDR.W           R0, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x425BD6)
425BD2:  ADD             R0, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
425BD4:  LDR             R0, [R0]; CWorld::bIncludeDeadPeds ...
425BD6:  LDRB            R0, [R0]; CWorld::bIncludeDeadPeds
425BD8:  CBZ             R0, loc_425BEE
425BDA:  LDR.W           R0, [R9]
425BDE:  MOVS            R1, #0
425BE0:  LDRB.W          R0, [R0,#0x3A]
425BE4:  AND.W           R0, R0, #7
425BE8:  CMP             R0, #3
425BEA:  IT EQ
425BEC:  MOVEQ           R1, #1
425BEE:  CMP.W           R9, #0
425BF2:  BEQ             loc_425C18
425BF4:  LDR.W           R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x425BFC)
425BF8:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
425BFA:  LDR             R0, [R0]; CWorld::bIncludeBikers ...
425BFC:  LDRB            R0, [R0]; CWorld::bIncludeBikers
425BFE:  CBZ             R0, loc_425C18
425C00:  STR             R5, [SP,#0x1B0+var_188]
425C02:  MOVS            R2, #0
425C04:  LDR.W           R0, [R9]
425C08:  LDRB.W          R0, [R0,#0x3A]
425C0C:  AND.W           R0, R0, #7
425C10:  CMP             R0, #3
425C12:  IT EQ
425C14:  MOVEQ           R2, #1
425C16:  B               loc_425C24
425C18:  CMP.W           R9, #0
425C1C:  BEQ.W           loc_426108
425C20:  MOVS            R2, #0
425C22:  STR             R5, [SP,#0x1B0+var_188]
425C24:  STRD.W          R2, R1, [SP,#0x1B0+var_198]
425C28:  ORR.W           R10, R2, R1
425C2C:  LDR             R0, [SP,#0x1B0+var_168]
425C2E:  VMOV.F32        S16, #0.5
425C32:  VLDR            S18, =0.0
425C36:  ADDS            R1, R0, #4
425C38:  ADDS            R0, #0x14
425C3A:  STR             R0, [SP,#0x1B0+var_1A0]
425C3C:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x425C46)
425C40:  STR             R1, [SP,#0x1B0+var_19C]
425C42:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
425C44:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x425C50)
425C48:  LDR.W           R11, [R0]; CWorld::pIgnoreEntity ...
425C4C:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
425C4E:  LDR.W           R0, =(gCurCamColVars_ptr - 0x425C5A)
425C52:  LDR.W           R8, [R1]; CWorld::ms_nCurrentScanCode ...
425C56:  ADD             R0, PC; gCurCamColVars_ptr
425C58:  LDR.W           R1, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x425C62)
425C5C:  LDR             R0, [R0]; gCurCamColVars
425C5E:  ADD             R1, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
425C60:  STR             R0, [SP,#0x1B0+var_17C]
425C62:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x425C6A)
425C66:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
425C68:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
425C6A:  STR             R0, [SP,#0x1B0+var_16C]
425C6C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x425C74)
425C70:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
425C72:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
425C74:  STR             R0, [SP,#0x1B0+var_170]
425C76:  LDR.W           R0, =(_ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr - 0x425C7E)
425C7A:  ADD             R0, PC; _ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr
425C7C:  LDR             R0, [R0]; CCollision::ms_iProcessLineNumCrossings ...
425C7E:  STR             R0, [SP,#0x1B0+var_18C]
425C80:  LDR             R0, [R1]; CWorld::ms_iProcessLineNumCrossings ...
425C82:  STR             R0, [SP,#0x1B0+var_190]
425C84:  LDR.W           R0, =(_ZN6CWorld17fWeaponSpreadRateE_ptr - 0x425C90)
425C88:  LDR.W           R1, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x425C92)
425C8C:  ADD             R0, PC; _ZN6CWorld17fWeaponSpreadRateE_ptr
425C8E:  ADD             R1, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
425C90:  LDR             R0, [R0]; CWorld::fWeaponSpreadRate ...
425C92:  STR             R0, [SP,#0x1B0+var_178]
425C94:  LDR.W           R0, =(_ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr - 0x425C9C)
425C98:  ADD             R0, PC; _ZN10CCollision27ms_iProcessLineNumCrossingsE_ptr
425C9A:  LDR             R0, [R0]; CCollision::ms_iProcessLineNumCrossings ...
425C9C:  STR             R0, [SP,#0x1B0+var_180]
425C9E:  LDR             R0, [R1]; CWorld::ms_iProcessLineNumCrossings ...
425CA0:  STR             R0, [SP,#0x1B0+var_184]
425CA2:  LDRD.W          R5, R9, [R9]
425CA6:  LDRH.W          R1, [R8]; int
425CAA:  LDRH            R0, [R5,#0x30]
425CAC:  CMP             R0, R1
425CAE:  ITT NE
425CB0:  LDRNE.W         R0, [R11]; CWorld::pIgnoreEntity
425CB4:  CMPNE           R0, R5
425CB6:  BEQ.W           loc_4260CC
425CBA:  MOV             R4, R5
425CBC:  CMP.W           R10, #0
425CC0:  LDR.W           R0, [R4,#0x1C]!
425CC4:  IT EQ
425CC6:  ANDSEQ.W        R0, R0, #1
425CCA:  BEQ.W           loc_4260CC
425CCE:  LDR             R0, [R7,#arg_8]
425CD0:  CMP             R0, #1
425CD2:  BNE             loc_425D02
425CD4:  LDRSH.W         R0, [R5,#0x26]; this
425CD8:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
425CDC:  CBNZ            R0, loc_425D02
425CDE:  LDR.W           R0, [R5,#0x164]
425CE2:  LDRB            R1, [R0,#0x1E]
425CE4:  LDR             R0, [SP,#0x1B0+var_17C]
425CE6:  CMP             R1, #3
425CE8:  LDRB            R0, [R0]
425CEA:  BEQ             loc_425CFC
425CEC:  CMP             R1, #2
425CEE:  BEQ             loc_425D02
425CF0:  CMP             R1, #1
425CF2:  BNE.W           loc_4260CC
425CF6:  CMP             R0, #0xA
425CF8:  BCC             loc_425D02
425CFA:  B               loc_4260CC
425CFC:  CMP             R0, #0xA
425CFE:  BCC.W           loc_4260CC
425D02:  LDR             R0, [SP,#0x1B0+var_16C]
425D04:  LDRH            R0, [R0]
425D06:  STRH            R0, [R5,#0x30]
425D08:  LDR             R0, [SP,#0x1B0+var_54]
425D0A:  STR             R0, [SP,#0x1B0+var_160]
425D0C:  LDR             R0, [R4]
425D0E:  LDRB.W          R1, [R5,#0x3A]
425D12:  AND.W           R0, R0, #1
425D16:  AND.W           R1, R1, #7
425D1A:  CMP             R1, #3
425D1C:  BNE             loc_425D42
425D1E:  CMP             R0, #0
425D20:  ITT EQ
425D22:  LDREQ.W         R0, [R5,#0x100]
425D26:  CMPEQ           R0, #0
425D28:  BEQ.W           loc_425EFC
425D2C:  LDRSH.W         R0, [R5,#0x26]
425D30:  LDR             R2, [SP,#0x1B0+var_170]
425D32:  LDR             R1, [R5,#0x18]
425D34:  LDR.W           R0, [R2,R0,LSL#2]
425D38:  BLX             j__ZN13CPedModelInfo25AnimatePedColModelSkinnedEP7RpClump; CPedModelInfo::AnimatePedColModelSkinned(RpClump *)
425D3C:  MOV             R4, R0
425D3E:  CBNZ            R4, loc_425D50
425D40:  B               loc_425F1A
425D42:  CMP             R0, #0
425D44:  BEQ.W           loc_425F1A
425D48:  MOV             R0, R5; this
425D4A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
425D4E:  MOV             R4, R0
425D50:  LDR             R6, [R4,#0x2C]
425D52:  CMP             R6, #0
425D54:  BEQ.W           loc_425F1A
425D58:  LDR             R0, [SP,#0x1B0+var_178]
425D5A:  VMOV.F32        S20, S18
425D5E:  VLDR            S0, [R0]
425D62:  VCMPE.F32       S0, #0.0
425D66:  VMRS            APSR_nzcv, FPSCR
425D6A:  BLE             loc_425E36
425D6C:  LDR             R1, [SP,#0x1B0+var_168]
425D6E:  LDR             R0, [R5,#0x14]
425D70:  VLDR            S2, [R1]
425D74:  CMP             R0, #0
425D76:  VLDR            S4, [R1,#4]
425D7A:  VLDR            S6, [R1,#8]
425D7E:  ADD.W           R1, R0, #0x30 ; '0'
425D82:  IT EQ
425D84:  ADDEQ           R1, R5, #4
425D86:  VLDR            S8, [R1]
425D8A:  VLDR            S10, [R1,#4]
425D8E:  VSUB.F32        S2, S8, S2
425D92:  VLDR            S12, [R1,#8]
425D96:  VSUB.F32        S4, S10, S4
425D9A:  VLDR            S8, [R4,#0x10]
425D9E:  VSUB.F32        S6, S12, S6
425DA2:  VLDR            S10, [R4,#0x14]
425DA6:  VLDR            S12, [R4,#0x24]
425DAA:  VMUL.F32        S2, S2, S2
425DAE:  VMUL.F32        S4, S4, S4
425DB2:  VMUL.F32        S6, S6, S6
425DB6:  VADD.F32        S2, S2, S4
425DBA:  VLDR            S4, [R4,#8]
425DBE:  VADD.F32        S2, S2, S6
425DC2:  VLDR            S6, [R4,#0xC]
425DC6:  VSQRT.F32       S2, S2
425DCA:  VMUL.F32        S20, S0, S2
425DCE:  VLDR            S0, [R4]
425DD2:  VLDR            S2, [R4,#4]
425DD6:  VSUB.F32        S0, S0, S20
425DDA:  VSUB.F32        S2, S2, S20
425DDE:  VSUB.F32        S4, S4, S20
425DE2:  VADD.F32        S6, S20, S6
425DE6:  VADD.F32        S8, S20, S8
425DEA:  VADD.F32        S10, S20, S10
425DEE:  VADD.F32        S12, S20, S12
425DF2:  VSTR            S0, [R4]
425DF6:  VSTR            S2, [R4,#4]
425DFA:  VSTR            S4, [R4,#8]
425DFE:  VSTR            S6, [R4,#0xC]
425E02:  VSTR            S8, [R4,#0x10]
425E06:  VSTR            S10, [R4,#0x14]
425E0A:  VSTR            S12, [R4,#0x24]
425E0E:  LDRSH.W         R0, [R6]
425E12:  CMP             R0, #1
425E14:  BLT             loc_425E36
425E16:  MOVS            R0, #0
425E18:  MOVS            R1, #0xC
425E1A:  LDR             R2, [R6,#8]
425E1C:  ADDS            R0, #1
425E1E:  ADD             R2, R1
425E20:  ADDS            R1, #0x14
425E22:  VLDR            S0, [R2]
425E26:  VADD.F32        S0, S20, S0
425E2A:  VSTR            S0, [R2]
425E2E:  LDRSH.W         R2, [R6]
425E32:  CMP             R0, R2
425E34:  BLT             loc_425E1A
425E36:  LDR             R1, [R5,#0x14]
425E38:  CBNZ            R1, loc_425E4A
425E3A:  MOV             R0, R5; this
425E3C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
425E40:  LDR             R1, [R5,#0x14]; CMatrix *
425E42:  ADDS            R0, R5, #4; this
425E44:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
425E48:  LDR             R1, [R5,#0x14]; CMatrix *
425E4A:  ADD             R0, SP, #0x1B0+var_54
425E4C:  STR             R0, [SP,#0x1B0+var_1B0]; int
425E4E:  LDR             R0, [R7,#arg_4]
425E50:  MOV             R2, R4; int
425E52:  STR             R0, [SP,#0x1B0+var_1AC]; int
425E54:  LDR             R0, [R7,#arg_C]
425E56:  STR             R0, [SP,#0x1B0+var_1A8]; int
425E58:  LDR             R0, [SP,#0x1B0+var_168]; int
425E5A:  LDR             R3, [SP,#0x1B0+var_174]; int
425E5C:  BLX             j__ZN10CCollision18ProcessLineOfSightERK8CColLineRK7CMatrixR9CColModelR9CColPointRfbb; CCollision::ProcessLineOfSight(CColLine const&,CMatrix const&,CColModel &,CColPoint &,float &,bool,bool)
425E60:  CMP             R0, #1
425E62:  BNE             loc_425E74
425E64:  LDR             R0, [R7,#arg_0]
425E66:  STR             R5, [R0]
425E68:  LDR             R0, [SP,#0x1B0+var_180]
425E6A:  LDR             R2, [SP,#0x1B0+var_184]
425E6C:  LDR             R0, [R0]
425E6E:  LDR             R1, [R2]
425E70:  ADD             R0, R1
425E72:  STR             R0, [R2]
425E74:  VCMPE.F32       S20, #0.0
425E78:  VMRS            APSR_nzcv, FPSCR
425E7C:  BLE             loc_425F1A
425E7E:  VLDR            S0, [R4]
425E82:  VLDR            S2, [R4,#4]
425E86:  VLDR            S4, [R4,#8]
425E8A:  VADD.F32        S0, S20, S0
425E8E:  VLDR            S6, [R4,#0xC]
425E92:  VADD.F32        S2, S20, S2
425E96:  VLDR            S8, [R4,#0x10]
425E9A:  VADD.F32        S4, S20, S4
425E9E:  VLDR            S10, [R4,#0x14]
425EA2:  VSUB.F32        S6, S6, S20
425EA6:  VLDR            S12, [R4,#0x24]
425EAA:  VSUB.F32        S8, S8, S20
425EAE:  VSUB.F32        S10, S10, S20
425EB2:  VSUB.F32        S12, S12, S20
425EB6:  VSTR            S0, [R4]
425EBA:  VSTR            S2, [R4,#4]
425EBE:  VSTR            S4, [R4,#8]
425EC2:  VSTR            S6, [R4,#0xC]
425EC6:  VSTR            S8, [R4,#0x10]
425ECA:  VSTR            S10, [R4,#0x14]
425ECE:  VSTR            S12, [R4,#0x24]
425ED2:  LDRSH.W         R0, [R6]
425ED6:  CMP             R0, #1
425ED8:  BLT             loc_425F1A
425EDA:  MOVS            R0, #0
425EDC:  MOVS            R1, #0xC
425EDE:  LDR             R2, [R6,#8]
425EE0:  ADDS            R0, #1
425EE2:  ADD             R2, R1
425EE4:  ADDS            R1, #0x14
425EE6:  VLDR            S0, [R2]
425EEA:  VSUB.F32        S0, S0, S20
425EEE:  VSTR            S0, [R2]
425EF2:  LDRSH.W         R2, [R6]
425EF6:  CMP             R0, R2
425EF8:  BLT             loc_425EDE
425EFA:  B               loc_425F1A
425EFC:  LDR             R0, [SP,#0x1B0+var_194]
425EFE:  CBZ             R0, loc_425F0C
425F00:  MOV             R0, R5; this
425F02:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
425F06:  CMP             R0, #1
425F08:  BNE.W           loc_425D2C
425F0C:  LDR             R0, [SP,#0x1B0+var_198]
425F0E:  CBZ             R0, loc_425F1A
425F10:  LDRB.W          R0, [R5,#0x492]
425F14:  LSLS            R0, R0, #0x1B
425F16:  BMI.W           loc_425D2C
425F1A:  LDR             R0, [SP,#0x1B0+var_164]
425F1C:  CMP             R0, #1
425F1E:  BNE.W           loc_4260CC
425F22:  LDR             R0, [R5]
425F24:  ADD             R1, SP, #0x1B0+var_B0
425F26:  LDR.W           R2, [R0,#0xB0]
425F2A:  MOV             R0, R5
425F2C:  BLX             R2
425F2E:  CMP             R0, #1
425F30:  BNE.W           loc_4260CC
425F34:  LDR             R1, [R5,#0x14]
425F36:  CBNZ            R1, loc_425F48
425F38:  MOV             R0, R5; this
425F3A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
425F3E:  LDR             R1, [R5,#0x14]; CMatrix *
425F40:  ADDS            R0, R5, #4; this
425F42:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
425F46:  LDR             R1, [R5,#0x14]; CMatrix *
425F48:  ADD             R0, SP, #0x1B0+var_160
425F4A:  STR             R0, [SP,#0x1B0+var_1B0]; int
425F4C:  MOVS            R0, #0
425F4E:  ADD             R2, SP, #0x1B0+var_B0; int
425F50:  STR             R0, [SP,#0x1B0+var_1AC]; int
425F52:  ADD             R3, SP, #0x1B0+var_80; int
425F54:  LDR             R0, [R7,#arg_C]
425F56:  STR             R0, [SP,#0x1B0+var_1A8]; int
425F58:  LDR             R0, [SP,#0x1B0+var_168]; int
425F5A:  BLX             j__ZN10CCollision18ProcessLineOfSightERK8CColLineRK7CMatrixR9CColModelR9CColPointRfbb; CCollision::ProcessLineOfSight(CColLine const&,CMatrix const&,CColModel &,CColPoint &,float &,bool,bool)
425F5E:  CMP             R0, #1
425F60:  BNE.W           loc_4260CC
425F64:  LDR             R0, [SP,#0x1B0+var_18C]
425F66:  LDR             R2, [SP,#0x1B0+var_190]
425F68:  VLDR            S0, [SP,#0x1B0+var_160]
425F6C:  VLDR            S2, [SP,#0x1B0+var_54]
425F70:  LDR             R0, [R0]
425F72:  LDR             R1, [R2]
425F74:  VCMPE.F32       S0, S2
425F78:  VMRS            APSR_nzcv, FPSCR
425F7C:  ADD             R0, R1
425F7E:  STR             R0, [R2]
425F80:  BGE             loc_425F88
425F82:  VSTR            S0, [SP,#0x1B0+var_54]
425F86:  B               loc_4260C0
425F88:  LDR             R0, [SP,#0x1B0+var_168]
425F8A:  VLDR            S0, [R0]
425F8E:  VLDR            S6, [R0,#0x10]
425F92:  VLDR            S2, [R0,#4]
425F96:  VLDR            S8, [R0,#0x14]
425F9A:  VSUB.F32        S22, S6, S0
425F9E:  VLDR            S4, [R0,#8]
425FA2:  VLDR            S10, [R0,#0x18]
425FA6:  VSUB.F32        S24, S8, S2
425FAA:  LDR             R0, [R5,#0x14]
425FAC:  VSUB.F32        S20, S10, S4
425FB0:  CBZ             R0, loc_425FBC
425FB2:  ADDS            R4, R5, #4
425FB4:  B               loc_425FCE
425FB6:  ALIGN 4
425FB8:  DCFS 0.0
425FBC:  MOV             R0, R5; this
425FBE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
425FC2:  ADDS            R4, R5, #4
425FC4:  LDR             R1, [R5,#0x14]; CMatrix *
425FC6:  MOV             R0, R4; this
425FC8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
425FCC:  LDR             R0, [R5,#0x14]
425FCE:  VLDR            S0, [R0]
425FD2:  CMP             R0, #0
425FD4:  VLDR            S4, [R0,#4]
425FD8:  MOV             R1, R4
425FDA:  VMUL.F32        S8, S22, S0
425FDE:  VLDR            S2, [R0,#8]
425FE2:  VMUL.F32        S6, S24, S4
425FE6:  VLDR            S10, [SP,#0x1B0+var_80]
425FEA:  VMUL.F32        S1, S20, S2
425FEE:  VLDR            S12, [SP,#0x1B0+var_7C]
425FF2:  VLDR            S14, [SP,#0x1B0+var_78]
425FF6:  IT NE
425FF8:  ADDNE.W         R1, R0, #0x30 ; '0'
425FFC:  VLDR            S3, [R1,#4]
426000:  CMP             R0, #0
426002:  VLDR            S5, [R1,#8]
426006:  VSUB.F32        S26, S12, S3
42600A:  VSUB.F32        S22, S14, S5
42600E:  VADD.F32        S6, S8, S6
426012:  VLDR            S8, [R1]
426016:  VSUB.F32        S24, S10, S8
42601A:  VADD.F32        S20, S6, S1
42601E:  BNE             loc_42603C
426020:  MOV             R0, R5; this
426022:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
426026:  LDR             R1, [R5,#0x14]; CMatrix *
426028:  MOV             R0, R4; this
42602A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
42602E:  LDR             R0, [R5,#0x14]
426030:  VLDR            S0, [R0]
426034:  VLDR            S4, [R0,#4]
426038:  VLDR            S2, [R0,#8]
42603C:  VMUL.F32        S4, S26, S4
426040:  VMUL.F32        S0, S24, S0
426044:  VMUL.F32        S2, S22, S2
426048:  VCMPE.F32       S20, #0.0
42604C:  VMRS            APSR_nzcv, FPSCR
426050:  VADD.F32        S0, S0, S4
426054:  VADD.F32        S0, S0, S2
426058:  BGE             loc_426064
42605A:  VCMPE.F32       S0, #0.0
42605E:  VMRS            APSR_nzcv, FPSCR
426062:  BGT             loc_426078
426064:  VCMPE.F32       S20, #0.0
426068:  VMRS            APSR_nzcv, FPSCR
42606C:  BLE             loc_4260CC
42606E:  VCMPE.F32       S0, #0.0
426072:  VMRS            APSR_nzcv, FPSCR
426076:  BGE             loc_4260CC
426078:  LDR             R0, [SP,#0x1B0+var_168]
42607A:  VLDR            S0, [R0]
42607E:  VLDR            S2, [R0,#0x10]
426082:  LDR             R0, [SP,#0x1B0+var_19C]
426084:  VSUB.F32        S0, S2, S0
426088:  VLDR            D16, [R0]
42608C:  LDR             R0, [SP,#0x1B0+var_1A0]
42608E:  VLDR            D17, [R0]
426092:  VSUB.F32        D16, D17, D16
426096:  VMUL.F32        S0, S0, S0
42609A:  VMUL.F32        D1, D16, D16
42609E:  VADD.F32        S0, S0, S2
4260A2:  VADD.F32        S0, S0, S3
4260A6:  VABS.F32        S2, S20
4260AA:  VSQRT.F32       S0, S0
4260AE:  VDIV.F32        S0, S2, S0
4260B2:  VCMPE.F32       S0, S16
4260B6:  VMRS            APSR_nzcv, FPSCR
4260BA:  BLE             loc_4260CC
4260BC:  LDR             R0, [SP,#0x1B0+var_160]
4260BE:  STR             R0, [SP,#0x1B0+var_54]
4260C0:  LDR             R0, [SP,#0x1B0+var_174]
4260C2:  ADD             R1, SP, #0x1B0+var_80
4260C4:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
4260C8:  LDR             R0, [R7,#arg_0]
4260CA:  STR             R5, [R0]
4260CC:  CMP.W           R9, #0
4260D0:  BNE.W           loc_425CA2
4260D4:  LDR             R5, [SP,#0x1B0+var_188]
4260D6:  VLDR            S0, [SP,#0x1B0+var_54]
4260DA:  MOVS            R4, #0
4260DC:  ADD             R0, SP, #0x1B0+var_B0; this
4260DE:  STR             R4, [SP,#0x1B0+var_84]
4260E0:  VLDR            S2, [R5]
4260E4:  VCMPE.F32       S0, S2
4260E8:  VMRS            APSR_nzcv, FPSCR
4260EC:  ITT LT
4260EE:  VSTRLT          S0, [R5]
4260F2:  MOVLT           R4, #1
4260F4:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
4260F8:  MOV             R0, R4
4260FA:  ADD             SP, SP, #0x160
4260FC:  VPOP            {D8-D13}
426100:  ADD             SP, SP, #4
426102:  POP.W           {R8-R11}
426106:  POP             {R4-R7,PC}
426108:  VMOV            S0, R4
42610C:  B               loc_4260DA
