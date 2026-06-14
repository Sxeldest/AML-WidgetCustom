; =========================================================
; Game Engine Function: sub_F3A04
; Address            : 0xF3A04 - 0xF3A16
; =========================================================

F3A04:  LDR             R2, =(_ZTSZN19CTouchInterfaceHookC1EvE3$_0 - 0xF3A0E); type descriptor name
F3A06:  LDR             R3, [R1,#4]
F3A08:  MOVS            R1, #0
F3A0A:  ADD             R2, PC; type descriptor name
F3A0C:  CMP             R3, R2
F3A0E:  IT EQ
F3A10:  ADDEQ           R1, R0, #4
F3A12:  MOV             R0, R1
F3A14:  BX              LR
