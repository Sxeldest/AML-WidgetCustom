; =========================================================
; Game Engine Function: sub_12C874
; Address            : 0x12C874 - 0x12C886
; =========================================================

12C874:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_2 - 0x12C87E); type descriptor name
12C876:  LDR             R3, [R1,#4]
12C878:  MOVS            R1, #0
12C87A:  ADD             R2, PC; type descriptor name
12C87C:  CMP             R3, R2
12C87E:  IT EQ
12C880:  ADDEQ           R1, R0, #4
12C882:  MOV             R0, R1
12C884:  BX              LR
