; =========================================================
; Game Engine Function: _ZN9CRenderer19ScanBigBuildingListEii
; Address            : 0x410D6C - 0x410F5C
; =========================================================

410D6C:  CMP             R1, #0x1D
410D6E:  IT LE
410D70:  CMPLE           R0, #0x1D
410D72:  BGT.W           locret_410F5A
410D76:  ORR.W           R2, R1, R0
410D7A:  CMP             R2, #0
410D7C:  IT LT
410D7E:  BXLT            LR
410D80:  PUSH            {R4-R7,LR}
410D82:  ADD             R7, SP, #0x14+var_8
410D84:  PUSH.W          {R8-R11}
410D88:  SUB             SP, SP, #4
410D8A:  VPUSH           {D8}
410D8E:  SUB             SP, SP, #0x18
410D90:  SUB.W           R2, R1, #0xF
410D94:  VLDR            S4, =200.0
410D98:  LDR             R3, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x410DAA)
410D9A:  RSB.W           R1, R1, R1,LSL#4
410D9E:  VMOV            S0, R2
410DA2:  SUB.W           R2, R0, #0xF
410DA6:  ADD             R3, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
410DA8:  ADD.W           R0, R0, R1,LSL#1
410DAC:  VMOV            S2, R2
410DB0:  LDR             R2, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x410DC0)
410DB2:  VCVT.F32.S32    S0, S0
410DB6:  LDR             R3, [R3]; CWorld::ms_aLodPtrLists ...
410DB8:  VCVT.F32.S32    S2, S2
410DBC:  ADD             R2, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
410DBE:  MOV.W           R8, #0
410DC2:  LDR             R2, [R2]; CRenderer::ms_vecCameraPosition ...
410DC4:  LDR.W           R6, [R3,R0,LSL#2]
410DC8:  VLDR            S6, [R2,#4]
410DCC:  VMUL.F32        S0, S0, S4
410DD0:  VMUL.F32        S2, S2, S4
410DD4:  VLDR            S4, =100.0
410DD8:  VADD.F32        S0, S0, S4
410DDC:  VADD.F32        S2, S2, S4
410DE0:  VLDR            S4, [R2]
410DE4:  VSUB.F32        S0, S0, S6
410DE8:  VSUB.F32        S2, S2, S4
410DEC:  VMUL.F32        S4, S0, S0
410DF0:  VMUL.F32        S6, S2, S2
410DF4:  VADD.F32        S4, S6, S4
410DF8:  VLDR            S6, =80000.0
410DFC:  VCMPE.F32       S4, S6
410E00:  VMRS            APSR_nzcv, FPSCR
410E04:  BLT             loc_410E4A
410E06:  VMOV            R0, S2
410E0A:  VMOV            R1, S0; x
410E0E:  EOR.W           R0, R0, #0x80000000; y
410E12:  BLX             atan2f
410E16:  LDR             R1, =(_ZN9CRenderer17ms_fCameraHeadingE_ptr - 0x410E20)
410E18:  VMOV            S0, R0
410E1C:  ADD             R1, PC; _ZN9CRenderer17ms_fCameraHeadingE_ptr
410E1E:  LDR             R1, [R1]; float
410E20:  VLDR            S2, [R1]
410E24:  VSUB.F32        S0, S0, S2
410E28:  VMOV            R0, S0; this
410E2C:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
410E30:  BIC.W           R0, R0, #0x80000000
410E34:  VLDR            S0, =0.7
410E38:  VMOV            S2, R0
410E3C:  VCMPE.F32       S2, S0
410E40:  VMRS            APSR_nzcv, FPSCR
410E44:  IT GT
410E46:  MOVGT.W         R8, #1
410E4A:  CMP             R6, #0
410E4C:  BEQ             loc_410F4A
410E4E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x410E5A)
410E50:  ADD.W           R9, SP, #0x48+var_34
410E54:  LDR             R1, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x410E60)
410E56:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
410E58:  VLDR            S16, =0.01
410E5C:  ADD             R1, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
410E5E:  LDR             R4, [R0]; CWorld::ms_nCurrentScanCode ...
410E60:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x410E66)
410E62:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
410E64:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
410E66:  STR             R0, [SP,#0x48+var_38]
410E68:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x410E6E)
410E6A:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
410E6C:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities ...
410E6E:  STR             R0, [SP,#0x48+var_3C]
410E70:  LDR             R0, [R1]; CRenderer::ms_aVisibleEntityPtrs ...
410E72:  STR             R0, [SP,#0x48+var_40]
410E74:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x410E7C)
410E76:  LDR             R1, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x410E7E)
410E78:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
410E7A:  ADD             R1, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
410E7C:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleLods ...
410E7E:  STR             R0, [SP,#0x48+var_44]
410E80:  LDR             R0, [R1]; CRenderer::ms_aVisibleLodPtrs ...
410E82:  STR             R0, [SP,#0x48+var_48]
410E84:  LDR             R0, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x410E8A)
410E86:  ADD             R0, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
410E88:  LDR.W           R11, [R0]; CStreaming::ms_disableStreaming ...
410E8C:  LDR             R5, [R6]
410E8E:  LDRH            R0, [R4]; CWorld::ms_nCurrentScanCode
410E90:  LDRH            R1, [R5,#0x30]
410E92:  CMP             R1, R0
410E94:  BEQ             loc_410F44
410E96:  STRH            R0, [R5,#0x30]
410E98:  MOV             R0, R5; this
410E9A:  MOV             R1, R9; CEntity *
410E9C:  BLX             j__ZN9CRenderer26SetupBigBuildingVisibilityEP7CEntityRf; CRenderer::SetupBigBuildingVisibility(CEntity *,float &)
410EA0:  CMP             R0, #1
410EA2:  BEQ             loc_410EC4
410EA4:  CMP             R0, #3
410EA6:  BNE             loc_410F44
410EA8:  LDRB.W          R0, [R11]; CStreaming::ms_disableStreaming
410EAC:  CMP             R0, #0
410EAE:  IT NE
410EB0:  MOVNE           R0, #1
410EB2:  ORRS.W          R0, R0, R8
410EB6:  BNE             loc_410F44
410EB8:  LDRSH.W         R0, [R5,#0x26]; this
410EBC:  MOVS            R1, #0; int
410EBE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
410EC2:  B               loc_410F44
410EC4:  LDRSH.W         R0, [R5,#0x26]
410EC8:  MOV             R10, R5
410ECA:  LDR             R1, [SP,#0x48+var_38]
410ECC:  VLDR            S0, [SP,#0x48+var_34]
410ED0:  LDR.W           R0, [R1,R0,LSL#2]
410ED4:  VADD.F32        S0, S0, S16
410ED8:  LDRH            R1, [R0,#0x28]
410EDA:  BIC.W           R1, R1, #1
410EDE:  STRH            R1, [R0,#0x28]
410EE0:  LDR.W           R0, [R10,#0x1C]!
410EE4:  TST.W           R0, #0x8000
410EE8:  BNE             loc_410F0A
410EEA:  LSLS            R0, R0, #0x11
410EEC:  BPL             loc_410F16
410EEE:  VMOV            R1, S0; CEntity *
410EF2:  MOV             R0, R5; this
410EF4:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
410EF8:  CMP             R0, #1
410EFA:  BNE             loc_410F16
410EFC:  LDR.W           R0, [R10]
410F00:  BIC.W           R0, R0, #0x8000
410F04:  STR.W           R0, [R10]
410F08:  B               loc_410F38
410F0A:  VMOV            R1, S0; CEntity *
410F0E:  MOV             R0, R5; this
410F10:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
410F14:  CBNZ            R0, loc_410F38
410F16:  LDRB.W          R0, [R5,#0x3B]
410F1A:  CBZ             R0, loc_410F2A
410F1C:  LDRB.W          R0, [R10,#2]
410F20:  LSLS            R0, R0, #0x1B
410F22:  BMI             loc_410F2A
410F24:  LDR             R1, [SP,#0x48+var_44]
410F26:  LDR             R2, [SP,#0x48+var_48]
410F28:  B               loc_410F2E
410F2A:  LDR             R1, [SP,#0x48+var_3C]
410F2C:  LDR             R2, [SP,#0x48+var_40]
410F2E:  LDR             R0, [R1]
410F30:  STR.W           R5, [R2,R0,LSL#2]
410F34:  ADDS            R0, #1
410F36:  STR             R0, [R1]
410F38:  LDR.W           R0, [R10]
410F3C:  BIC.W           R0, R0, #0x20000
410F40:  STR.W           R0, [R10]
410F44:  LDR             R6, [R6,#4]
410F46:  CMP             R6, #0
410F48:  BNE             loc_410E8C
410F4A:  ADD             SP, SP, #0x18
410F4C:  VPOP            {D8}
410F50:  ADD             SP, SP, #4
410F52:  POP.W           {R8-R11}
410F56:  POP.W           {R4-R7,LR}
410F5A:  BX              LR
