; =========================================================
; Game Engine Function: sub_78F9C
; Address            : 0x78F9C - 0x78FAE
; =========================================================

78F9C:  LDR             R2, =(_ZTSZN12coordsLayoutC1EvE3$_6 - 0x78FA6); type descriptor name
78F9E:  LDR             R3, [R1,#4]
78FA0:  MOVS            R1, #0
78FA2:  ADD             R2, PC; type descriptor name
78FA4:  CMP             R3, R2
78FA6:  IT EQ
78FA8:  ADDEQ           R1, R0, #4
78FAA:  MOV             R0, R1
78FAC:  BX              LR
