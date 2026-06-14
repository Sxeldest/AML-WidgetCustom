; =========================================================
; Game Engine Function: _ZN6CCheat9RiotCheatEv
; Address            : 0x2FE298 - 0x2FE2B0
; =========================================================

2FE298:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE2A0)
2FE29A:  MOVS            R2, #0
2FE29C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE29E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE2A0:  LDRB.W          R1, [R0,#(byte_796841 - 0x7967F4)]
2FE2A4:  CMP             R1, #0
2FE2A6:  IT EQ
2FE2A8:  MOVEQ           R2, #1
2FE2AA:  STRB.W          R2, [R0,#(byte_796841 - 0x7967F4)]
2FE2AE:  BX              LR
