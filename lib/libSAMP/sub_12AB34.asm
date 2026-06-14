; =========================================================
; Game Engine Function: sub_12AB34
; Address            : 0x12AB34 - 0x12AB46
; =========================================================

12AB34:  LDR             R2, =(_ZTSZN2UI12render3DTextEvE3$_1 - 0x12AB3E); type descriptor name
12AB36:  LDR             R3, [R1,#4]
12AB38:  MOVS            R1, #0
12AB3A:  ADD             R2, PC; type descriptor name
12AB3C:  CMP             R3, R2
12AB3E:  IT EQ
12AB40:  ADDEQ           R1, R0, #4
12AB42:  MOV             R0, R1
12AB44:  BX              LR
