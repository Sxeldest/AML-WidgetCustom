; =========================================================
; Game Engine Function: _ZN11FxEmitter_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cffh
; Address            : 0x368CA0 - 0x368E16
; =========================================================

368CA0:  PUSH            {R4-R7,LR}
368CA2:  ADD             R7, SP, #0xC
368CA4:  PUSH.W          {R8-R11}
368CA8:  SUB             SP, SP, #4
368CAA:  VPUSH           {D8-D10}
368CAE:  SUB             SP, SP, #0x80
368CB0:  STR             R2, [SP,#0xB8+var_A4]
368CB2:  MOV             R8, R0
368CB4:  MOV             R6, R1
368CB6:  LDRD.W          R0, R1, [R8,#4]
368CBA:  LDR             R2, [R1,#8]
368CBC:  MOV             R10, R3
368CBE:  LDRB.W          R1, [R1,#0x56]
368CC2:  ADDS            R0, #0x2C ; ','
368CC4:  MOVS            R5, #0
368CC6:  LDR             R3, [R2,#0xC]
368CC8:  ADD             R2, SP, #0xB8+var_A0
368CCA:  STRD.W          R1, R2, [SP,#0xB8+var_B8]; float
368CCE:  MOVS            R1, #0
368CD0:  MOVS            R2, #0
368CD2:  BLX             j__ZN15FxInfoManager_c19ProcessEmissionInfoEfffhP14EmissionInfo_t; FxInfoManager_c::ProcessEmissionInfo(float,float,float,uchar,EmissionInfo_t *)
368CD6:  LDR             R0, =(g_fxMan_ptr - 0x368CDC)
368CD8:  ADD             R0, PC; g_fxMan_ptr
368CDA:  LDR             R4, [R0]; g_fxMan
368CDC:  MOV             R0, R4; this
368CDE:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
368CE2:  MOV             R9, R0
368CE4:  MOV             R0, R4; this
368CE6:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
368CEA:  MOV             R11, R0
368CEC:  MOV             R0, R4; this
368CEE:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
368CF2:  MOV             R4, R0
368CF4:  MOV.W           R0, #0x3F800000
368CF8:  STRD.W          R0, R5, [R4]
368CFC:  STRD.W          R5, R0, [R4,#0x10]
368D00:  STR             R5, [R4,#8]
368D02:  STR             R5, [R4,#0x18]
368D04:  STRD.W          R5, R5, [R4,#0x20]
368D08:  STR             R0, [R4,#0x28]
368D0A:  STRD.W          R5, R5, [R4,#0x30]
368D0E:  STR             R5, [R4,#0x38]
368D10:  LDR             R0, [R4,#0xC]
368D12:  ORR.W           R0, R0, #0x20000
368D16:  ORR.W           R0, R0, #3
368D1A:  STR             R0, [R4,#0xC]
368D1C:  LDR             R0, [R6]
368D1E:  STR             R0, [R4,#0x30]
368D20:  LDR             R0, [R6,#4]
368D22:  STR             R0, [R4,#0x34]
368D24:  LDR             R0, [R6,#8]
368D26:  STR             R0, [R4,#0x38]
368D28:  MOV             R0, R4
368D2A:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
368D2E:  LDR.W           R0, [R8,#8]
368D32:  VMOV            S20, R10
368D36:  VLDR            S18, [R7,#arg_8]
368D3A:  VLDR            S16, [R7,#arg_4]
368D3E:  LDR             R2, [R0,#0xC]
368D40:  CBZ             R2, loc_368D4C
368D42:  MOV             R0, R11
368D44:  MOV             R1, R4
368D46:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
368D4A:  B               loc_368D80
368D4C:  MOV             R0, R4
368D4E:  ADD.W           R1, R4, #0x20 ; ' '
368D52:  VLD1.32         {D16-D17}, [R0]!
368D56:  VLD1.32         {D20-D21}, [R0]
368D5A:  ADD.W           R0, R4, #0x30 ; '0'
368D5E:  VLD1.32         {D22-D23}, [R0]
368D62:  ADD.W           R0, R11, #0x30 ; '0'
368D66:  VLD1.32         {D18-D19}, [R1]
368D6A:  VST1.32         {D22-D23}, [R0]
368D6E:  ADD.W           R0, R11, #0x20 ; ' '
368D72:  VST1.32         {D18-D19}, [R0]
368D76:  MOV             R0, R11
368D78:  VST1.32         {D16-D17}, [R0]!
368D7C:  VST1.32         {D20-D21}, [R0]
368D80:  LDR             R0, =(g_fxMan_ptr - 0x368D86)
368D82:  ADD             R0, PC; g_fxMan_ptr
368D84:  LDR             R6, [R0]; g_fxMan
368D86:  MOV             R0, R6; this
368D88:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
368D8C:  MOV             R5, R0
368D8E:  LDR.W           R0, [R8,#4]
368D92:  MOV             R1, R5
368D94:  BLX             j__ZN10FxPrimBP_c11GetRWMatrixEP11RwMatrixTag; FxPrimBP_c::GetRWMatrix(RwMatrixTag *)
368D98:  MOV             R0, R9
368D9A:  MOV             R1, R5
368D9C:  MOV             R2, R11
368D9E:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
368DA2:  MOV             R0, R6
368DA4:  MOV             R1, R5
368DA6:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
368DAA:  LDR             R0, [R7,#arg_C]
368DAC:  ADD             R1, SP, #0xB8+var_A0; int
368DAE:  LDR             R3, [SP,#0xB8+var_A4]; int
368DB0:  MOV             R2, R9; int
368DB2:  STR             R0, [SP,#0xB8+var_AC]; int
368DB4:  LDR             R0, [R7,#arg_0]
368DB6:  VSTR            S18, [SP,#0xB8+var_B0]
368DBA:  STR             R0, [SP,#0xB8+var_B4]; int
368DBC:  MOV             R0, R8; int
368DBE:  VSTR            S20, [SP,#0xB8+var_B8]
368DC2:  BLX             j__ZN11FxEmitter_c14CreateParticleEP14EmissionInfo_tP11RwMatrixTagP5RwV3dfP11FxPrtMult_cfh; FxEmitter_c::CreateParticle(EmissionInfo_t *,RwMatrixTag *,RwV3d *,float,FxPrtMult_c *,float,uchar)
368DC6:  VCMPE.F32       S16, #0.0
368DCA:  VMRS            APSR_nzcv, FPSCR
368DCE:  BLT             loc_368DEA
368DD0:  CMP             R0, #0
368DD2:  ITTTT NE
368DD4:  VMOVNE.F32      S0, #0.5
368DD8:  VMULNE.F32      S0, S16, S0
368DDC:  VCVTNE.U32.F32  S0, S0
368DE0:  VMOVNE          R1, S0
368DE4:  IT NE
368DE6:  STRBNE.W        R1, [R0,#0x36]
368DEA:  LDR             R0, =(g_fxMan_ptr - 0x368DF2)
368DEC:  MOV             R1, R4
368DEE:  ADD             R0, PC; g_fxMan_ptr
368DF0:  LDR             R5, [R0]; g_fxMan
368DF2:  MOV             R0, R5
368DF4:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
368DF8:  MOV             R0, R5
368DFA:  MOV             R1, R11
368DFC:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
368E00:  MOV             R0, R5
368E02:  MOV             R1, R9
368E04:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
368E08:  ADD             SP, SP, #0x80
368E0A:  VPOP            {D8-D10}
368E0E:  ADD             SP, SP, #4
368E10:  POP.W           {R8-R11}
368E14:  POP             {R4-R7,PC}
