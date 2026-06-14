; =========================================================
; Game Engine Function: sub_83848
; Address            : 0x83848 - 0x8385A
; =========================================================

83848:  LDR             R2, =(_ZTSZN6Record4InitEjE3$_2 - 0x83852); type descriptor name
8384A:  LDR             R3, [R1,#4]
8384C:  MOVS            R1, #0
8384E:  ADD             R2, PC; type descriptor name
83850:  CMP             R3, R2
83852:  IT EQ
83854:  ADDEQ           R1, R0, #4
83856:  MOV             R0, R1
83858:  BX              LR
