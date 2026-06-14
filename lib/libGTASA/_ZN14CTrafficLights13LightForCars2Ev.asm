; =========================================================
; Game Engine Function: _ZN14CTrafficLights13LightForCars2Ev
; Address            : 0x3629F4 - 0x362A48
; =========================================================

3629F4:  PUSH            {R4,R6,R7,LR}
3629F6:  ADD             R7, SP, #8
3629F8:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3629FE)
3629FA:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
3629FC:  LDR             R4, [R0]; CCheat::m_aCheatsActive ...
3629FE:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362A02:  LDRB.W          R2, [R4,#(byte_796819 - 0x7967F4)]
362A06:  MOVS            R1, #0
362A08:  CMP             R2, #0
362A0A:  IT EQ
362A0C:  CMPEQ           R0, #0
362A0E:  BNE             loc_362A44
362A10:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362A1A)
362A12:  MOVW            R1, #0x1770
362A16:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362A18:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362A1A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362A1C:  UBFX.W          R0, R0, #1, #0xE
362A20:  CMP             R0, R1
362A22:  BCS             loc_362A2A
362A24:  MOVS            R1, #2
362A26:  UXTB            R0, R1
362A28:  POP             {R4,R6,R7,PC}
362A2A:  MOVW            R1, #0x2AF8
362A2E:  CMP             R0, R1
362A30:  BCS             loc_362A38
362A32:  MOVS            R1, #0
362A34:  UXTB            R0, R1
362A36:  POP             {R4,R6,R7,PC}
362A38:  MOVW            R2, #0x2EE0
362A3C:  MOVS            R1, #2
362A3E:  CMP             R0, R2
362A40:  IT CC
362A42:  MOVCC           R1, #1
362A44:  UXTB            R0, R1
362A46:  POP             {R4,R6,R7,PC}
