; =========================================================
; Game Engine Function: _ZN6CCheat19AllCarsAreShitCheatEv
; Address            : 0x2FE07C - 0x2FE0A8
; =========================================================

2FE07C:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE084)
2FE07E:  MOVS            R2, #0
2FE080:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE082:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE084:  LDRB.W          R1, [R0,#(byte_79682A - 0x7967F4)]
2FE088:  CMP             R1, #0
2FE08A:  IT EQ
2FE08C:  MOVEQ           R2, #1
2FE08E:  STRB.W          R2, [R0,#(byte_79682A - 0x7967F4)]
2FE092:  IT NE
2FE094:  BXNE            LR
2FE096:  PUSH            {R7,LR}
2FE098:  MOV             R7, SP
2FE09A:  MOVS            R0, #0x36 ; '6'
2FE09C:  BLX             j__ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE; CCheat::ClearVehiclePopulationCheats(CCheat::eCheat)
2FE0A0:  POP.W           {R7,LR}
2FE0A4:  B.W             j_j__ZN10CStreaming20ReclassifyLoadedCarsEv; j_CStreaming::ReclassifyLoadedCars(void)
