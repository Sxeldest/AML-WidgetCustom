; =========================================================
; Game Engine Function: _ZN15CTouchInterface13MarketingHackEi
; Address            : 0x2B2888 - 0x2B28AE
; =========================================================

2B2888:  LDR             R2, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2890)
2B288A:  MOVS            R1, #0
2B288C:  ADD             R2, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B288E:  LDR.W           R12, [R2]; CTouchInterface::m_pWidgets ...
2B2892:  B               loc_2B289C
2B2894:  ADDS            R1, #1
2B2896:  CMP             R1, #0xBE
2B2898:  IT EQ
2B289A:  BXEQ            LR
2B289C:  LDR.W           R3, [R12,R1,LSL#2]
2B28A0:  CMP             R3, #0
2B28A2:  BEQ             loc_2B2894
2B28A4:  LDR             R2, [R3,#0x7C]
2B28A6:  CMP             R2, #1
2B28A8:  IT GE
2B28AA:  STRGE           R0, [R3,#0x7C]
2B28AC:  B               loc_2B2894
