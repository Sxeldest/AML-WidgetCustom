; =========================================================
; Game Engine Function: _ZN6CCheat14BlackCarsCheatEv
; Address            : 0x2FDB84 - 0x2FDBAE
; =========================================================

2FDB84:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDB8A)
2FDB86:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDB88:  LDR             R1, [R0]; CCheat::m_aCheatsActive ...
2FDB8A:  MOVS            R0, #0
2FDB8C:  LDRB.W          R2, [R1,#(word_79681B+1 - 0x7967F4)]
2FDB90:  CMP             R2, #0
2FDB92:  MOV.W           R2, #0
2FDB96:  IT EQ
2FDB98:  MOVEQ           R2, #1
2FDB9A:  STRB.W          R2, [R1,#(word_79681B+1 - 0x7967F4)]
2FDB9E:  IT NE
2FDBA0:  BXNE            LR
2FDBA2:  LDR             R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDBA8)
2FDBA4:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDBA6:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
2FDBA8:  STRB.W          R0, [R1,#(word_79681B - 0x7967F4)]
2FDBAC:  BX              LR
