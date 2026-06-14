; =========================================================
; Game Engine Function: _ZNK15CEventAttractor10AffectsPedEP4CPed
; Address            : 0x374CCC - 0x374EEC
; =========================================================

374CCC:  PUSH            {R4-R7,LR}
374CCE:  ADD             R7, SP, #0xC
374CD0:  PUSH.W          {R8-R10}
374CD4:  VPUSH           {D8-D9}
374CD8:  SUB             SP, SP, #0x30
374CDA:  MOV             R8, R1
374CDC:  MOV             R9, R0
374CDE:  MOV             R0, R8; this
374CE0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
374CE4:  CMP             R0, #1
374CE6:  BNE             loc_374D66
374CE8:  LDR.W           R0, [R9]
374CEC:  LDR             R1, [R0,#8]
374CEE:  MOV             R0, R9
374CF0:  BLX             R1
374CF2:  CMP             R0, #0x1B
374CF4:  ITT EQ
374CF6:  LDREQ.W         R0, [R9,#0x14]
374CFA:  CMPEQ           R0, #0
374CFC:  BEQ             loc_374D66
374CFE:  LDR.W           R0, [R9]
374D02:  LDR             R1, [R0,#8]
374D04:  MOV             R0, R9
374D06:  BLX             R1
374D08:  CMP             R0, #0x1B
374D0A:  BNE             loc_374D58
374D0C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x374D18)
374D0E:  MOVS            R6, #0
374D10:  LDR.W           R1, [R9,#0x14]
374D14:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
374D16:  LDRSH.W         R1, [R1,#0x26]
374D1A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
374D1C:  LDR.W           R10, [R0,R1,LSL#2]
374D20:  LDRB.W          R0, [R10,#0x23]
374D24:  CBZ             R0, loc_374D68
374D26:  LDR.W           R4, [R9,#0x10]
374D2A:  MOVS            R5, #0
374D2C:  MOV             R0, R10; this
374D2E:  MOV             R1, R5; int
374D30:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
374D34:  LDRB            R1, [R4,#0xC]
374D36:  EORS            R0, R4
374D38:  EOR.W           R1, R1, #3
374D3C:  ORRS            R0, R1
374D3E:  MOV.W           R0, #0
374D42:  IT EQ
374D44:  MOVEQ           R0, #1
374D46:  ORRS            R6, R0
374D48:  CBNZ            R0, loc_374D54
374D4A:  LDRB.W          R0, [R10,#0x23]
374D4E:  ADDS            R5, #1
374D50:  CMP             R5, R0
374D52:  BLT             loc_374D2C
374D54:  LSLS            R0, R6, #0x1F
374D56:  BEQ             loc_374D66
374D58:  LDR.W           R0, [R8,#0x440]; this
374D5C:  MOVW            R1, #0x4BF; int
374D60:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
374D64:  CBZ             R0, loc_374D76
374D66:  MOVS            R6, #0
374D68:  MOV             R0, R6
374D6A:  ADD             SP, SP, #0x30 ; '0'
374D6C:  VPOP            {D8-D9}
374D70:  POP.W           {R8-R10}
374D74:  POP             {R4-R7,PC}
374D76:  LDR.W           R0, [R8,#0x59C]
374D7A:  CMP             R0, #6
374D7C:  BNE             loc_374DB4
374D7E:  LDR.W           R0, [R9]
374D82:  LDR             R1, [R0,#8]
374D84:  MOV             R0, R9
374D86:  BLX             R1
374D88:  CMP             R0, #0x1B
374D8A:  BNE             loc_374DB4
374D8C:  MOV.W           R0, #0xFFFFFFFF; int
374D90:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
374D94:  LDR             R0, [R0,#0x2C]
374D96:  CMP             R0, #0
374D98:  BNE             loc_374D66
374D9A:  LDR.W           R1, [R9,#0x10]
374D9E:  LDRB.W          R0, [R1,#0x34]
374DA2:  CMP             R0, #5
374DA4:  BNE             loc_374D66
374DA6:  LDRSH.W         R0, [R8,#0x26]; this
374DAA:  ADDS            R1, #0x38 ; '8'; char *
374DAC:  BLX             j__ZN11CPopulation32PedMICanBeCreatedAtThisAttractorEiPc; CPopulation::PedMICanBeCreatedAtThisAttractor(int,char *)
374DB0:  CMP             R0, #1
374DB2:  BNE             loc_374D66
374DB4:  LDR.W           R0, [R8,#0x440]
374DB8:  ADDS            R0, #4; this
374DBA:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
374DBE:  CBZ             R0, loc_374DD0
374DC0:  LDRB.W          R1, [R9,#0x18]
374DC4:  CBNZ            R1, loc_374DD0
374DC6:  LDR             R1, [R0]
374DC8:  LDR             R1, [R1,#0x14]
374DCA:  BLX             R1
374DCC:  CMP             R0, #0xE9
374DCE:  BEQ             loc_374D66
374DD0:  LDR.W           R0, [R9,#0x10]
374DD4:  LDRB.W          R0, [R0,#0x34]
374DD8:  CMP             R0, #4
374DDA:  BNE             loc_374DF4
374DDC:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x374DE6)
374DDE:  VLDR            S2, =0.2
374DE2:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
374DE4:  LDR             R0, [R0]; CWeather::Rain ...
374DE6:  VLDR            S0, [R0]
374DEA:  VCMPE.F32       S0, S2
374DEE:  VMRS            APSR_nzcv, FPSCR
374DF2:  BLT             loc_374D66
374DF4:  LDRB.W          R0, [R9,#0x18]
374DF8:  CBZ             R0, loc_374DFE
374DFA:  MOVS            R6, #1
374DFC:  B               loc_374D68
374DFE:  BLX             rand
374E02:  UXTH            R0, R0
374E04:  VLDR            S16, =0.000015259
374E08:  VMOV            S0, R0
374E0C:  VLDR            S18, =100.0
374E10:  VCVT.F32.S32    S0, S0
374E14:  LDR.W           R0, [R9,#0x10]
374E18:  VMUL.F32        S0, S0, S16
374E1C:  VMUL.F32        S0, S0, S18
374E20:  VCVT.S32.F32    S0, S0
374E24:  LDRB.W          R0, [R0,#0x35]
374E28:  VMOV            R1, S0
374E2C:  CMP             R1, R0
374E2E:  BGE             loc_374D66
374E30:  BLX             rand
374E34:  UXTH            R0, R0
374E36:  VMOV            S0, R0
374E3A:  VCVT.F32.S32    S0, S0
374E3E:  LDR.W           R0, [R9,#0x10]
374E42:  VMUL.F32        S0, S0, S16
374E46:  VMUL.F32        S0, S0, S18
374E4A:  VCVT.S32.F32    S0, S0
374E4E:  LDRB.W          R0, [R0,#0x36]
374E52:  VMOV            R1, S0
374E56:  CMP             R1, R0
374E58:  BGE             loc_374DFA
374E5A:  LDR             R0, =(g_ikChainMan_ptr - 0x374E62)
374E5C:  MOV             R1, R8; CPed *
374E5E:  ADD             R0, PC; g_ikChainMan_ptr
374E60:  LDR             R0, [R0]; g_ikChainMan ; this
374E62:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
374E66:  CMP             R0, #0
374E68:  BNE.W           loc_374D66
374E6C:  BLX             rand
374E70:  UXTH            R0, R0
374E72:  VLDR            S2, =2000.0
374E76:  VMOV            S0, R0
374E7A:  VCVT.F32.S32    S0, S0
374E7E:  LDR.W           R4, [R9,#0x14]
374E82:  VMUL.F32        S0, S0, S16
374E86:  VMUL.F32        S0, S0, S2
374E8A:  VCVT.S32.F32    S0, S0
374E8E:  LDR             R1, [R4,#0x14]
374E90:  CMP             R1, #0
374E92:  VMOV            R0, S0
374E96:  ADD.W           R5, R0, #0x7D0
374E9A:  BNE             loc_374EAC
374E9C:  MOV             R0, R4; this
374E9E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
374EA2:  LDR             R1, [R4,#0x14]; CMatrix *
374EA4:  ADDS            R0, R4, #4; this
374EA6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
374EAA:  LDR             R1, [R4,#0x14]
374EAC:  ADD             R4, SP, #0x58+var_34
374EAE:  LDR.W           R2, [R9,#0x10]
374EB2:  MOV             R0, R4
374EB4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
374EB8:  LDR             R0, =(g_ikChainMan_ptr - 0x374EC8)
374EBA:  MOV.W           R3, #0xFFFFFFFF
374EBE:  MOVS            R6, #0
374EC0:  MOV.W           LR, #0x1F4
374EC4:  ADD             R0, PC; g_ikChainMan_ptr
374EC6:  MOV.W           R2, #0x3E800000
374ECA:  ADR             R1, aCeventattracto; "CEventAttractor"
374ECC:  STRD.W          R5, R3, [SP,#0x58+var_58]; int
374ED0:  LDR             R0, [R0]; g_ikChainMan ; int
374ED2:  MOV.W           R12, #3
374ED6:  STRD.W          R4, R6, [SP,#0x58+var_50]; int
374EDA:  MOVS            R3, #0; int
374EDC:  STRD.W          R2, LR, [SP,#0x58+var_48]; float
374EE0:  MOV             R2, R8; CPed *
374EE2:  STRD.W          R12, R6, [SP,#0x58+var_40]; int
374EE6:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
374EEA:  B               loc_374D68
