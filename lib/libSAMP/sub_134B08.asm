; =========================================================
; Game Engine Function: sub_134B08
; Address            : 0x134B08 - 0x134B1A
; =========================================================

134B08:  LDR             R2, =(_ZTSZN4menu7content14init_callbacksEvE4$_10 - 0x134B12); type descriptor name
134B0A:  LDR             R3, [R1,#4]
134B0C:  MOVS            R1, #0
134B0E:  ADD             R2, PC; type descriptor name
134B10:  CMP             R3, R2
134B12:  IT EQ
134B14:  ADDEQ           R1, R0, #4
134B16:  MOV             R0, R1
134B18:  BX              LR
