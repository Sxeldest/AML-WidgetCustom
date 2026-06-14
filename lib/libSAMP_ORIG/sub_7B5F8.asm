; =========================================================
; Game Engine Function: sub_7B5F8
; Address            : 0x7B5F8 - 0x7B60A
; =========================================================

7B5F8:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_1 - 0x7B602); type descriptor name
7B5FA:  LDR             R3, [R1,#4]
7B5FC:  MOVS            R1, #0
7B5FE:  ADD             R2, PC; type descriptor name
7B600:  CMP             R3, R2
7B602:  IT EQ
7B604:  ADDEQ           R1, R0, #4
7B606:  MOV             R0, R1
7B608:  BX              LR
