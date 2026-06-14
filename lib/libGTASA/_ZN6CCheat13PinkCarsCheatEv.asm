; =========================================================
; Game Engine Function: _ZN6CCheat13PinkCarsCheatEv
; Address            : 0x2FDB50 - 0x2FDB7A
; =========================================================

2FDB50:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDB56)
2FDB52:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDB54:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
2FDB56:  MOVS            R0, #0
2FDB58:  LDRB.W          R2, [R1,#(word_79681B - 0x7967F4)]
2FDB5C:  CMP             R2, #0
2FDB5E:  MOV.W           R2, #0
2FDB62:  IT EQ
2FDB64:  MOVEQ           R2, #1
2FDB66:  STRB.W          R2, [R1,#(word_79681B - 0x7967F4)]
2FDB6A:  IT NE
2FDB6C:  BXNE            LR
2FDB6E:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDB74)
2FDB70:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDB72:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2FDB74:  STRB.W          R0, [R1,#(word_79681B+1 - 0x7967F4)]
2FDB78:  BX              LR
