; =========================================================
; Game Engine Function: _ZN11CMenuSystem21FindCarColourFromGridEhh
; Address            : 0x43DBF0 - 0x43DC10
; =========================================================

43DBF0:  LDR             R2, =(MenuNumber_ptr - 0x43DBF6)
43DBF2:  ADD             R2, PC; MenuNumber_ptr
43DBF4:  LDR             R3, [R2]; MenuNumber
43DBF6:  MOVS            R2, #0
43DBF8:  LDR.W           R0, [R3,R0,LSL#2]
43DBFC:  LDRB            R3, [R0,R2]
43DBFE:  CMP             R3, R1
43DC00:  BEQ             loc_43DC0C
43DC02:  ADDS            R3, R2, #1
43DC04:  CMP             R2, #0x3F ; '?'
43DC06:  MOV             R2, R3
43DC08:  BLT             loc_43DBFC
43DC0A:  MOVS            R2, #0
43DC0C:  UXTB            R0, R2
43DC0E:  BX              LR
