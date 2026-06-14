; =========================================================
; Game Engine Function: sub_12CA00
; Address            : 0x12CA00 - 0x12CA12
; =========================================================

12CA00:  LDR             R2, =(_ZTSZN11ButtonPanelC1EvE3$_5 - 0x12CA0A); type descriptor name
12CA02:  LDR             R3, [R1,#4]
12CA04:  MOVS            R1, #0
12CA06:  ADD             R2, PC; type descriptor name
12CA08:  CMP             R3, R2
12CA0A:  IT EQ
12CA0C:  ADDEQ           R1, R0, #4
12CA0E:  MOV             R0, R1
12CA10:  BX              LR
