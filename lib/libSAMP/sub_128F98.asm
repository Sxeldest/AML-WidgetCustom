; =========================================================
; Game Engine Function: sub_128F98
; Address            : 0x128F98 - 0x128FAA
; =========================================================

128F98:  LDR             R2, =(_ZTSZN15StreamingLimitsD1EvE3$_3 - 0x128FA2); type descriptor name
128F9A:  LDR             R3, [R1,#4]
128F9C:  MOVS            R1, #0
128F9E:  ADD             R2, PC; type descriptor name
128FA0:  CMP             R3, R2
128FA2:  IT EQ
128FA4:  ADDEQ           R1, R0, #4
128FA6:  MOV             R0, R1
128FA8:  BX              LR
