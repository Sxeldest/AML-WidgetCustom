; =========================================================
; Game Engine Function: _ZN10BoneNode_c9SetLimitsEiff
; Address            : 0x4D1FA6 - 0x4D1FD8
; =========================================================

4D1FA6:  VMOV            S0, R2
4D1FAA:  CMP             R1, #2
4D1FAC:  BEQ             loc_4D1FC0
4D1FAE:  CMP             R1, #1
4D1FB0:  BEQ             loc_4D1FC8
4D1FB2:  CMP             R1, #0
4D1FB4:  IT NE
4D1FB6:  BXNE            LR
4D1FB8:  VSTR            S0, [R0,#0x7C]
4D1FBC:  ADDS            R0, #0x88
4D1FBE:  B               loc_4D1FCE
4D1FC0:  VSTR            S0, [R0,#0x84]
4D1FC4:  ADDS            R0, #0x90
4D1FC6:  B               loc_4D1FCE
4D1FC8:  VSTR            S0, [R0,#0x80]
4D1FCC:  ADDS            R0, #0x8C
4D1FCE:  VMOV            S0, R3
4D1FD2:  VSTR            S0, [R0]
4D1FD6:  BX              LR
