; =========================================================
; Game Engine Function: sub_134748
; Address            : 0x134748 - 0x13475A
; =========================================================

134748:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE3$_4 - 0x134752); type descriptor name
13474A:  LDR             R3, [R1,#4]
13474C:  MOVS            R1, #0
13474E:  ADD             R2, PC; type descriptor name
134750:  CMP             R3, R2
134752:  IT EQ
134754:  ADDEQ           R1, R0, #4
134756:  MOV             R0, R1
134758:  BX              LR
