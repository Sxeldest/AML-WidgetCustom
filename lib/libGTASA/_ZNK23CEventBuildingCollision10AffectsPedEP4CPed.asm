; =========================================================
; Game Engine Function: _ZNK23CEventBuildingCollision10AffectsPedEP4CPed
; Address            : 0x371770 - 0x3718A8
; =========================================================

371770:  PUSH            {R4-R7,LR}
371772:  ADD             R7, SP, #0xC
371774:  PUSH.W          {R11}
371778:  VPUSH           {D8}
37177C:  SUB             SP, SP, #0x10
37177E:  MOV             R4, R1
371780:  MOV             R5, R0
371782:  MOV             R0, R4; this
371784:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371788:  CBNZ            R0, loc_37179A
37178A:  MOV             R0, R4; this
37178C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
371790:  CMP             R0, #1
371792:  BNE             loc_37179A
371794:  LDRH            R0, [R5,#0xC]
371796:  CMP             R0, #1
371798:  BNE             loc_3717AA
37179A:  MOVS            R6, #0
37179C:  MOV             R0, R6
37179E:  ADD             SP, SP, #0x10
3717A0:  VPOP            {D8}
3717A4:  POP.W           {R11}
3717A8:  POP             {R4-R7,PC}
3717AA:  LDR             R0, =(_ZN34CBuildingPotentialCollisionScanner20ms_fNormalZThresholdE_ptr - 0x3717B4)
3717AC:  VLDR            S0, [R5,#0x20]
3717B0:  ADD             R0, PC; _ZN34CBuildingPotentialCollisionScanner20ms_fNormalZThresholdE_ptr
3717B2:  LDR             R0, [R0]; CBuildingPotentialCollisionScanner::ms_fNormalZThreshold ...
3717B4:  VLDR            S2, [R0]
3717B8:  VCMPE.F32       S0, S2
3717BC:  VMRS            APSR_nzcv, FPSCR
3717C0:  BLE             loc_3717CA
3717C2:  LDR             R0, [R5,#0x14]
3717C4:  LDRB            R0, [R0,#0x1E]
3717C6:  LSLS            R0, R0, #0x19
3717C8:  BPL             loc_37179A
3717CA:  LDR.W           R0, [R4,#0x100]
3717CE:  MOVS            R6, #0
3717D0:  CMP             R0, #0
3717D2:  BNE             loc_37179C
3717D4:  ADD.W           R0, R5, #0x18
3717D8:  LDRD.W          R1, R0, [R0]
3717DC:  STRD.W          R1, R0, [SP,#0x28+var_28]
3717E0:  MOV             R0, SP; this
3717E2:  STR             R6, [SP,#0x28+var_20]
3717E4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3717E8:  LDR             R0, [R4,#0x14]
3717EA:  VLDR            S0, [SP,#0x28+var_28]
3717EE:  VLDR            S2, [SP,#0x28+var_24]
3717F2:  VLDR            S6, [R0,#0x10]
3717F6:  VLDR            S8, [R0,#0x14]
3717FA:  VMUL.F32        S0, S6, S0
3717FE:  VLDR            S4, [SP,#0x28+var_20]
371802:  VMUL.F32        S2, S8, S2
371806:  VLDR            S10, [R0,#0x18]
37180A:  VMUL.F32        S4, S10, S4
37180E:  VADD.F32        S0, S0, S2
371812:  VADD.F32        S16, S0, S4
371816:  VLDR            S0, =-0.422
37181A:  VCMPE.F32       S16, S0
37181E:  VMRS            APSR_nzcv, FPSCR
371822:  BGT             loc_37179C
371824:  LDR.W           R0, [R4,#0x440]
371828:  ADDS            R0, #0x34 ; '4'; this
37182A:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
37182E:  CMP             R0, #6
371830:  BNE             loc_371852
371832:  LDR.W           R0, [R4,#0x440]
371836:  ADDS            R0, #0x38 ; '8'; this
371838:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
37183C:  VMOV.F32        S0, #-0.5
371840:  VCMPE.F32       S16, S0
371844:  VMRS            APSR_nzcv, FPSCR
371848:  BLE             loc_371852
37184A:  LDR             R1, [R5,#0x14]
37184C:  LDR             R0, [R0,#0x14]
37184E:  CMP             R0, R1
371850:  BEQ             loc_37179A
371852:  LDR.W           R0, [R4,#0x440]
371856:  ADDS            R0, #0x34 ; '4'; this
371858:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
37185C:  CMP             R0, #0x3C ; '<'
37185E:  BNE             loc_371880
371860:  LDR.W           R0, [R4,#0x440]
371864:  ADDS            R0, #0x38 ; '8'; this
371866:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
37186A:  VMOV.F32        S0, #-0.5
37186E:  VCMPE.F32       S16, S0
371872:  VMRS            APSR_nzcv, FPSCR
371876:  BLE             loc_371880
371878:  LDR             R1, [R5,#0x14]
37187A:  LDR             R0, [R0,#0x14]
37187C:  CMP             R0, R1
37187E:  BEQ             loc_37179A
371880:  LDR.W           R0, [R4,#0x440]
371884:  MOVW            R1, #0x10B; int
371888:  ADDS            R0, #4; this
37188A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37188E:  MOVS            R6, #0
371890:  CMP             R0, #0
371892:  BNE.W           loc_37179C
371896:  LDR.W           R0, [R4,#0x440]
37189A:  ADDS            R0, #0x34 ; '4'; this
37189C:  BLX             j__ZNK13CEventHandler19GetCurrentEventTypeEv; CEventHandler::GetCurrentEventType(void)
3718A0:  CMP             R0, #0x1F
3718A2:  IT NE
3718A4:  MOVNE           R6, #1
3718A6:  B               loc_37179C
