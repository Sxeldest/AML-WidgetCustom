; =========================================================
; Game Engine Function: sub_29B6CC
; Address            : 0x29B6CC - 0x29B6D6
; =========================================================

29B6CC:  LDR             R0, =(byte_6E01A8 - 0x29B6D4)
29B6CE:  MOVS            R1, #1
29B6D0:  ADD             R0, PC; byte_6E01A8
29B6D2:  STRB            R1, [R0]
29B6D4:  BX              LR
