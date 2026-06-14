; =========================================================
; Game Engine Function: sub_1347E8
; Address            : 0x1347E8 - 0x1347FA
; =========================================================

1347E8:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_5 - 0x1347F2); type descriptor name
1347EA:  LDR             R3, [R1,#4]
1347EC:  MOVS            R1, #0
1347EE:  ADD             R2, PC; type descriptor name
1347F0:  CMP             R3, R2
1347F2:  IT EQ
1347F4:  ADDEQ           R1, R0, #4
1347F6:  MOV             R0, R1
1347F8:  BX              LR
