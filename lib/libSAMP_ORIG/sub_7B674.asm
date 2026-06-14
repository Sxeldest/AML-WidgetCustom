; =========================================================
; Game Engine Function: sub_7B674
; Address            : 0x7B674 - 0x7B686
; =========================================================

7B674:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_2 - 0x7B67E); type descriptor name
7B676:  LDR             R3, [R1,#4]
7B678:  MOVS            R1, #0
7B67A:  ADD             R2, PC; type descriptor name
7B67C:  CMP             R3, R2
7B67E:  IT EQ
7B680:  ADDEQ           R1, R0, #4
7B682:  MOV             R0, R1
7B684:  BX              LR
