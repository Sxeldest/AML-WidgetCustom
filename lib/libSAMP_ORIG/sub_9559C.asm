; =========================================================
; Game Engine Function: sub_9559C
; Address            : 0x9559C - 0x955AA
; =========================================================

9559C:  LDR             R1, =(dword_1ACF68 - 0x955A2)
9559E:  ADD             R1, PC; dword_1ACF68
955A0:  LDR             R1, [R1]
955A2:  ADD             R0, R1
955A4:  LDRB.W          R0, [R0,#0x3DD]
955A8:  BX              LR
