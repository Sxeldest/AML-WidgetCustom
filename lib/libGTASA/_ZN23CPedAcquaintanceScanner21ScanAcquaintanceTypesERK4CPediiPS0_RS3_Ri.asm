; =========================================================
; Game Engine Function: _ZN23CPedAcquaintanceScanner21ScanAcquaintanceTypesERK4CPediiPS0_RS3_Ri
; Address            : 0x4BC948 - 0x4BCA86
; =========================================================

4BC948:  PUSH            {R4-R7,LR}
4BC94A:  ADD             R7, SP, #0xC
4BC94C:  PUSH.W          {R8-R11}
4BC950:  SUB             SP, SP, #4
4BC952:  VPUSH           {D8}
4BC956:  SUB             SP, SP, #0x10
4BC958:  MOV             R5, R1
4BC95A:  LDR.W           R11, [R7,#arg_0]
4BC95E:  MOV             R8, R0
4BC960:  LDR.W           R0, [R5,#0x440]; this
4BC964:  MOV             R4, R2
4BC966:  MOVS            R2, #0; bool
4BC968:  MOV             R1, R11; CEntity *
4BC96A:  MOV             R6, R3
4BC96C:  BLX             j__ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb; CPedIntelligence::CanSeeEntityWithLights(CEntity const*,bool)
4BC970:  CMP             R6, #4
4BC972:  BNE             loc_4BC97A
4BC974:  MOV.W           R0, #0xFFFFFFFF
4BC978:  B               loc_4BCA78
4BC97A:  VMOV            S16, R0
4BC97E:  LDR             R0, =(_ZN23CPedAcquaintanceScanner37ms_iAcquaintanceLatencyPeriodDefiniteE_ptr - 0x4BC98A)
4BC980:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BC990)
4BC982:  ADDW            R10, R5, #0x4EC
4BC986:  ADD             R0, PC; _ZN23CPedAcquaintanceScanner37ms_iAcquaintanceLatencyPeriodDefiniteE_ptr
4BC988:  STR.W           R8, [SP,#0x38+var_30]
4BC98C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BC98E:  RSB.W           R8, R6, #0
4BC992:  LDR             R0, [R0]; CPedAcquaintanceScanner::ms_iAcquaintanceLatencyPeriodDefinite ...
4BC994:  MOVS            R6, #4
4BC996:  STR             R0, [SP,#0x38+var_34]
4BC998:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
4BC99A:  STR             R5, [SP,#0x38+var_2C]
4BC99C:  STR             R0, [SP,#0x38+var_38]
4BC99E:  ADDS.W          R9, R4, #1
4BC9A2:  IT NE
4BC9A4:  CMPNE           R4, R6
4BC9A6:  BNE             loc_4BCA5C
4BC9A8:  CMP.W           R9, #0
4BC9AC:  IT EQ
4BC9AE:  CMPEQ           R6, #2
4BC9B0:  BNE             loc_4BC9BA
4BC9B2:  LDR.W           R0, [R11,#0x59C]
4BC9B6:  CMP             R0, #6
4BC9B8:  BEQ             loc_4BC9D0
4BC9BA:  MOV             R0, R10; this
4BC9BC:  MOV             R1, R6; int
4BC9BE:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BC9C2:  MOV             R5, R0
4BC9C4:  LDR.W           R0, [R11,#0x59C]; this
4BC9C8:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BC9CC:  TST             R0, R5
4BC9CE:  BEQ             loc_4BCA48
4BC9D0:  VCMP.F32        S16, #0.0
4BC9D4:  MOVS            R0, #0
4BC9D6:  VMRS            APSR_nzcv, FPSCR
4BC9DA:  MOV.W           R1, #0
4BC9DE:  VCMPE.F32       S16, #0.0
4BC9E2:  IT NE
4BC9E4:  MOVNE           R0, #1
4BC9E6:  CMP             R6, #4
4BC9E8:  IT EQ
4BC9EA:  MOVEQ           R1, #1
4BC9EC:  VMRS            APSR_nzcv, FPSCR
4BC9F0:  BGT             loc_4BC9F8
4BC9F2:  ANDS            R0, R1
4BC9F4:  CMP             R0, #1
4BC9F6:  BNE             loc_4BCA5C
4BC9F8:  LDR             R1, [R7,#arg_4]
4BC9FA:  CMP.W           R9, #0
4BC9FE:  LDR             R0, [R7,#arg_8]; this
4BCA00:  STR.W           R11, [R1]
4BCA04:  STR             R6, [R0]
4BCA06:  BNE             loc_4BCA70
4BCA08:  LDR             R3, [R1]; CPed *
4BCA0A:  CBZ             R3, loc_4BCA5C
4BCA0C:  LDR             R1, [SP,#0x38+var_2C]; CPed *
4BCA0E:  MOV             R2, R6; int
4BCA10:  BLX             j__ZN23CPedAcquaintanceScanner20AddAcquaintanceEventERK4CPediPS0_; CPedAcquaintanceScanner::AddAcquaintanceEvent(CPed const&,int,CPed*)
4BCA14:  LDR             R1, [R7,#arg_8]
4BCA16:  VCMPE.F32       S16, #0.0
4BCA1A:  LDR             R2, =(_ZN23CPedAcquaintanceScanner34ms_iAcquaintanceLatencyPeriodMaybeE_ptr - 0x4BCA26)
4BCA1C:  MOVS            R5, #1
4BCA1E:  LDR             R3, [SP,#0x38+var_34]
4BCA20:  LDR             R1, [R1]
4BCA22:  ADD             R2, PC; _ZN23CPedAcquaintanceScanner34ms_iAcquaintanceLatencyPeriodMaybeE_ptr
4BCA24:  CMP             R1, #4
4BCA26:  MOV             R1, R3
4BCA28:  IT EQ
4BCA2A:  LDREQ           R1, [R2]; CPedAcquaintanceScanner::ms_iAcquaintanceLatencyPeriodMaybe ...
4BCA2C:  VMRS            APSR_nzcv, FPSCR
4BCA30:  LDR             R2, [SP,#0x38+var_38]
4BCA32:  LDR             R2, [R2]
4BCA34:  IT GE
4BCA36:  MOVGE           R1, R3
4BCA38:  LDR             R3, [SP,#0x38+var_30]
4BCA3A:  LDR             R1, [R1]
4BCA3C:  CMP             R0, #0
4BCA3E:  STRB            R5, [R3,#8]
4BCA40:  STRD.W          R2, R1, [R3]
4BCA44:  BEQ             loc_4BCA5C
4BCA46:  B               loc_4BCA74
4BCA48:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4BCA4C:  CMP             R0, #1
4BCA4E:  BNE             loc_4BCA5C
4BCA50:  LDR             R0, [SP,#0x38+var_2C]; this
4BCA52:  MOV             R1, R11; CPed *
4BCA54:  BLX             j__ZN23CPedAcquaintanceScanner13CanJoinLARiotERK4CPedS2_; CPedAcquaintanceScanner::CanJoinLARiot(CPed const&,CPed const&)
4BCA58:  CMP             R0, #1
4BCA5A:  BEQ             loc_4BC9D0
4BCA5C:  MOV.W           R0, #0xFFFFFFFF
4BCA60:  CMP             R6, #1
4BCA62:  BLT             loc_4BCA78
4BCA64:  ADD.W           R1, R8, R6
4BCA68:  SUBS            R6, #1
4BCA6A:  CMP             R1, #1
4BCA6C:  BNE             loc_4BC99E
4BCA6E:  B               loc_4BCA78
4BCA70:  MOV             R0, R4
4BCA72:  B               loc_4BCA78
4BCA74:  LDR             R0, [R7,#arg_8]
4BCA76:  LDR             R0, [R0]
4BCA78:  ADD             SP, SP, #0x10
4BCA7A:  VPOP            {D8}
4BCA7E:  ADD             SP, SP, #4
4BCA80:  POP.W           {R8-R11}
4BCA84:  POP             {R4-R7,PC}
