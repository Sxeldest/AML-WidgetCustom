; =========================================================
; Game Engine Function: sub_1349C8
; Address            : 0x1349C8 - 0x1349DA
; =========================================================

1349C8:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_8 - 0x1349D2); type descriptor name
1349CA:  LDR             R3, [R1,#4]
1349CC:  MOVS            R1, #0
1349CE:  ADD             R2, PC; type descriptor name
1349D0:  CMP             R3, R2
1349D2:  IT EQ
1349D4:  ADDEQ           R1, R0, #4
1349D6:  MOV             R0, R1
1349D8:  BX              LR
