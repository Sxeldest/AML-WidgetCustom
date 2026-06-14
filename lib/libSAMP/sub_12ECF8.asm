; =========================================================
; Game Engine Function: sub_12ECF8
; Address            : 0x12ECF8 - 0x12ED0A
; =========================================================

12ECF8:  LDR             R2, =(_ZTSZN12express_menuC1EvE3$_0 - 0x12ED02); type descriptor name
12ECFA:  LDR             R3, [R1,#4]
12ECFC:  MOVS            R1, #0
12ECFE:  ADD             R2, PC; type descriptor name
12ED00:  CMP             R3, R2
12ED02:  IT EQ
12ED04:  ADDEQ           R1, R0, #4
12ED06:  MOV             R0, R1
12ED08:  BX              LR
