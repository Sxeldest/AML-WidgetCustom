; =========================================================
; Game Engine Function: sub_FC6E8
; Address            : 0xFC6E8 - 0xFC6F8
; =========================================================

FC6E8:  CMP             R1, #9
FC6EA:  IT HI
FC6EC:  BHI.W           sub_FC84C
FC6F0:  ADDS            R1, #0x30 ; '0'
FC6F2:  STRB.W          R1, [R0],#1
FC6F6:  BX              LR
