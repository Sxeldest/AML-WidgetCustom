; =========================================================
; Game Engine Function: sub_10AFD8
; Address            : 0x10AFD8 - 0x10AFEC
; =========================================================

10AFD8:  BIC             R0, R1, #0x1F
10AFDC:  SUB             R0, R0, #0x100
10AFE0:  CLZ             R0, R0
10AFE4:  MOV             R0, R0,LSR#5
10AFE8:  BX              LR
