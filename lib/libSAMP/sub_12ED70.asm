; =========================================================
; Game Engine Function: sub_12ED70
; Address            : 0x12ED70 - 0x12ED82
; =========================================================

12ED70:  LDR             R2, =(_ZTSZN12express_menuC1EvE3$_1 - 0x12ED7A); type descriptor name
12ED72:  LDR             R3, [R1,#4]
12ED74:  MOVS            R1, #0
12ED76:  ADD             R2, PC; type descriptor name
12ED78:  CMP             R3, R2
12ED7A:  IT EQ
12ED7C:  ADDEQ           R1, R0, #4
12ED7E:  MOV             R0, R1
12ED80:  BX              LR
