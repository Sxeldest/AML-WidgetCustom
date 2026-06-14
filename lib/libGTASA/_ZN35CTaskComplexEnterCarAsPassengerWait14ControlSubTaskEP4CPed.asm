; =========================================================
; Game Engine Function: _ZN35CTaskComplexEnterCarAsPassengerWait14ControlSubTaskEP4CPed
; Address            : 0x4F7CFC - 0x4F7F08
; =========================================================

4F7CFC:  PUSH            {R4,R5,R7,LR}
4F7CFE:  ADD             R7, SP, #8
4F7D00:  SUB             SP, SP, #0x20
4F7D02:  MOV             R4, R0
4F7D04:  MOV             R5, R1
4F7D06:  LDRB.W          R0, [R4,#0x20]
4F7D0A:  CMP             R0, #0
4F7D0C:  BEQ             loc_4F7DD8
4F7D0E:  LDR             R0, [R4,#0xC]
4F7D10:  CMP             R0, #0
4F7D12:  BEQ.W           loc_4F7E9E
4F7D16:  LDR             R0, [R4,#8]
4F7D18:  LDR             R1, [R0]
4F7D1A:  LDR             R1, [R1,#0x14]
4F7D1C:  BLX             R1
4F7D1E:  MOVW            R1, #0x387
4F7D22:  CMP             R0, R1
4F7D24:  BNE.W           loc_4F7E9E
4F7D28:  LDR             R1, [R4,#0xC]; CPed *
4F7D2A:  ADD             R2, SP, #0x28+var_18; CEntity *
4F7D2C:  MOV             R0, R5; this
4F7D2E:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CPed const&,CEntity &,CVector &)
4F7D32:  LDR             R1, [R4,#8]
4F7D34:  CMP             R0, #1
4F7D36:  VLDR            S8, [SP,#0x28+var_18]
4F7D3A:  VLDR            S10, [SP,#0x28+var_18+4]
4F7D3E:  ADD.W           LR, R1, #0x10
4F7D42:  VLDR            S2, [R1,#0x10]
4F7D46:  VLDR            S4, [R1,#0x14]
4F7D4A:  VSUB.F32        S14, S8, S2
4F7D4E:  VLDR            S6, [SP,#0x28+var_10]
4F7D52:  VSUB.F32        S12, S10, S4
4F7D56:  VLDR            S0, [R1,#0x18]
4F7D5A:  VSUB.F32        S1, S6, S0
4F7D5E:  VMUL.F32        S14, S14, S14
4F7D62:  VMUL.F32        S12, S12, S12
4F7D66:  VMUL.F32        S1, S1, S1
4F7D6A:  VADD.F32        S12, S14, S12
4F7D6E:  VADD.F32        S12, S12, S1
4F7D72:  BNE             loc_4F7DFE
4F7D74:  VLDR            S14, =0.025
4F7D78:  VCMPE.F32       S12, S14
4F7D7C:  VMRS            APSR_nzcv, FPSCR
4F7D80:  BLE.W           loc_4F7E9E
4F7D84:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x4F7D92)
4F7D86:  VCMP.F32        S4, S10
4F7D8A:  VMRS            APSR_nzcv, FPSCR
4F7D8E:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
4F7D90:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
4F7D92:  VLDR            S12, [R0]
4F7D96:  BNE             loc_4F7DBA
4F7D98:  VCMP.F32        S2, S8
4F7D9C:  VMRS            APSR_nzcv, FPSCR
4F7DA0:  ITT EQ
4F7DA2:  VCMPEQ.F32      S0, S6
4F7DA6:  VMRSEQ          APSR_nzcv, FPSCR
4F7DAA:  BNE             loc_4F7DBA
4F7DAC:  VLDR            S0, [R1,#0x20]
4F7DB0:  VCMP.F32        S0, S12
4F7DB4:  VMRS            APSR_nzcv, FPSCR
4F7DB8:  BEQ             loc_4F7E9E
4F7DBA:  VLDR            D16, [SP,#0x28+var_18]
4F7DBE:  MOV.W           R2, #0x3FC00000
4F7DC2:  LDR             R0, [SP,#0x28+var_10]
4F7DC4:  STR.W           R0, [LR,#8]
4F7DC8:  VSTR            D16, [LR]
4F7DCC:  VSTR            S12, [R1,#0x20]
4F7DD0:  LDRB.W          R0, [R1,#0x24]
4F7DD4:  STR             R2, [R1,#0x1C]
4F7DD6:  B               loc_4F7E96
4F7DD8:  LDR             R0, [R4,#0x10]; this
4F7DDA:  CMP             R0, #0
4F7DDC:  BEQ             loc_4F7EB4
4F7DDE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F7DE2:  CMP             R0, #1
4F7DE4:  BNE             loc_4F7EA4
4F7DE6:  LDR.W           R0, [R5,#0x440]
4F7DEA:  MOVW            R1, #0x327; int
4F7DEE:  ADDS            R0, #4; this
4F7DF0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4F7DF4:  CMP             R0, #0
4F7DF6:  BEQ             loc_4F7D0E
4F7DF8:  MOVS            R0, #1
4F7DFA:  MOVS            R1, #0x23 ; '#'
4F7DFC:  B               loc_4F7EEE
4F7DFE:  VLDR            S6, =0.025
4F7E02:  VCMPE.F32       S12, S6
4F7E06:  VMRS            APSR_nzcv, FPSCR
4F7E0A:  BLE             loc_4F7E9E
4F7E0C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4F7E14)
4F7E0E:  LDR             R3, [R4,#0xC]
4F7E10:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4F7E12:  LDR.W           R12, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x4F7E1E)
4F7E16:  LDRSH.W         R5, [R3,#0x26]
4F7E1A:  ADD             R12, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
4F7E1C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4F7E1E:  LDR.W           R2, [R12]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
4F7E22:  LDR.W           R0, [R0,R5,LSL#2]
4F7E26:  LDR             R5, [R3,#0x14]
4F7E28:  VLDR            S6, [R2]
4F7E2C:  LDR             R0, [R0,#0x2C]
4F7E2E:  CMP             R5, #0
4F7E30:  VLDR            S8, [R0,#0x24]
4F7E34:  ADD.W           R0, R5, #0x30 ; '0'
4F7E38:  IT EQ
4F7E3A:  ADDEQ           R0, R3, #4
4F7E3C:  VLDR            S10, [R0]
4F7E40:  VCMP.F32        S2, S10
4F7E44:  VMRS            APSR_nzcv, FPSCR
4F7E48:  BNE             loc_4F7E74
4F7E4A:  VLDR            S2, [R0,#4]
4F7E4E:  VCMP.F32        S4, S2
4F7E52:  VMRS            APSR_nzcv, FPSCR
4F7E56:  ITTT EQ
4F7E58:  VLDREQ          S2, [R0,#8]
4F7E5C:  VCMPEQ.F32      S0, S2
4F7E60:  VMRSEQ          APSR_nzcv, FPSCR
4F7E64:  BNE             loc_4F7E74
4F7E66:  VLDR            S0, [R1,#0x20]
4F7E6A:  VCMP.F32        S0, S6
4F7E6E:  VMRS            APSR_nzcv, FPSCR
4F7E72:  BEQ             loc_4F7E9E
4F7E74:  VMOV.F32        S0, #1.5
4F7E78:  VLDR            D16, [R0]
4F7E7C:  LDR             R0, [R0,#8]
4F7E7E:  STR.W           R0, [LR,#8]
4F7E82:  VSTR            D16, [LR]
4F7E86:  LDRB.W          R0, [R1,#0x24]
4F7E8A:  VADD.F32        S0, S8, S0
4F7E8E:  VSTR            S0, [R1,#0x1C]
4F7E92:  VSTR            S6, [R1,#0x20]
4F7E96:  ORR.W           R0, R0, #4
4F7E9A:  STRB.W          R0, [R1,#0x24]
4F7E9E:  LDR             R0, [R4,#8]
4F7EA0:  ADD             SP, SP, #0x20 ; ' '
4F7EA2:  POP             {R4,R5,R7,PC}
4F7EA4:  LDRB.W          R0, [R4,#0x20]
4F7EA8:  CMP             R0, #0
4F7EAA:  ITT EQ
4F7EAC:  LDREQ           R0, [R4,#0x10]
4F7EAE:  CMPEQ           R0, #0
4F7EB0:  BNE.W           loc_4F7D0E
4F7EB4:  MOV             R0, R5; this
4F7EB6:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4F7EBA:  CMP             R0, #0
4F7EBC:  BEQ.W           loc_4F7D0E
4F7EC0:  ADDS            R0, #8; this
4F7EC2:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4F7EC6:  CMP             R0, #0
4F7EC8:  BEQ.W           loc_4F7D0E
4F7ECC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4F7ED0:  CMP             R0, #1
4F7ED2:  BNE.W           loc_4F7D0E
4F7ED6:  LDR.W           R0, [R5,#0x440]
4F7EDA:  MOVW            R1, #0x327; int
4F7EDE:  ADDS            R0, #4; this
4F7EE0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4F7EE4:  CMP             R0, #0
4F7EE6:  BEQ.W           loc_4F7D0E
4F7EEA:  MOVS            R0, #1
4F7EEC:  MOVS            R1, #0x28 ; '('; unsigned __int16
4F7EEE:  STRB.W          R0, [R4,#0x20]
4F7EF2:  MOVS            R0, #0
4F7EF4:  STRD.W          R0, R0, [SP,#0x28+var_28]; unsigned __int8
4F7EF8:  STR             R0, [SP,#0x28+var_20]; unsigned __int8
4F7EFA:  MOV             R0, R5; this
4F7EFC:  MOVS            R2, #0; unsigned int
4F7EFE:  MOV.W           R3, #0x3F800000; float
4F7F02:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4F7F06:  B               loc_4F7D0E
