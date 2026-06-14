; =========================================================
; Game Engine Function: sub_12EF1C
; Address            : 0x12EF1C - 0x12EF2E
; =========================================================

12EF1C:  LDR             R2, =(_ZTSZN14ExtButtonPanelC1EvE3$_0 - 0x12EF26); type descriptor name
12EF1E:  LDR             R3, [R1,#4]
12EF20:  MOVS            R1, #0
12EF22:  ADD             R2, PC; type descriptor name
12EF24:  CMP             R3, R2
12EF26:  IT EQ
12EF28:  ADDEQ           R1, R0, #4
12EF2A:  MOV             R0, R1
12EF2C:  BX              LR
