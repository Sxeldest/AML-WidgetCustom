; =========================================================
; Game Engine Function: _ZN14CTrafficLights20LightForCars2_VisualEv
; Address            : 0x362AC0 - 0x362B30
; =========================================================

362AC0:  PUSH            {R4,R6,R7,LR}
362AC2:  ADD             R7, SP, #8
362AC4:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362AC8:  CMP             R0, #1
362ACA:  BNE             loc_362AE0
362ACC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362AD4)
362ACE:  MOVS            R1, #3
362AD0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362AD2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362AD4:  LDRB            R0, [R0,#(_ZN6CTimer22m_snTimeInMillisecondsE+1 - 0x96B4D8)]; CTimer::m_snTimeInMilliseconds
362AD6:  LSLS            R0, R0, #0x1D
362AD8:  IT PL
362ADA:  MOVPL           R1, #1
362ADC:  UXTB            R0, R1
362ADE:  POP             {R4,R6,R7,PC}
362AE0:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x362AE6)
362AE2:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr ; this
362AE4:  LDR             R4, [R0]; CCheat::m_aCheatsActive ...
362AE6:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
362AEA:  LDRB.W          R2, [R4,#(byte_796819 - 0x7967F4)]
362AEE:  MOVS            R1, #0
362AF0:  CMP             R2, #0
362AF2:  IT EQ
362AF4:  CMPEQ           R0, #0
362AF6:  BNE             loc_362B2C
362AF8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x362B02)
362AFA:  MOVW            R1, #0x1770
362AFE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
362B00:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
362B02:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
362B04:  UBFX.W          R0, R0, #1, #0xE
362B08:  CMP             R0, R1
362B0A:  BCS             loc_362B12
362B0C:  MOVS            R1, #2
362B0E:  UXTB            R0, R1
362B10:  POP             {R4,R6,R7,PC}
362B12:  MOVW            R1, #0x2AF8
362B16:  CMP             R0, R1
362B18:  BCS             loc_362B20
362B1A:  MOVS            R1, #0
362B1C:  UXTB            R0, R1
362B1E:  POP             {R4,R6,R7,PC}
362B20:  MOVW            R2, #0x2EE0
362B24:  MOVS            R1, #2
362B26:  CMP             R0, R2
362B28:  IT CC
362B2A:  MOVCC           R1, #1
362B2C:  UXTB            R0, R1
362B2E:  POP             {R4,R6,R7,PC}
