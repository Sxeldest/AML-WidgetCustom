; =========================================================
; Game Engine Function: _ZN6CCheat13GangLandCheatEv
; Address            : 0x2FDE84 - 0x2FDEA4
; =========================================================

2FDE84:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDE8E)
2FDE86:  MOVS            R3, #0
2FDE88:  LDR             R1, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x2FDE90)
2FDE8A:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDE8C:  ADD             R1, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
2FDE8E:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDE90:  LDR             R1, [R1]; CPopulation::m_bOnlyCreateRandomGangMembers ...
2FDE92:  LDRB.W          R2, [R0,#(byte_796827 - 0x7967F4)]
2FDE96:  CMP             R2, #0
2FDE98:  IT EQ
2FDE9A:  MOVEQ           R3, #1
2FDE9C:  STRB            R3, [R1]; CPopulation::m_bOnlyCreateRandomGangMembers
2FDE9E:  STRB.W          R3, [R0,#(byte_796827 - 0x7967F4)]
2FDEA2:  BX              LR
