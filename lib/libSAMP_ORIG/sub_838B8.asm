; =========================================================
; Game Engine Function: sub_838B8
; Address            : 0x838B8 - 0x838CA
; =========================================================

838B8:  LDR             R2, =(_ZTSZN6Record4InitEjE3$_3 - 0x838C2); type descriptor name
838BA:  LDR             R3, [R1,#4]
838BC:  MOVS            R1, #0
838BE:  ADD             R2, PC; type descriptor name
838C0:  CMP             R3, R2
838C2:  IT EQ
838C4:  ADDEQ           R1, R0, #4
838C6:  MOV             R0, R1
838C8:  BX              LR
