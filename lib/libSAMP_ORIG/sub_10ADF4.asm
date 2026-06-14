; =========================================================
; Game Engine Function: sub_10ADF4
; Address            : 0x10ADF4 - 0x10AE08
; =========================================================

10ADF4:  ADD             R1, R1, #2
10ADF8:  MOV             R0, #0
10ADFC:  CMP             R1, #0x12
10AE00:  MOVWCC          R0, #1
10AE04:  BX              LR
