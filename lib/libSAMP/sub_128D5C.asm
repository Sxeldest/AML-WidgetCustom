; =========================================================
; Game Engine Function: sub_128D5C
; Address            : 0x128D5C - 0x128D6E
; =========================================================

128D5C:  LDR             R2, =(_ZTSZN15StreamingLimitsD1EvE3$_0 - 0x128D66); type descriptor name
128D5E:  LDR             R3, [R1,#4]
128D60:  MOVS            R1, #0
128D62:  ADD             R2, PC; type descriptor name
128D64:  CMP             R3, R2
128D66:  IT EQ
128D68:  ADDEQ           R1, R0, #4
128D6A:  MOV             R0, R1
128D6C:  BX              LR
