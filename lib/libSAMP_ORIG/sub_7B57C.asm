; =========================================================
; Game Engine Function: sub_7B57C
; Address            : 0x7B57C - 0x7B58E
; =========================================================

7B57C:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_0 - 0x7B586); type descriptor name
7B57E:  LDR             R3, [R1,#4]
7B580:  MOVS            R1, #0
7B582:  ADD             R2, PC; type descriptor name
7B584:  CMP             R3, R2
7B586:  IT EQ
7B588:  ADDEQ           R1, R0, #4
7B58A:  MOV             R0, R1
7B58C:  BX              LR
