; =========================================================
; Game Engine Function: sub_7917C
; Address            : 0x7917C - 0x7918E
; =========================================================

7917C:  LDR             R2, =(_ZTSZN12coordsLayoutC1EvE3$_8 - 0x79186); type descriptor name
7917E:  LDR             R3, [R1,#4]
79180:  MOVS            R1, #0
79182:  ADD             R2, PC; type descriptor name
79184:  CMP             R3, R2
79186:  IT EQ
79188:  ADDEQ           R1, R0, #4
7918A:  MOV             R0, R1
7918C:  BX              LR
