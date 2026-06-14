; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc16HasVisibleTattooEv
; Address            : 0x4574BC - 0x4574FA
; =========================================================

4574BC:  LDR             R1, [R0,#0x38]
4574BE:  CMP             R1, #0
4574C0:  ITT EQ
4574C2:  LDREQ           R1, [R0,#0x3C]
4574C4:  CMPEQ           R1, #0
4574C6:  BEQ             loc_4574CC
4574C8:  MOVS            R0, #1
4574CA:  BX              LR
4574CC:  LDR             R1, [R0,#0x40]
4574CE:  CMP             R1, #0
4574D0:  ITT EQ
4574D2:  LDREQ           R1, [R0,#0x44]
4574D4:  CMPEQ           R1, #0
4574D6:  BNE             loc_4574C8
4574D8:  LDR             R1, [R0,#0x48]
4574DA:  CMP             R1, #0
4574DC:  ITT EQ
4574DE:  LDREQ           R1, [R0,#0x4C]
4574E0:  CMPEQ           R1, #0
4574E2:  BNE             loc_4574C8
4574E4:  LDR             R1, [R0,#0x50]
4574E6:  CMP             R1, #0
4574E8:  ITT EQ
4574EA:  LDREQ           R1, [R0,#0x54]
4574EC:  CMPEQ           R1, #0
4574EE:  BNE             loc_4574C8
4574F0:  LDR             R0, [R0,#0x58]
4574F2:  CMP             R0, #0
4574F4:  IT NE
4574F6:  MOVNE           R0, #1
4574F8:  BX              LR
