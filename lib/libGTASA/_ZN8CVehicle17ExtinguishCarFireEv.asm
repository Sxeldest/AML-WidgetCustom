; =========================================================
; Game Engine Function: _ZN8CVehicle17ExtinguishCarFireEv
; Address            : 0x5854A8 - 0x585512
; =========================================================

5854A8:  PUSH            {R4,R5,R7,LR}
5854AA:  ADD             R7, SP, #8
5854AC:  MOV             R4, R0
5854AE:  LDRB.W          R0, [R4,#0x3A]
5854B2:  AND.W           R0, R0, #0xF8
5854B6:  CMP             R0, #0x28 ; '('
5854B8:  BEQ             loc_5854CE
5854BA:  ADDW            R0, R4, #0x4CC
5854BE:  VLDR            S0, =300.0
5854C2:  VLDR            S2, [R0]
5854C6:  VMAX.F32        D0, D1, D0
5854CA:  VSTR            S0, [R0]
5854CE:  LDR.W           R0, [R4,#0x494]
5854D2:  CBZ             R0, loc_5854EA
5854D4:  LDRB            R1, [R0]
5854D6:  AND.W           R1, R1, #0xFD
5854DA:  STRB            R1, [R0]
5854DC:  LDR.W           R0, [R4,#0x494]; this
5854E0:  BLX             j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
5854E4:  MOVS            R0, #0
5854E6:  STR.W           R0, [R4,#0x494]
5854EA:  LDR.W           R0, [R4,#0x5A0]
5854EE:  CMP             R0, #0
5854F0:  IT NE
5854F2:  POPNE           {R4,R5,R7,PC}
5854F4:  ADDW            R5, R4, #0x5B4
5854F8:  MOV             R0, R5; this
5854FA:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
5854FE:  CMP             R0, #0xE1
585500:  BCC             loc_58550A
585502:  MOV             R0, R5; this
585504:  MOVS            R1, #0xD7; unsigned int
585506:  BLX             j__ZN14CDamageManager15SetEngineStatusEj; CDamageManager::SetEngineStatus(uint)
58550A:  MOVS            R0, #0
58550C:  STR.W           R0, [R4,#0x8F8]
585510:  POP             {R4,R5,R7,PC}
