; =========================================================
; Game Engine Function: _ZNK9CDecision11HasResponseEv
; Address            : 0x4BDD14 - 0x4BDD42
; =========================================================

4BDD14:  LDR             R1, [R0]
4BDD16:  CMP             R1, #0xC8
4BDD18:  BNE             loc_4BDD32
4BDD1A:  LDR             R1, [R0,#4]
4BDD1C:  CMP             R1, #0xC8
4BDD1E:  ITT EQ
4BDD20:  LDREQ           R1, [R0,#8]
4BDD22:  CMPEQ           R1, #0xC8
4BDD24:  BNE             loc_4BDD32
4BDD26:  LDR             R1, [R0,#0xC]
4BDD28:  CMP             R1, #0xC8
4BDD2A:  ITT EQ
4BDD2C:  LDREQ           R1, [R0,#0x10]
4BDD2E:  CMPEQ           R1, #0xC8
4BDD30:  BEQ             loc_4BDD36
4BDD32:  MOVS            R0, #1
4BDD34:  BX              LR
4BDD36:  LDR             R1, [R0,#0x14]
4BDD38:  MOVS            R0, #0
4BDD3A:  CMP             R1, #0xC8
4BDD3C:  IT NE
4BDD3E:  MOVNE           R0, #1
4BDD40:  BX              LR
