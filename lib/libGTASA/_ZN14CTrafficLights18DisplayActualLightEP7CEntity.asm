; =========================================================
; Game Engine Function: _ZN14CTrafficLights18DisplayActualLightEP7CEntity
; Address            : 0x362B64 - 0x363612
; =========================================================

362B64:  PUSH            {R4-R7,LR}
362B66:  ADD             R7, SP, #0xC
362B68:  PUSH.W          {R8-R11}
362B6C:  SUB             SP, SP, #4
362B6E:  VPUSH           {D8-D13}
362B72:  SUB             SP, SP, #0x120
362B74:  MOV             R9, R0
362B76:  LDR.W           R0, [R9,#0x14]
362B7A:  CBNZ            R0, loc_362B92
362B7C:  MOV             R0, R9; this
362B7E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
362B82:  LDR.W           R1, [R9,#0x14]; CMatrix *
362B86:  ADD.W           R0, R9, #4; this
362B8A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
362B8E:  LDR.W           R0, [R9,#0x14]
362B92:  VLDR            S0, =0.96
362B96:  VLDR            S2, [R0,#0x28]
362B9A:  VCMPE.F32       S2, S0
362B9E:  VMRS            APSR_nzcv, FPSCR
362BA2:  BLT.W           loc_3635FE
362BA6:  LDRB.W          R0, [R9,#0x1D]
362BAA:  LSLS            R0, R0, #0x1E
362BAC:  BMI.W           loc_3635FE
362BB0:  LDR.W           R0, =(MI_TRAFFICLIGHTS_3_ptr - 0x362BB8)
362BB4:  ADD             R0, PC; MI_TRAFFICLIGHTS_3_ptr
362BB6:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_3
362BB8:  LDRSH.W         R0, [R9,#0x26]
362BBC:  LDRH            R1, [R1]
362BBE:  CMP             R0, R1
362BC0:  BEQ             loc_362BFC
362BC2:  LDR.W           R1, =(MI_TRAFFICLIGHTS_4_ptr - 0x362BCA)
362BC6:  ADD             R1, PC; MI_TRAFFICLIGHTS_4_ptr
362BC8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_4
362BCA:  LDRH            R1, [R1]
362BCC:  CMP             R0, R1
362BCE:  BEQ             loc_362BFC
362BD0:  LDR.W           R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x362BD8)
362BD4:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
362BD6:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
362BD8:  LDRH            R1, [R1]
362BDA:  CMP             R0, R1
362BDC:  BEQ             loc_362BFC
362BDE:  LDR.W           R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x362BE6)
362BE2:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
362BE4:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
362BE6:  LDRH            R1, [R1]
362BE8:  CMP             R0, R1
362BEA:  BEQ             loc_362BFC
362BEC:  LDR.W           R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x362BF4)
362BF0:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
362BF2:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
362BF4:  LDRH            R1, [R1]; CEntity *
362BF6:  CMP             R0, R1
362BF8:  BNE.W           loc_36360C
362BFC:  MOVS            R6, #0xD
362BFE:  MOV             R0, R9; this
362C00:  BLX             j__ZN14CTrafficLights20FindTrafficLightTypeEP7CEntity; CTrafficLights::FindTrafficLightType(CEntity *)
362C04:  MOV             R4, R0
362C06:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362C0A:  CMP             R4, #1
362C0C:  BNE             loc_362C1A
362C0E:  CMP             R0, #1
362C10:  BNE             loc_362C36
362C12:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362C1A)
362C16:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362C18:  B               loc_362C24
362C1A:  CMP             R0, #1
362C1C:  BNE             loc_362C70
362C1E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362C26)
362C22:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362C24:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362C26:  MOVS            R1, #2
362C28:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362C2A:  AND.W           R0, R1, R0,LSR#9
362C2E:  ORR.W           R0, R0, #1
362C32:  STR             R0, [SP,#0x170+var_F0]
362C34:  B               loc_362CC4
362C36:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x362C3E)
362C3A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
362C3C:  LDR             R4, [R0]; CCheat::m_aCheatsActive ...
362C3E:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362C42:  LDRB.W          R1, [R4,#(byte_796819 - 0x7967F4)]
362C46:  MOVS            R2, #0
362C48:  STR             R2, [SP,#0x170+var_F0]
362C4A:  CMP             R1, #0
362C4C:  IT EQ
362C4E:  CMPEQ           R0, #0
362C50:  BNE             loc_362CC4
362C52:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362C5E)
362C56:  MOVW            R1, #0x1388
362C5A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362C5C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362C5E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362C60:  UBFX.W          R0, R0, #1, #0xE
362C64:  CMP             R0, R1
362C66:  BCC             loc_362CB0
362C68:  MOVS            R2, #2
362C6A:  MOVW            R1, #0x1770
362C6E:  B               loc_362CBC
362C70:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x362C78)
362C74:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
362C76:  LDR             R4, [R0]; CCheat::m_aCheatsActive ...
362C78:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362C7C:  LDRB.W          R1, [R4,#(byte_796819 - 0x7967F4)]
362C80:  MOVS            R2, #0
362C82:  STR             R2, [SP,#0x170+var_F0]
362C84:  CMP             R1, #0
362C86:  IT EQ
362C88:  CMPEQ           R0, #0
362C8A:  BNE             loc_362CC4
362C8C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362C98)
362C90:  MOVW            R1, #0x1770
362C94:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362C96:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362C98:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362C9A:  UBFX.W          R0, R0, #1, #0xE
362C9E:  CMP             R0, R1
362CA0:  BCS             loc_362CA8
362CA2:  MOVS            R0, #2
362CA4:  STR             R0, [SP,#0x170+var_F0]
362CA6:  B               loc_362CC4
362CA8:  MOVW            R1, #0x2AF8
362CAC:  CMP             R0, R1
362CAE:  BCS             loc_362CB6
362CB0:  MOVS            R0, #0
362CB2:  STR             R0, [SP,#0x170+var_F0]
362CB4:  B               loc_362CC4
362CB6:  MOVS            R2, #2
362CB8:  MOVW            R1, #0x2EE0
362CBC:  CMP             R0, R1
362CBE:  IT CC
362CC0:  MOVCC           R2, #1
362CC2:  STR             R2, [SP,#0x170+var_F0]
362CC4:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x362CD0)
362CC8:  LDRSH.W         R1, [R9,#0x26]
362CCC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
362CCE:  LDR             R2, [R0]; CModelInfo::ms_modelInfoPtrs ...
362CD0:  LDR.W           R0, [R9,#0x14]
362CD4:  LDR.W           R8, [R2,R1,LSL#2]
362CD8:  CBNZ            R0, loc_362CF0
362CDA:  MOV             R0, R9; this
362CDC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
362CE0:  LDR.W           R1, [R9,#0x14]; CMatrix *
362CE4:  ADD.W           R0, R9, #4; this
362CE8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
362CEC:  LDR.W           R0, [R9,#0x14]
362CF0:  LDR.W           R1, =(TheCamera_ptr - 0x362CFC)
362CF4:  VLDR            S0, [R0,#0x10]
362CF8:  ADD             R1, PC; TheCamera_ptr
362CFA:  VLDR            S4, [R0,#0x14]
362CFE:  VLDR            S2, [R0,#0x18]
362D02:  LDR             R1, [R1]; TheCamera
362D04:  LDRB.W          R5, [R8,#0x23]
362D08:  ADD.W           R0, R1, #0x910
362D0C:  CMP             R5, #0
362D0E:  VLDR            S6, [R0]
362D12:  ADDW            R0, R1, #0x90C
362D16:  VLDR            S8, [R0]
362D1A:  ADDW            R0, R1, #0x914
362D1E:  VLDR            S10, [R0]
362D22:  MOV.W           R0, #0
362D26:  STRD.W          R0, R0, [SP,#0x170+var_5C]
362D2A:  STR             R0, [SP,#0x170+var_54]
362D2C:  BEQ.W           loc_3631A2
362D30:  VMUL.F32        S4, S6, S4
362D34:  ADD.W           R1, R9, #4
362D38:  VMUL.F32        S0, S8, S0
362D3C:  STR             R1, [SP,#0x170+var_F4]
362D3E:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x362D50)
362D42:  VMUL.F32        S2, S10, S2
362D46:  VMOV.F32        S16, #10.0
362D4A:  LDR             R0, [SP,#0x170+var_F0]
362D4C:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
362D4E:  VMOV.F32        S20, #1.75
362D52:  LDR.W           R2, =(aTrafficLightColoursR_ptr - 0x362D66)
362D56:  ADD             R0, R6
362D58:  LDR.W           R10, [R1]; MobileSettings::settings ...
362D5C:  MOVS            R6, #0
362D5E:  LDR.W           R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x362D70)
362D62:  ADD             R2, PC; aTrafficLightColoursR_ptr
362D64:  VADD.F32        S0, S0, S4
362D68:  LDR.W           R3, =(aTrafficLightColoursG_ptr - 0x362D76)
362D6C:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
362D6E:  VLDR            S22, =0.7
362D72:  ADD             R3, PC; aTrafficLightColoursG_ptr
362D74:  UXTB            R0, R0
362D76:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
362D78:  STR             R1, [SP,#0x170+var_104]
362D7A:  LDR.W           R1, =(aTrafficLightColoursB_ptr - 0x362D88)
362D7E:  LDR             R3, [R3]; aTrafficLightColoursG
362D80:  VADD.F32        S18, S0, S2
362D84:  ADD             R1, PC; aTrafficLightColoursB_ptr
362D86:  STR             R3, [SP,#0x170+var_108]
362D88:  LDR             R1, [R1]; aTrafficLightColoursB
362D8A:  STR             R1, [SP,#0x170+var_10C]
362D8C:  LDR             R1, [R2]; aTrafficLightColoursR
362D8E:  STR             R1, [SP,#0x170+var_110]
362D90:  STR             R0, [SP,#0x170+var_114]
362D92:  STR.W           R8, [SP,#0x170+var_F8]
362D96:  STRD.W          R10, R5, [SP,#0x170+var_100]
362D9A:  MOV             R0, R8; this
362D9C:  MOV             R1, R6; int
362D9E:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
362DA2:  MOV             R4, R0
362DA4:  LDRB            R0, [R4,#0xC]
362DA6:  CMP             R0, #0
362DA8:  BNE.W           loc_362FB0
362DAC:  LDR.W           R0, [R10,#8]
362DB0:  CMP             R0, #2
362DB2:  BLT.W           loc_362FB0
362DB6:  LDR.W           R1, [R9,#0x14]
362DBA:  CBNZ            R1, loc_362DD0
362DBC:  MOV             R0, R9; this
362DBE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
362DC2:  LDR.W           R1, [R9,#0x14]; CMatrix *
362DC6:  LDR             R0, [SP,#0x170+var_F4]; this
362DC8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
362DCC:  LDR.W           R1, [R9,#0x14]
362DD0:  ADD             R0, SP, #0x170+var_68
362DD2:  MOV             R2, R4
362DD4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
362DD8:  VLDR            S0, [SP,#0x170+var_5C]
362DDC:  VLDR            S6, [SP,#0x170+var_68]
362DE0:  VLDR            S2, [SP,#0x170+var_58]
362DE4:  VLDR            S8, [SP,#0x170+var_64]
362DE8:  VADD.F32        S0, S6, S0
362DEC:  VLDR            S4, [SP,#0x170+var_54]
362DF0:  VLDR            S10, [SP,#0x170+var_60]
362DF4:  VADD.F32        S2, S8, S2
362DF8:  VADD.F32        S4, S10, S4
362DFC:  VSTR            S0, [SP,#0x170+var_5C]
362E00:  VSTR            S2, [SP,#0x170+var_58]
362E04:  VSTR            S4, [SP,#0x170+var_54]
362E08:  LDRB            R0, [R4,#0x10]
362E0A:  CMP             R0, #0xC9
362E0C:  BCC             loc_362E44
362E0E:  LDRB            R0, [R4,#0x11]
362E10:  CMP             R0, #0x64 ; 'd'
362E12:  MOV.W           R0, #2
362E16:  IT HI
362E18:  MOVHI           R0, #1
362E1A:  B               loc_362E46
362E1C:  DCFS 0.96
362E20:  DCFS 0.7
362E24:  DCFS 0.0015686
362E28:  DCFS 0.078431
362E2C:  DCFS 0.05
362E30:  DCFS 1.607
362E34:  DCFS -0.141
362E38:  DCFS 1.848
362E3C:  DCFS -0.157
362E40:  DCFS 0.189
362E44:  MOVS            R0, #0
362E46:  VCMPE.F32       S18, #0.0
362E4A:  VLDR            S0, [R4,#4]
362E4E:  VMRS            APSR_nzcv, FPSCR
362E52:  MOV.W           R1, #0
362E56:  VCMPE.F32       S0, #0.0
362E5A:  MOV.W           R2, #0
362E5E:  IT GT
362E60:  MOVGT           R1, #1
362E62:  VMRS            APSR_nzcv, FPSCR
362E66:  IT GT
362E68:  MOVGT           R2, #1
362E6A:  LDR             R3, [SP,#0x170+var_F0]
362E6C:  CMP             R0, R3
362E6E:  ITT EQ
362E70:  EOREQ.W         R0, R1, R2
362E74:  CMPEQ           R0, #1
362E76:  BNE.W           loc_362FB0
362E7A:  LDR             R0, [SP,#0x170+var_104]
362E7C:  LDR             R2, [SP,#0x170+var_F0]
362E7E:  LDR             R1, [SP,#0x170+var_10C]
362E80:  VLDR            S2, [R0,#0x44]
362E84:  VLDR            S0, [R0,#0x40]
362E88:  VDIV.F32        S2, S2, S16
362E8C:  LDR             R0, [SP,#0x170+var_108]
362E8E:  LDR             R3, [SP,#0x170+var_110]
362E90:  LDRB            R1, [R1,R2]
362E92:  LDRB            R0, [R0,R2]
362E94:  LDRB            R2, [R3,R2]
362E96:  VMOV            S4, R0
362E9A:  MOV.W           R0, #0x3FC00000
362E9E:  VMOV            S8, R1
362EA2:  MOVS            R1, #0
362EA4:  VMOV            S6, R2
362EA8:  VCVT.F32.U32    S4, S4
362EAC:  VCVT.F32.U32    S6, S6
362EB0:  VCVT.F32.U32    S8, S8
362EB4:  STR             R0, [SP,#0x170+var_140]; float
362EB6:  VMUL.F32        S2, S2, S22
362EBA:  MOVS            R0, #0x41700000
362EC0:  STR             R1, [SP,#0x170+var_13C]; float
362EC2:  STRD.W          R0, R1, [SP,#0x170+var_138]; float
362EC6:  MOVS            R0, #0x42480000
362ECC:  STR             R1, [SP,#0x170+var_130]; bool
362ECE:  STRD.W          R0, R1, [SP,#0x170+var_160]; float
362ED2:  MOVS            R0, #1
362ED4:  VDIV.F32        S0, S0, S16
362ED8:  STR             R1, [SP,#0x170+var_158]; unsigned __int8
362EDA:  STRD.W          R0, R1, [SP,#0x170+var_154]; unsigned __int8
362EDE:  ADD             R0, SP, #0x170+var_68
362EE0:  STRD.W          R1, R1, [SP,#0x170+var_14C]; unsigned __int8
362EE4:  STR             R1, [SP,#0x170+var_144]; float
362EE6:  MOVS            R1, #0; unsigned int
362EE8:  STR             R0, [SP,#0x170+var_168]; unsigned __int8
362EEA:  MOVS            R0, #0xFF
362EEC:  VMUL.F32        S8, S2, S8
362EF0:  VMUL.F32        S6, S2, S6
362EF4:  VMUL.F32        S2, S2, S4
362EF8:  VMUL.F32        S0, S0, S20
362EFC:  VCVT.U32.F32    S4, S8
362F00:  STR             R0, [SP,#0x170+var_16C]; unsigned __int8
362F02:  VCVT.U32.F32    S6, S6
362F06:  VCVT.U32.F32    S2, S2
362F0A:  VSTR            S0, [SP,#0x170+var_164]
362F0E:  VMOV            R0, S4
362F12:  VMOV            R2, S6; CEntity *
362F16:  VMOV            R3, S2; unsigned __int8
362F1A:  STR             R0, [SP,#0x170+var_170]; unsigned __int8
362F1C:  ADD.W           R0, R9, R6; this
362F20:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
362F24:  LDRD.W          R10, R1, [SP,#0x170+var_68]
362F28:  LDR.W           R0, [R9,#0x14]
362F2C:  LDR             R2, [SP,#0x170+var_60]
362F2E:  CBNZ            R0, loc_362F4C
362F30:  MOV             R0, R9; this
362F32:  MOV             R8, R1
362F34:  MOV             R4, R2
362F36:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
362F3A:  LDR.W           R1, [R9,#0x14]; CMatrix *
362F3E:  LDR             R0, [SP,#0x170+var_F4]; this
362F40:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
362F44:  LDR.W           R0, [R9,#0x14]
362F48:  MOV             R2, R4
362F4A:  MOV             R1, R8
362F4C:  LDRD.W          R12, R8, [R0,#0x20]
362F50:  CMP             R0, #0
362F52:  LDR.W           R11, [R0,#0x28]
362F56:  BNE             loc_362F7E
362F58:  MOV             R5, R9
362F5A:  STR.W           R10, [SP,#0x170+var_118]
362F5E:  MOV             R0, R5; this
362F60:  STR             R1, [SP,#0x170+var_11C]
362F62:  MOV             R4, R2
362F64:  MOV             R10, R12
362F66:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
362F6A:  LDR             R1, [R5,#0x14]; CMatrix *
362F6C:  LDR             R0, [SP,#0x170+var_F4]; this
362F6E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
362F72:  MOV             R12, R10
362F74:  LDR             R1, [SP,#0x170+var_11C]
362F76:  LDR             R0, [R5,#0x14]
362F78:  MOV             R2, R4
362F7A:  LDR.W           R10, [SP,#0x170+var_118]
362F7E:  LDRD.W          R4, R5, [R0]
362F82:  LDR             R3, [SP,#0x170+var_114]
362F84:  LDR             R0, [R0,#8]
362F86:  STR             R3, [SP,#0x170+var_150]
362F88:  MOVS            R3, #0
362F8A:  STRD.W          R3, R3, [SP,#0x170+var_14C]
362F8E:  STR             R3, [SP,#0x170+var_144]; __int16
362F90:  STRD.W          R8, R11, [SP,#0x170+var_170]
362F94:  STRD.W          R4, R5, [SP,#0x170+var_168]
362F98:  STRD.W          R0, R3, [SP,#0x170+var_160]
362F9C:  MOV             R0, R10
362F9E:  STRD.W          R3, R3, [SP,#0x170+var_158]
362FA2:  MOV             R3, R12
362FA4:  BLX             j__ZN13CBrightLights11RegisterOneE7CVectorS0_S0_S0_hhhh; CBrightLights::RegisterOne(CVector,CVector,CVector,CVector,uchar,uchar,uchar,uchar)
362FA8:  LDR.W           R8, [SP,#0x170+var_F8]
362FAC:  LDRD.W          R10, R5, [SP,#0x170+var_100]
362FB0:  ADDS            R6, #1
362FB2:  CMP             R5, R6
362FB4:  BNE.W           loc_362D9A
362FB8:  CMP             R5, #0
362FBA:  BEQ.W           loc_3631A2
362FBE:  VMOV            S2, R5
362FC2:  VMOV.F32        S0, #1.0
362FC6:  VCVT.F32.U32    S2, S2
362FCA:  VLDR            S6, [SP,#0x170+var_5C]
362FCE:  VLDR            S4, [SP,#0x170+var_58]
362FD2:  LDR             R0, [SP,#0x170+var_F0]
362FD4:  CMP             R0, #2
362FD6:  VDIV.F32        S0, S0, S2
362FDA:  VLDR            S2, [SP,#0x170+var_54]
362FDE:  VMUL.F32        S6, S0, S6
362FE2:  VMUL.F32        S4, S0, S4
362FE6:  VMUL.F32        S2, S0, S2
362FEA:  VSTR            S6, [SP,#0x170+var_5C]
362FEE:  VSTR            S4, [SP,#0x170+var_58]
362FF2:  VSTR            S2, [SP,#0x170+var_54]
362FF6:  BHI.W           loc_3631A2
362FFA:  LDR.W           R0, =(_ZN8CWeather23TrafficLightsBrightnessE_ptr - 0x363006)
362FFE:  VMOV.F32        S8, #0.5
363002:  ADD             R0, PC; _ZN8CWeather23TrafficLightsBrightnessE_ptr
363004:  LDR             R0, [R0]; CWeather::TrafficLightsBrightness ...
363006:  VLDR            S0, [R0]
36300A:  VCMPE.F32       S0, S8
36300E:  VMRS            APSR_nzcv, FPSCR
363012:  BLE             loc_3630C2
363014:  LDR.W           R0, =(aTrafficLightColoursB_ptr - 0x363026)
363018:  VMOV            R3, S2
36301C:  LDR.W           R5, =(aTrafficLightColoursR_ptr - 0x36302C)
363020:  MOVS            R4, #0x32 ; '2'
363022:  ADD             R0, PC; aTrafficLightColoursB_ptr
363024:  LDR.W           R6, =(aTrafficLightColoursG_ptr - 0x363032)
363028:  ADD             R5, PC; aTrafficLightColoursR_ptr
36302A:  VMOV            R2, S4
36302E:  ADD             R6, PC; aTrafficLightColoursG_ptr
363030:  LDR             R0, [R0]; aTrafficLightColoursB
363032:  LDR.W           R12, [R5]; aTrafficLightColoursR
363036:  VMOV            R1, S6
36303A:  LDR             R5, [SP,#0x170+var_F0]
36303C:  LDR             R6, [R6]; aTrafficLightColoursG
36303E:  VLDR            S0, =0.0015686
363042:  LDRB            R0, [R0,R5]
363044:  LDRB            R6, [R6,R5]
363046:  VLDR            S8, =0.078431
36304A:  VMOV            S2, R0
36304E:  CMP             R6, #0x32 ; '2'
363050:  VCVT.F32.U32    S2, S2
363054:  LDRB.W          R5, [R12,R5]
363058:  IT LS
36305A:  MOVLS           R6, R4
36305C:  VMOV            S4, R6
363060:  CMP             R5, #0x32 ; '2'
363062:  MOV.W           R6, #0
363066:  VCVT.F32.U32    S4, S4
36306A:  IT HI
36306C:  MOVHI           R4, R5
36306E:  VMOV            S6, R4
363072:  CMP             R0, #0x32 ; '2'
363074:  MOVW            R0, #0
363078:  MOV.W           R5, #1
36307C:  VCVT.F32.U32    S6, S6
363080:  MOVT            R0, #0x4160
363084:  VMUL.F32        S2, S2, S0
363088:  STRD.W          R5, R5, [SP,#0x170+var_154]
36308C:  STR             R6, [SP,#0x170+var_14C]; float
36308E:  IT CC
363090:  VMOVCC.F32      S2, S8
363094:  STRD.W          R6, R6, [SP,#0x170+var_170]
363098:  VMUL.F32        S4, S4, S0
36309C:  STRD.W          R6, R0, [SP,#0x170+var_168]; float
3630A0:  MOVS            R0, #0
3630A2:  VMUL.F32        S0, S6, S0
3630A6:  VSTR            S0, [SP,#0x170+var_160]
3630AA:  VSTR            S4, [SP,#0x170+var_15C]
3630AE:  VSTR            S2, [SP,#0x170+var_158]
3630B2:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
3630B6:  LDR.W           R0, =(_ZN8CWeather23TrafficLightsBrightnessE_ptr - 0x3630BE)
3630BA:  ADD             R0, PC; _ZN8CWeather23TrafficLightsBrightnessE_ptr
3630BC:  LDR             R0, [R0]; CWeather::TrafficLightsBrightness ...
3630BE:  VLDR            S0, [R0]
3630C2:  VLDR            S2, =0.05
3630C6:  VCMPE.F32       S0, S2
3630CA:  VMRS            APSR_nzcv, FPSCR
3630CE:  BLE             loc_3631A2
3630D0:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x3630E2)
3630D4:  MOVS            R6, #0
3630D6:  LDR.W           R1, =(aTrafficLightColoursR_ptr - 0x3630E6)
3630DA:  MOVT            R6, #0x4140
3630DE:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
3630E0:  LDR             R3, [SP,#0x170+var_F0]
3630E2:  ADD             R1, PC; aTrafficLightColoursR_ptr
3630E4:  LDR.W           R2, =(aTrafficLightColoursG_ptr - 0x3630F0)
3630E8:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
3630EA:  LDR             R1, [R1]; aTrafficLightColoursR
3630EC:  ADD             R2, PC; aTrafficLightColoursG_ptr
3630EE:  VLDR            S2, [R0,#0x58]
3630F2:  LDR.W           R0, =(aTrafficLightColoursB_ptr - 0x363100)
3630F6:  VDIV.F32        S2, S2, S16
3630FA:  LDRB            R1, [R1,R3]
3630FC:  ADD             R0, PC; aTrafficLightColoursB_ptr
3630FE:  LDR             R2, [R2]; aTrafficLightColoursG
363100:  LDR             R0, [R0]; aTrafficLightColoursB
363102:  LDRB            R2, [R2,R3]
363104:  LDRB            R0, [R0,R3]
363106:  MOV.W           R3, #0x3F800000
36310A:  VMOV            S4, R1
36310E:  MOVS            R1, #0
363110:  VMOV            S6, R0
363114:  LDR.W           R0, =(gpShadowExplosionTex_ptr - 0x363128)
363118:  VCVT.F32.U32    S4, S4
36311C:  MOVT            R1, #0x4220
363120:  VCVT.F32.U32    S6, S6
363124:  ADD             R0, PC; gpShadowExplosionTex_ptr
363126:  VMOV            S8, R2
36312A:  LDR             R0, [R0]; gpShadowExplosionTex
36312C:  VCVT.F32.U32    S8, S8
363130:  LDR             R2, [R0]; int
363132:  MOVS            R0, #0
363134:  VMUL.F32        S4, S0, S4
363138:  STRD.W          R6, R3, [SP,#0x170+var_150]; float
36313C:  VMUL.F32        S6, S0, S6
363140:  STRD.W          R1, R0, [SP,#0x170+var_148]; float
363144:  MOVS            R1, #0x80
363146:  STR             R0, [SP,#0x170+var_140]; float
363148:  STR             R1, [SP,#0x170+var_160]; int
36314A:  MOV.W           R1, #0xC1000000
36314E:  VMUL.F32        S0, S0, S8
363152:  STR             R1, [SP,#0x170+var_164]; float
363154:  VMOV.F32        S8, #0.125
363158:  STRD.W          R0, R0, [SP,#0x170+var_16C]; float
36315C:  MOV.W           R0, #0x41000000
363160:  ADD             R3, SP, #0x170+var_5C; int
363162:  VMUL.F32        S4, S4, S2
363166:  MOVS            R1, #2; int
363168:  VMUL.F32        S6, S2, S6
36316C:  VMUL.F32        S0, S2, S0
363170:  VMUL.F32        S2, S4, S8
363174:  VMUL.F32        S4, S6, S8
363178:  VMUL.F32        S0, S0, S8
36317C:  VCVT.U32.F32    S2, S2
363180:  STR             R0, [SP,#0x170+var_170]; float
363182:  VCVT.U32.F32    S4, S4
363186:  VCVT.U32.F32    S0, S0
36318A:  VMOV            R0, S4
36318E:  STR             R0, [SP,#0x170+var_154]; int
363190:  VMOV            R0, S0
363194:  STR             R0, [SP,#0x170+var_158]; int
363196:  VMOV            R0, S2
36319A:  STR             R0, [SP,#0x170+var_15C]; int
36319C:  MOV             R0, R9; int
36319E:  BLX             j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
3631A2:  LDR.W           R0, =(MI_TRAFFICLIGHTS_4_ptr - 0x3631AE)
3631A6:  VLDR            S16, =1.607
3631AA:  ADD             R0, PC; MI_TRAFFICLIGHTS_4_ptr
3631AC:  VLDR            S24, =-0.141
3631B0:  VLDR            S22, =1.848
3631B4:  LDR             R1, [R0]; MI_TRAFFICLIGHTS_4
3631B6:  LDRSH.W         R0, [R9,#0x26]
3631BA:  VLDR            S20, =-0.157
3631BE:  LDRH            R1, [R1]
3631C0:  VLDR            S18, =0.189
3631C4:  CMP             R0, R1
3631C6:  BNE             loc_3631CE
3631C8:  VMOV.F32        S26, S20
3631CC:  B               loc_363356
3631CE:  LDR.W           R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x3631DA)
3631D2:  VMOV.F32        S26, S20
3631D6:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
3631D8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
3631DA:  LDRH            R1, [R1]
3631DC:  CMP             R0, R1
3631DE:  BEQ.W           loc_363356
3631E2:  LDR.W           R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x3631EA)
3631E6:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
3631E8:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
3631EA:  LDRH            R1, [R1]
3631EC:  CMP             R0, R1
3631EE:  BNE             loc_363296
3631F0:  LDR.W           R0, =(byte_8204EC - 0x3631F8)
3631F4:  ADD             R0, PC; byte_8204EC
3631F6:  LDRB            R0, [R0]
3631F8:  DMB.W           ISH
3631FC:  TST.W           R0, #1
363200:  BNE             loc_36323C
363202:  LDR.W           R0, =(byte_8204EC - 0x36320A)
363206:  ADD             R0, PC; byte_8204EC ; __guard *
363208:  BLX             j___cxa_guard_acquire
36320C:  CBZ             R0, loc_36323C
36320E:  LDR.W           R1, =(dword_8204E0 - 0x363226)
363212:  MOVW            R2, #0xA1CB
363216:  LDR.W           R0, =(byte_8204EC - 0x363228)
36321A:  MOVW            R3, #0x3958
36321E:  MOVW            R6, #0xCED9
363222:  ADD             R1, PC; dword_8204E0
363224:  ADD             R0, PC; byte_8204EC ; __guard *
363226:  MOVT            R2, #0xBE85
36322A:  MOVT            R3, #0xBD34
36322E:  MOVT            R6, #0x3FC7
363232:  STRD.W          R3, R2, [R1]
363236:  STR             R6, [R1,#(dword_8204E8 - 0x8204E0)]
363238:  BLX             j___cxa_guard_release
36323C:  LDR.W           R0, =(byte_8204FC - 0x363244)
363240:  ADD             R0, PC; byte_8204FC
363242:  LDRB            R0, [R0]
363244:  DMB.W           ISH
363248:  TST.W           R0, #1
36324C:  BNE             loc_363288
36324E:  LDR.W           R0, =(byte_8204FC - 0x363256)
363252:  ADD             R0, PC; byte_8204FC ; __guard *
363254:  BLX             j___cxa_guard_acquire
363258:  CBZ             R0, loc_363288
36325A:  LDR.W           R1, =(dword_8204F0 - 0x363272)
36325E:  MOVW            R2, #0xA1CB
363262:  LDR.W           R0, =(byte_8204FC - 0x363274)
363266:  MOVW            R3, #0x53F8
36326A:  MOVW            R6, #0xF9DB
36326E:  ADD             R1, PC; dword_8204F0
363270:  ADD             R0, PC; byte_8204FC ; __guard *
363272:  MOVT            R2, #0xBE85
363276:  MOVT            R3, #0x3E63
36327A:  MOVT            R6, #0x3FEE
36327E:  STRD.W          R3, R2, [R1]
363282:  STR             R6, [R1,#(dword_8204F8 - 0x8204F0)]
363284:  BLX             j___cxa_guard_release
363288:  LDR.W           R0, =(dword_8204F0 - 0x363294)
36328C:  LDR.W           R1, =(dword_8204E0 - 0x363296)
363290:  ADD             R0, PC; dword_8204F0
363292:  ADD             R1, PC; dword_8204E0
363294:  B               loc_36333E
363296:  LDR.W           R1, =(MI_TRAFFICLIGHTS_ptr - 0x36329E)
36329A:  ADD             R1, PC; MI_TRAFFICLIGHTS_ptr
36329C:  LDR             R1, [R1]; MI_TRAFFICLIGHTS
36329E:  LDRH            R1, [R1]
3632A0:  CMP             R0, R1
3632A2:  BNE.W           loc_3635FE
3632A6:  LDR.W           R0, =(byte_82050C - 0x3632AE)
3632AA:  ADD             R0, PC; byte_82050C
3632AC:  LDRB            R0, [R0]
3632AE:  DMB.W           ISH
3632B2:  TST.W           R0, #1
3632B6:  BNE             loc_3632F2
3632B8:  LDR.W           R0, =(byte_82050C - 0x3632C0)
3632BC:  ADD             R0, PC; byte_82050C ; __guard *
3632BE:  BLX             j___cxa_guard_acquire
3632C2:  CBZ             R0, loc_3632F2
3632C4:  LDR.W           R1, =(dword_820500 - 0x3632DC)
3632C8:  MOVW            R2, #0x8937
3632CC:  LDR.W           R0, =(byte_82050C - 0x3632DE)
3632D0:  MOVW            R3, #0x126F
3632D4:  MOVW            R6, #0xFBE7
3632D8:  ADD             R1, PC; dword_820500
3632DA:  ADD             R0, PC; byte_82050C ; __guard *
3632DC:  MOVT            R2, #0x3FA1
3632E0:  MOVT            R3, #0x402B
3632E4:  MOVT            R6, #0xBF09
3632E8:  STRD.W          R3, R2, [R1]
3632EC:  STR             R6, [R1,#(dword_820508 - 0x820500)]
3632EE:  BLX             j___cxa_guard_release
3632F2:  LDR             R0, =(byte_82051C - 0x3632F8)
3632F4:  ADD             R0, PC; byte_82051C
3632F6:  LDRB            R0, [R0]
3632F8:  DMB.W           ISH
3632FC:  TST.W           R0, #1
363300:  BNE             loc_363336
363302:  LDR             R0, =(byte_82051C - 0x363308)
363304:  ADD             R0, PC; byte_82051C ; __guard *
363306:  BLX             j___cxa_guard_acquire
36330A:  CBZ             R0, loc_363336
36330C:  LDR             R1, =(dword_820510 - 0x363320)
36330E:  MOVW            R2, #0x872B
363312:  LDR             R0, =(byte_82051C - 0x363322)
363314:  MOVW            R3, #0x126F
363318:  MOVW            R6, #0xC4A
36331C:  ADD             R1, PC; dword_820510
36331E:  ADD             R0, PC; byte_82051C ; __guard *
363320:  MOVT            R2, #0x3F36
363324:  MOVT            R3, #0x402B
363328:  MOVT            R6, #0xBE02
36332C:  STRD.W          R3, R2, [R1]
363330:  STR             R6, [R1,#(dword_820518 - 0x820510)]
363332:  BLX             j___cxa_guard_release
363336:  LDR             R0, =(dword_820510 - 0x36333E)
363338:  LDR             R1, =(dword_820500 - 0x363340)
36333A:  ADD             R0, PC; dword_820510
36333C:  ADD             R1, PC; dword_820500
36333E:  VLDR            S18, [R0]
363342:  VLDR            S20, [R0,#4]
363346:  VLDR            S22, [R0,#8]
36334A:  VLDR            S24, [R1]
36334E:  VLDR            S26, [R1,#4]
363352:  VLDR            S16, [R1,#8]
363356:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x363362)
363358:  MOVS            R1, #0
36335A:  MOVW            R3, #0x3C17
36335E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
363360:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
363362:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
363364:  UBFX.W          R2, R0, #1, #0xE
363368:  CMP             R2, R3
36336A:  MOVW            R3, #0x2EE0
36336E:  IT HI
363370:  MOVHI           R1, #1
363372:  CMP             R2, R3
363374:  IT CC
363376:  MOVCC           R1, #2
363378:  CMP             R1, #0
36337A:  BEQ.W           loc_3634C0
36337E:  CMP             R1, #2
363380:  BNE.W           loc_3634BA
363384:  LDR.W           R1, [R9,#0x14]
363388:  CBNZ            R1, loc_3633A0
36338A:  MOV             R0, R9; this
36338C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363390:  LDR.W           R1, [R9,#0x14]; CMatrix *
363394:  ADD.W           R0, R9, #4; this
363398:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
36339C:  LDR.W           R1, [R9,#0x14]
3633A0:  ADD             R0, SP, #0x170+var_74
3633A2:  ADD             R2, SP, #0x170+var_68
3633A4:  VSTR            S26, [SP,#0x170+var_64]
3633A8:  VSTR            S24, [SP,#0x170+var_68]
3633AC:  VSTR            S22, [SP,#0x170+var_60]
3633B0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3633B4:  LDR.W           R1, [R9,#0x14]
3633B8:  CMP             R1, #0
3633BA:  BNE             loc_3633D2
3633BC:  MOV             R0, R9; this
3633BE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3633C2:  LDR.W           R1, [R9,#0x14]; CMatrix *
3633C6:  ADD.W           R0, R9, #4; this
3633CA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3633CE:  LDR.W           R1, [R9,#0x14]
3633D2:  VMOV.F32        S0, #0.5
3633D6:  ADD             R0, SP, #0x170+var_80
3633D8:  VADD.F32        S2, S20, S26
3633DC:  ADD             R2, SP, #0x170+var_8C
3633DE:  VADD.F32        S4, S18, S24
3633E2:  VSTR            S22, [SP,#0x170+var_84]
3633E6:  VMUL.F32        S20, S2, S0
3633EA:  VMUL.F32        S18, S4, S0
3633EE:  VSTR            S20, [SP,#0x170+var_88]
3633F2:  VSTR            S18, [SP,#0x170+var_8C]
3633F6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3633FA:  LDR.W           R1, [R9,#0x14]
3633FE:  CBNZ            R1, loc_363416
363400:  MOV             R0, R9; this
363402:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363406:  LDR.W           R1, [R9,#0x14]; CMatrix *
36340A:  ADD.W           R0, R9, #4; this
36340E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
363412:  LDR.W           R1, [R9,#0x14]
363416:  ADD             R0, SP, #0x170+var_98
363418:  ADD             R2, SP, #0x170+var_A4
36341A:  VSTR            S26, [SP,#0x170+var_A0]
36341E:  VSTR            S24, [SP,#0x170+var_A4]
363422:  VSTR            S16, [SP,#0x170+var_9C]
363426:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
36342A:  LDR.W           R1, [R9,#0x14]
36342E:  CMP             R1, #0
363430:  BNE             loc_363448
363432:  MOV             R0, R9; this
363434:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363438:  LDR.W           R1, [R9,#0x14]; CMatrix *
36343C:  ADD.W           R0, R9, #4; this
363440:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
363444:  LDR.W           R1, [R9,#0x14]
363448:  ADD             R0, SP, #0x170+var_B0
36344A:  ADD             R2, SP, #0x170+var_BC
36344C:  VSTR            S20, [SP,#0x170+var_B8]
363450:  VSTR            S18, [SP,#0x170+var_BC]
363454:  VSTR            S16, [SP,#0x170+var_B4]
363458:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
36345C:  MOVS            R4, #0
36345E:  ADD.W           LR, SP, #0x170+var_98
363462:  ADD.W           R10, SP, #0x170+var_B0
363466:  MOVT            R4, #0x4270
36346A:  LDRD.W          R1, R2, [SP,#0x170+var_70]
36346E:  LDRD.W          R3, R6, [SP,#0x170+var_80]
363472:  LDRD.W          R5, R0, [SP,#0x170+var_78]
363476:  LDM.W           LR, {R11,R12,LR}
36347A:  LDM.W           R10, {R8-R10}
36347E:  STR             R4, [SP,#0x170+var_120]
363480:  MOVS            R4, #0xFF
363482:  STR             R4, [SP,#0x170+var_12C]
363484:  MOVS            R4, #1
363486:  STR             R4, [SP,#0x170+var_130]
363488:  MOV.W           R4, #0x3F800000
36348C:  STR             R4, [SP,#0x170+var_134]
36348E:  STR             R4, [SP,#0x170+var_13C]
363490:  MOVS            R4, #0
363492:  STRD.W          R4, R4, [SP,#0x170+var_128]
363496:  STR             R4, [SP,#0x170+var_138]
363498:  STR             R4, [SP,#0x170+var_144]
36349A:  STRD.W          R4, R4, [SP,#0x170+var_14C]
36349E:  MOV.W           R4, #0x3F000000
3634A2:  STR             R4, [SP,#0x170+var_140]
3634A4:  STR             R4, [SP,#0x170+var_150]
3634A6:  ADD             R4, SP, #0x170+var_168
3634A8:  STRD.W          R6, R5, [SP,#0x170+var_170]
3634AC:  STM.W           R4, {R11,R12,LR}
3634B0:  ADD.W           R12, SP, #0x170+var_15C
3634B4:  STM.W           R12, {R8-R10}
3634B8:  B               loc_3635FA
3634BA:  LSLS            R0, R0, #0x17
3634BC:  BPL.W           loc_3635FE
3634C0:  LDR.W           R1, [R9,#0x14]
3634C4:  CBNZ            R1, loc_3634DC
3634C6:  MOV             R0, R9; this
3634C8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3634CC:  LDR.W           R1, [R9,#0x14]; CMatrix *
3634D0:  ADD.W           R0, R9, #4; this
3634D4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3634D8:  LDR.W           R1, [R9,#0x14]
3634DC:  VMOV.F32        S0, #0.5
3634E0:  ADD             R0, SP, #0x170+var_C8
3634E2:  VADD.F32        S2, S20, S26
3634E6:  ADD             R2, SP, #0x170+var_68
3634E8:  VADD.F32        S4, S18, S24
3634EC:  VSTR            S22, [SP,#0x170+var_60]
3634F0:  VMUL.F32        S26, S2, S0
3634F4:  VMUL.F32        S24, S4, S0
3634F8:  VSTR            S26, [SP,#0x170+var_64]
3634FC:  VSTR            S24, [SP,#0x170+var_68]
363500:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
363504:  LDR.W           R1, [R9,#0x14]
363508:  CBNZ            R1, loc_363520
36350A:  MOV             R0, R9; this
36350C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363510:  LDR.W           R1, [R9,#0x14]; CMatrix *
363514:  ADD.W           R0, R9, #4; this
363518:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
36351C:  LDR.W           R1, [R9,#0x14]
363520:  ADD             R0, SP, #0x170+var_D4
363522:  ADD             R2, SP, #0x170+var_8C
363524:  VSTR            S20, [SP,#0x170+var_88]
363528:  VSTR            S18, [SP,#0x170+var_8C]
36352C:  VSTR            S22, [SP,#0x170+var_84]
363530:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
363534:  LDR.W           R1, [R9,#0x14]
363538:  CBNZ            R1, loc_363550
36353A:  MOV             R0, R9; this
36353C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363540:  LDR.W           R1, [R9,#0x14]; CMatrix *
363544:  ADD.W           R0, R9, #4; this
363548:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
36354C:  LDR.W           R1, [R9,#0x14]
363550:  ADD             R0, SP, #0x170+var_E0
363552:  ADD             R2, SP, #0x170+var_A4
363554:  VSTR            S26, [SP,#0x170+var_A0]
363558:  VSTR            S24, [SP,#0x170+var_A4]
36355C:  VSTR            S16, [SP,#0x170+var_9C]
363560:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
363564:  LDR.W           R1, [R9,#0x14]
363568:  CBNZ            R1, loc_363580
36356A:  MOV             R0, R9; this
36356C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
363570:  LDR.W           R1, [R9,#0x14]; CMatrix *
363574:  ADD.W           R0, R9, #4; this
363578:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
36357C:  LDR.W           R1, [R9,#0x14]
363580:  ADD             R0, SP, #0x170+var_EC
363582:  ADD             R2, SP, #0x170+var_BC
363584:  VSTR            S20, [SP,#0x170+var_B8]
363588:  VSTR            S18, [SP,#0x170+var_BC]
36358C:  VSTR            S16, [SP,#0x170+var_B4]
363590:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
363594:  LDR             R0, [SP,#0x170+var_C8]
363596:  MOVS            R1, #0
363598:  STR             R0, [SP,#0x170+var_F0]
36359A:  ADD.W           LR, SP, #0x170+var_E0
36359E:  LDR             R0, [SP,#0x170+var_C4]
3635A0:  ADD.W           R10, SP, #0x170+var_EC
3635A4:  STR             R0, [SP,#0x170+var_F4]
3635A6:  MOVT            R1, #0x4270
3635AA:  LDR             R2, [SP,#0x170+var_C0]
3635AC:  MOVS            R0, #0xFF
3635AE:  LDRD.W          R3, R6, [SP,#0x170+var_D4]
3635B2:  MOV.W           R11, #1
3635B6:  LDR             R5, [SP,#0x170+var_CC]
3635B8:  LDM.W           LR, {R4,R12,LR}
3635BC:  LDM.W           R10, {R8-R10}
3635C0:  STRD.W          R11, R0, [SP,#0x170+var_130]
3635C4:  MOV.W           R11, #0x3F000000
3635C8:  STRD.W          R0, R0, [SP,#0x170+var_128]
3635CC:  MOV.W           R0, #0x3F800000
3635D0:  STR             R1, [SP,#0x170+var_120]
3635D2:  MOVS            R1, #0
3635D4:  STR             R0, [SP,#0x170+var_150]
3635D6:  STR             R1, [SP,#0x170+var_14C]
3635D8:  STR.W           R11, [SP,#0x170+var_148]
3635DC:  STRD.W          R1, R0, [SP,#0x170+var_144]
3635E0:  STRD.W          R0, R11, [SP,#0x170+var_13C]
3635E4:  STR             R0, [SP,#0x170+var_134]
3635E6:  ADD             R0, SP, #0x170+var_168
3635E8:  STRD.W          R6, R5, [SP,#0x170+var_170]
3635EC:  STM.W           R0, {R4,R12,LR}
3635F0:  ADD             R0, SP, #0x170+var_15C
3635F2:  STM.W           R0, {R8-R10}
3635F6:  LDRD.W          R1, R0, [SP,#0x170+var_F4]
3635FA:  BLX             j__ZN11CShinyTexts11RegisterOneE7CVectorS0_S0_S0_ffffffffhhhhf; CShinyTexts::RegisterOne(CVector,CVector,CVector,CVector,float,float,float,float,float,float,float,float,uchar,uchar,uchar,uchar,float)
3635FE:  ADD             SP, SP, #0x120
363600:  VPOP            {D8-D13}
363604:  ADD             SP, SP, #4
363606:  POP.W           {R8-R11}
36360A:  POP             {R4-R7,PC}
36360C:  MOVS            R6, #1
36360E:  B.W             loc_362BFE
