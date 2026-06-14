; =========================================================
; Game Engine Function: sub_7907C
; Address            : 0x7907C - 0x7908E
; =========================================================

7907C:  LDR             R2, =(_ZTSZN12coordsLayoutC1EvE3$_7 - 0x79086); type descriptor name
7907E:  LDR             R3, [R1,#4]
79080:  MOVS            R1, #0
79082:  ADD             R2, PC; type descriptor name
79084:  CMP             R3, R2
79086:  IT EQ
79088:  ADDEQ           R1, R0, #4
7908A:  MOV             R0, R1
7908C:  BX              LR
