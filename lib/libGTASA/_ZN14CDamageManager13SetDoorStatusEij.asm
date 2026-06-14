; =========================================================
; Game Engine Function: _ZN14CDamageManager13SetDoorStatusEij
; Address            : 0x56E740 - 0x56E756
; =========================================================

56E740:  SUBS            R1, #8
56E742:  CMP             R1, #3
56E744:  IT HI
56E746:  BXHI            LR
56E748:  LDR             R3, =(unk_61ECA4 - 0x56E74E)
56E74A:  ADD             R3, PC; unk_61ECA4
56E74C:  LDR.W           R1, [R3,R1,LSL#2]
56E750:  ADD             R0, R1
56E752:  STRB            R2, [R0,#9]
56E754:  BX              LR
