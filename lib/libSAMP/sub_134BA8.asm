; =========================================================
; Game Engine Function: sub_134BA8
; Address            : 0x134BA8 - 0x134BBA
; =========================================================

134BA8:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE4$_11 - 0x134BB2); type descriptor name
134BAA:  LDR             R3, [R1,#4]
134BAC:  MOVS            R1, #0
134BAE:  ADD             R2, PC; type descriptor name
134BB0:  CMP             R3, R2
134BB2:  IT EQ
134BB4:  ADDEQ           R1, R0, #4
134BB6:  MOV             R0, R1
134BB8:  BX              LR
