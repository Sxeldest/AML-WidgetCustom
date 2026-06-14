; =========================================================
; Game Engine Function: sub_21EFA4
; Address            : 0x21EFA4 - 0x21EFD4
; =========================================================

21EFA4:  LDR             R0, [R1,#0x10]
21EFA6:  CBZ             R0, loc_21EFBE
21EFA8:  CMP             R0, R2
21EFAA:  BEQ             loc_21EFC8
21EFAC:  MOVS            R0, #1
21EFAE:  STRB.W          R0, [R1,#0x36]
21EFB2:  MOVS            R0, #2
21EFB4:  STR             R0, [R1,#0x18]
21EFB6:  LDR             R0, [R1,#0x24]
21EFB8:  ADDS            R0, #1
21EFBA:  STR             R0, [R1,#0x24]
21EFBC:  B               locret_21EFD2
21EFBE:  MOVS            R0, #1
21EFC0:  STR             R3, [R1,#0x18]
21EFC2:  STR             R0, [R1,#0x24]
21EFC4:  STR             R2, [R1,#0x10]
21EFC6:  BX              LR
21EFC8:  LDR             R0, [R1,#0x18]
21EFCA:  CMP             R0, #2
21EFCC:  ITT EQ
21EFCE:  STREQ           R3, [R1,#0x18]
21EFD0:  BXEQ            LR
21EFD2:  BX              LR
