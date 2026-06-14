; =========================================================
; Game Engine Function: _ZN6CCheat20AllCarsAreGreatCheatEv
; Address            : 0x2FE0AC - 0x2FE0D8
; =========================================================

2FE0AC:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE0B4)
2FE0AE:  MOVS            R2, #0
2FE0B0:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE0B2:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE0B4:  LDRB.W          R1, [R0,#(byte_79682B - 0x7967F4)]
2FE0B8:  CMP             R1, #0
2FE0BA:  IT EQ
2FE0BC:  MOVEQ           R2, #1
2FE0BE:  STRB.W          R2, [R0,#(byte_79682B - 0x7967F4)]
2FE0C2:  IT NE
2FE0C4:  BXNE            LR
2FE0C6:  PUSH            {R7,LR}
2FE0C8:  MOV             R7, SP
2FE0CA:  MOVS            R0, #0x37 ; '7'
2FE0CC:  BLX             j__ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE; CCheat::ClearVehiclePopulationCheats(CCheat::eCheat)
2FE0D0:  POP.W           {R7,LR}
2FE0D4:  B.W             j_j__ZN10CStreaming20ReclassifyLoadedCarsEv; j_CStreaming::ReclassifyLoadedCars(void)
