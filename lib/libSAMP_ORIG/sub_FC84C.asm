; =========================================================
; Game Engine Function: sub_FC84C
; Address            : 0xFC84C - 0xFC85A
; =========================================================

FC84C:  LDR             R2, =(unk_5E278 - 0xFC852)
FC84E:  ADD             R2, PC; unk_5E278
FC850:  LDRH.W          R1, [R2,R1,LSL#1]
FC854:  STRH.W          R1, [R0],#2
FC858:  BX              LR
