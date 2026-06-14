; =========================================================
; Game Engine Function: _ZN13BreakObject_c4InitEP7CObjectP5RwV3dfi
; Address            : 0x451B80 - 0x451D64
; =========================================================

451B80:  PUSH            {R4-R7,LR}
451B82:  ADD             R7, SP, #0xC
451B84:  PUSH.W          {R8-R11}
451B88:  SUB             SP, SP, #0x5C
451B8A:  MOV             R5, R1
451B8C:  MOV             R9, R3
451B8E:  LDR.W           R11, [R5,#0x18]
451B92:  MOV             R4, R2
451B94:  MOV             R8, R0
451B96:  CMP.W           R11, #0
451B9A:  BEQ             loc_451C8C
451B9C:  LDRB.W          R0, [R11]
451BA0:  CMP             R0, #1
451BA2:  BNE             loc_451C8C
451BA4:  LDR             R0, =(g_BreakablePlugin_ptr - 0x451BB0)
451BA6:  MOVS            R6, #0
451BA8:  LDR.W           R3, [R11,#0x18]
451BAC:  ADD             R0, PC; g_BreakablePlugin_ptr
451BAE:  LDR             R0, [R0]; g_BreakablePlugin
451BB0:  LDR.W           R10, [R0]
451BB4:  LDR.W           R1, [R3,R10]
451BB8:  CMP             R1, #0
451BBA:  BEQ.W           loc_451D5A
451BBE:  LDR             R2, [R7,#arg_0]
451BC0:  MOV             R0, R8
451BC2:  STR             R3, [SP,#0x78+var_5C]
451BC4:  BLX             j__ZN13BreakObject_c12SetBreakInfoEP11BreakInfo_ti; BreakObject_c::SetBreakInfo(BreakInfo_t *,int)
451BC8:  LDR.W           R0, [R11,#4]
451BCC:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
451BD0:  MOV             R11, R0
451BD2:  MOV             R0, R8
451BD4:  MOV             R1, R11
451BD6:  MOV             R2, R4
451BD8:  MOV             R3, R9
451BDA:  BLX             j__ZN13BreakObject_c12SetGroupDataEP11RwMatrixTagP5RwV3df; BreakObject_c::SetGroupData(RwMatrixTag *,RwV3d *,float)
451BDE:  MOVS            R0, #1
451BE0:  STRB.W          R0, [R8,#1]
451BE4:  LDR             R0, [R7,#arg_0]
451BE6:  STRB.W          R0, [R8]
451BEA:  STR.W           R6, [R8,#0xC]
451BEE:  LDR.W           R0, [R5,#0x164]
451BF2:  LDRB.W          R0, [R0,#0x4C]
451BF6:  STRB.W          R0, [R8,#2]
451BFA:  LDR             R0, [R5,#0x1C]
451BFC:  UBFX.W          R0, R0, #0xE, #1
451C00:  STRB.W          R0, [R8,#3]
451C04:  LDR             R0, [SP,#0x78+var_5C]
451C06:  LDR.W           R0, [R0,R10]
451C0A:  LDR             R0, [R0]
451C0C:  CMP             R0, #0
451C0E:  BEQ             loc_451C90
451C10:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x451C20)
451C12:  VMOV.F32        S12, #0.5
451C16:  LDRSH.W         R1, [R5,#0x26]
451C1A:  ADD             R2, SP, #0x78+var_58
451C1C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
451C1E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
451C20:  LDR.W           R0, [R0,R1,LSL#2]
451C24:  LDR             R0, [R0,#0x2C]
451C26:  VLDR            S4, [R0,#8]
451C2A:  VLDR            S10, [R0,#0x14]
451C2E:  VLDR            S0, [R0]
451C32:  VSUB.F32        S10, S10, S4
451C36:  VLDR            S6, [R0,#0xC]
451C3A:  VLDR            S2, [R0,#4]
451C3E:  VLDR            S8, [R0,#0x10]
451C42:  VSUB.F32        S6, S6, S0
451C46:  ADD             R0, SP, #0x78+var_48
451C48:  VSUB.F32        S8, S8, S2
451C4C:  VMUL.F32        S10, S10, S12
451C50:  VMUL.F32        S6, S6, S12
451C54:  VMUL.F32        S8, S8, S12
451C58:  VMOV.F32        S12, #0.25
451C5C:  VADD.F32        S4, S4, S10
451C60:  VADD.F32        S0, S0, S6
451C64:  VADD.F32        S2, S2, S8
451C68:  VADD.F32        S4, S4, S12
451C6C:  VSTR            S2, [SP,#0x78+var_58+4]
451C70:  VSTR            S0, [SP,#0x78+var_58]
451C74:  VSTR            S4, [SP,#0x78+var_50]
451C78:  LDR             R1, [R5,#0x14]
451C7A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
451C7E:  VLDR            D16, [SP,#0x78+var_48]
451C82:  LDR             R0, [SP,#0x78+var_40]
451C84:  STR             R0, [SP,#0x78+var_50]
451C86:  VSTR            D16, [SP,#0x78+var_58]
451C8A:  B               loc_451CC6
451C8C:  MOVS            R6, #0
451C8E:  B               loc_451D5A
451C90:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x451C9E)
451C92:  VMOV.F32        S0, #0.25
451C96:  VLDR            D16, [R11,#0x30]
451C9A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
451C9C:  LDR.W           R1, [R11,#0x38]
451CA0:  STR             R1, [SP,#0x78+var_50]
451CA2:  VSTR            D16, [SP,#0x78+var_58]
451CA6:  LDRSH.W         R1, [R5,#0x26]
451CAA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
451CAC:  LDR.W           R0, [R0,R1,LSL#2]
451CB0:  LDR             R0, [R0,#0x2C]
451CB2:  VLDR            S2, [R0,#8]
451CB6:  VADD.F32        S0, S2, S0
451CBA:  VLDR            S2, [SP,#0x78+var_50]
451CBE:  VADD.F32        S0, S2, S0
451CC2:  VSTR            S0, [SP,#0x78+var_50]
451CC6:  MOVS            R0, #0
451CC8:  MOVS            R1, #1
451CCA:  STRD.W          R1, R0, [SP,#0x78+var_78]; int
451CCE:  MOVS            R1, #0
451CD0:  STRD.W          R0, R0, [SP,#0x78+var_70]; int
451CD4:  ADD             R2, SP, #0x78+var_48; int
451CD6:  STRD.W          R0, R0, [SP,#0x78+var_68]; int
451CDA:  ADD             R3, SP, #0x78+var_4C; int
451CDC:  STR             R0, [SP,#0x78+var_60]; int
451CDE:  ADD             R0, SP, #0x78+var_58; CVector *
451CE0:  MOVT            R1, #0xC47A; int
451CE4:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
451CE8:  CMP             R0, #1
451CEA:  BNE             loc_451D4A
451CEC:  LDR             R0, [SP,#0x78+var_40]
451CEE:  STR.W           R0, [R8,#0x10]
451CF2:  VLDR            D16, [SP,#0x78+var_38]
451CF6:  VSTR            D16, [R8,#0x14]
451CFA:  VLDR            S0, [R8,#0x14]
451CFE:  LDR             R0, [SP,#0x78+var_30]
451D00:  VABS.F32        S2, S0
451D04:  VLDR            S0, =0.01
451D08:  STR.W           R0, [R8,#0x1C]
451D0C:  VCMPE.F32       S2, S0
451D10:  VMRS            APSR_nzcv, FPSCR
451D14:  BGE             loc_451D58
451D16:  VLDR            S2, [R8,#0x18]
451D1A:  VABS.F32        S2, S2
451D1E:  VCMPE.F32       S2, S0
451D22:  VMRS            APSR_nzcv, FPSCR
451D26:  BGE             loc_451D58
451D28:  VLDR            S2, [R8,#0x1C]
451D2C:  VABS.F32        S2, S2
451D30:  VCMPE.F32       S2, S0
451D34:  VMRS            APSR_nzcv, FPSCR
451D38:  BGE             loc_451D58
451D3A:  MOVS            R0, #0
451D3C:  MOV.W           R1, #0x3F800000
451D40:  STRD.W          R0, R0, [R8,#0x14]
451D44:  STR.W           R1, [R8,#0x1C]
451D48:  B               loc_451D58
451D4A:  ADR             R0, dword_451D70
451D4C:  VLD1.64         {D16-D17}, [R0@128]
451D50:  ADD.W           R0, R8, #0x10
451D54:  VST1.32         {D16-D17}, [R0]
451D58:  MOVS            R6, #1
451D5A:  MOV             R0, R6
451D5C:  ADD             SP, SP, #0x5C ; '\'
451D5E:  POP.W           {R8-R11}
451D62:  POP             {R4-R7,PC}
