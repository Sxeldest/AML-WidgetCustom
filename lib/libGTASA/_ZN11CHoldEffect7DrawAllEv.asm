; =========================================================
; Game Engine Function: _ZN11CHoldEffect7DrawAllEv
; Address            : 0x29669C - 0x2966C0
; =========================================================

29669C:  PUSH            {R4,R6,R7,LR}
29669E:  ADD             R7, SP, #8
2966A0:  LDR             R0, =(_ZN11CHoldEffect12m_pChainHeadE_ptr - 0x2966A6)
2966A2:  ADD             R0, PC; _ZN11CHoldEffect12m_pChainHeadE_ptr
2966A4:  LDR             R0, [R0]; CHoldEffect::m_pChainHead ...
2966A6:  LDR             R4, [R0]; CHoldEffect::m_pChainHead
2966A8:  CMP             R4, #0
2966AA:  IT EQ
2966AC:  POPEQ           {R4,R6,R7,PC}
2966AE:  LDRB.W          R0, [R4,#0x25]
2966B2:  CMP             R0, #0
2966B4:  ITT EQ
2966B6:  MOVEQ           R0, R4; this
2966B8:  BLXEQ           j__ZN11CHoldEffect4DrawEv; CHoldEffect::Draw(void)
2966BC:  LDR             R4, [R4,#4]
2966BE:  B               loc_2966A8
