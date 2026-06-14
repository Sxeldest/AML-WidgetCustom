; =========================================================
; Game Engine Function: sub_78AB8
; Address            : 0x78AB8 - 0x78ACA
; =========================================================

78AB8:  LDR             R2, =(_ZTSZN13commandLayoutC1EvE3$_0 - 0x78AC2); type descriptor name
78ABA:  LDR             R3, [R1,#4]
78ABC:  MOVS            R1, #0
78ABE:  ADD             R2, PC; type descriptor name
78AC0:  CMP             R3, R2
78AC2:  IT EQ
78AC4:  ADDEQ           R1, R0, #4
78AC6:  MOV             R0, R1
78AC8:  BX              LR
