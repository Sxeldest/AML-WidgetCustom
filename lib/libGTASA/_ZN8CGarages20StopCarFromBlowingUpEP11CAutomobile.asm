; =========================================================
; Game Engine Function: _ZN8CGarages20StopCarFromBlowingUpEP11CAutomobile
; Address            : 0x314494 - 0x3144DA
; =========================================================

314494:  PUSH            {R4,R6,R7,LR}
314496:  ADD             R7, SP, #8
314498:  ADDW            R1, R0, #0x4CC
31449C:  VLDR            S0, =300.0
3144A0:  ADDW            R4, R0, #0x5B4
3144A4:  MOVS            R2, #0
3144A6:  VLDR            S2, [R1]
3144AA:  STR.W           R2, [R0,#0x8F8]
3144AE:  MOV             R0, R4; this
3144B0:  VMAX.F32        D0, D1, D0
3144B4:  VSTR            S0, [R1]
3144B8:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
3144BC:  CMP.W           R0, #0x112
3144C0:  BHI             loc_3144C8
3144C2:  MOVW            R1, #0x113
3144C6:  B               loc_3144D0
3144C8:  MOV             R0, R4; this
3144CA:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
3144CE:  MOV             R1, R0; unsigned int
3144D0:  MOV             R0, R4; this
3144D2:  POP.W           {R4,R6,R7,LR}
3144D6:  B.W             j_j__ZN14CDamageManager15SetEngineStatusEj; j_CDamageManager::SetEngineStatus(uint)
