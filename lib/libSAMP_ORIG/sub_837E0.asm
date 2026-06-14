; =========================================================
; Game Engine Function: sub_837E0
; Address            : 0x837E0 - 0x837F2
; =========================================================

837E0:  LDR             R2, =(_ZTSZN6Record4InitEjE3$_1 - 0x837EA); type descriptor name
837E2:  LDR             R3, [R1,#4]
837E4:  MOVS            R1, #0
837E6:  ADD             R2, PC; type descriptor name
837E8:  CMP             R3, R2
837EA:  IT EQ
837EC:  ADDEQ           R1, R0, #4
837EE:  MOV             R0, R1
837F0:  BX              LR
