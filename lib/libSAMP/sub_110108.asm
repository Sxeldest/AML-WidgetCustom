; =========================================================
; Game Engine Function: sub_110108
; Address            : 0x110108 - 0x11011A
; =========================================================

110108:  LDR             R2, =(_ZTSZN13StreamCleanerC1EvE3$_0 - 0x110112); type descriptor name
11010A:  LDR             R3, [R1,#4]
11010C:  MOVS            R1, #0
11010E:  ADD             R2, PC; type descriptor name
110110:  CMP             R3, R2
110112:  IT EQ
110114:  ADDEQ           R1, R0, #4
110116:  MOV             R0, R1
110118:  BX              LR
