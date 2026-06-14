; =========================================================
; Game Engine Function: sub_12C97C
; Address            : 0x12C97C - 0x12C98E
; =========================================================

12C97C:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_4 - 0x12C986); type descriptor name
12C97E:  LDR             R3, [R1,#4]
12C980:  MOVS            R1, #0
12C982:  ADD             R2, PC; type descriptor name
12C984:  CMP             R3, R2
12C986:  IT EQ
12C988:  ADDEQ           R1, R0, #4
12C98A:  MOV             R0, R1
12C98C:  BX              LR
