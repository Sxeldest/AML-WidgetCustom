; =========================================================
; Game Engine Function: sub_1E3270
; Address            : 0x1E3270 - 0x1E3282
; =========================================================

1E3270:  LDR             R2, =(_ZTSZN4llmo3mem3lib4nameEjE3$_1 - 0x1E327A); type descriptor name
1E3272:  LDR             R3, [R1,#4]
1E3274:  MOVS            R1, #0
1E3276:  ADD             R2, PC; type descriptor name
1E3278:  CMP             R3, R2
1E327A:  IT EQ
1E327C:  ADDEQ           R1, R0, #4
1E327E:  MOV             R0, R1
1E3280:  BX              LR
