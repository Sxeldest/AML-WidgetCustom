; =========================================================
; Game Engine Function: sub_1E31E8
; Address            : 0x1E31E8 - 0x1E31FA
; =========================================================

1E31E8:  LDR             R2, =(_ZTSZN4llmo3mem3lib4findEPKcbE3$_0 - 0x1E31F2); type descriptor name
1E31EA:  LDR             R3, [R1,#4]
1E31EC:  MOVS            R1, #0
1E31EE:  ADD             R2, PC; type descriptor name
1E31F0:  CMP             R3, R2
1E31F2:  IT EQ
1E31F4:  ADDEQ           R1, R0, #4
1E31F6:  MOV             R0, R1
1E31F8:  BX              LR
