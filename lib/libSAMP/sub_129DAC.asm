; =========================================================
; Game Engine Function: sub_129DAC
; Address            : 0x129DAC - 0x129DBE
; =========================================================

129DAC:  LDR             R2, =(_ZTSZN19extend_render_poolsD1EvE3$_1 - 0x129DB6); type descriptor name
129DAE:  LDR             R3, [R1,#4]
129DB0:  MOVS            R1, #0
129DB2:  ADD             R2, PC; type descriptor name
129DB4:  CMP             R3, R2
129DB6:  IT EQ
129DB8:  ADDEQ           R1, R0, #4
129DBA:  MOV             R0, R1
129DBC:  BX              LR
