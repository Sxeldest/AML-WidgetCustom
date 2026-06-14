; =========================================================
; Game Engine Function: _ZN11CHoldEffect9UpdateAllEv
; Address            : 0x296688 - 0x296698
; =========================================================

296688:  LDR             R0, =(_ZN11CHoldEffect12m_pChainHeadE_ptr - 0x29668E)
29668A:  ADD             R0, PC; _ZN11CHoldEffect12m_pChainHeadE_ptr
29668C:  LDR             R0, [R0]; CHoldEffect::m_pChainHead ...
29668E:  LDR             R1, [R0]; CHoldEffect::m_pChainHead
296690:  ADDS            R0, R1, #4
296692:  CMP             R1, #0
296694:  BNE             loc_29668E
296696:  BX              LR
