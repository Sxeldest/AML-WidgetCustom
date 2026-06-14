; =========================================================
; Game Engine Function: _ZN14CTrafficLights13LightForCars1Ev
; Address            : 0x3629A4 - 0x3629EA
; =========================================================

3629A4:  PUSH            {R4,R6,R7,LR}
3629A6:  ADD             R7, SP, #8
3629A8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3629AE)
3629AA:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
3629AC:  LDR             R4, [R0]; CCheat::m_aCheatsActive ...
3629AE:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3629B2:  LDRB.W          R2, [R4,#(byte_796819 - 0x7967F4)]
3629B6:  MOVS            R1, #0
3629B8:  CMP             R2, #0
3629BA:  IT EQ
3629BC:  CMPEQ           R0, #0
3629BE:  BNE             loc_3629E6
3629C0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3629CA)
3629C2:  MOVW            R1, #0x1388
3629C6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3629C8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3629CA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3629CC:  UBFX.W          R0, R0, #1, #0xE
3629D0:  CMP             R0, R1
3629D2:  BCS             loc_3629DA
3629D4:  MOVS            R1, #0
3629D6:  UXTB            R0, R1
3629D8:  POP             {R4,R6,R7,PC}
3629DA:  MOVW            R2, #0x1770
3629DE:  MOVS            R1, #2
3629E0:  CMP             R0, R2
3629E2:  IT CC
3629E4:  MOVCC           R1, #1
3629E6:  UXTB            R0, R1
3629E8:  POP             {R4,R6,R7,PC}
