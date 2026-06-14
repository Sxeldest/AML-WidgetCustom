; =========================================================
; Game Engine Function: sub_21EEBC
; Address            : 0x21EEBC - 0x21EEE2
; =========================================================

21EEBC:  PUSH            {R7,LR}
21EEBE:  MOV             R7, SP
21EEC0:  CBZ             R2, loc_21EED0
21EEC2:  CMP             R0, R1
21EEC4:  BEQ             loc_21EEDE
21EEC6:  LDR             R1, [R1,#4]; s2
21EEC8:  LDR             R0, [R0,#4]; s1
21EECA:  BLX             strcmp
21EECE:  B               loc_21EED6
21EED0:  LDR             R1, [R1,#4]
21EED2:  LDR             R0, [R0,#4]
21EED4:  SUBS            R0, R0, R1
21EED6:  CLZ.W           R0, R0
21EEDA:  LSRS            R0, R0, #5
21EEDC:  POP             {R7,PC}
21EEDE:  MOVS            R0, #1
21EEE0:  POP             {R7,PC}
