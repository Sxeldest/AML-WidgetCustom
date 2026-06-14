; =========================================================
; Game Engine Function: _ZN16CPedIntelligence21HasInterestingEntitesEv
; Address            : 0x4C17BA - 0x4C17DA
; =========================================================

4C17BA:  LDR.W           R1, [R0,#0x28C]
4C17BE:  CMP             R1, #0
4C17C0:  ITT EQ
4C17C2:  LDREQ.W         R1, [R0,#0x290]
4C17C6:  CMPEQ           R1, #0
4C17C8:  BEQ             loc_4C17CE
4C17CA:  MOVS            R0, #1
4C17CC:  BX              LR
4C17CE:  LDR.W           R0, [R0,#0x294]
4C17D2:  CMP             R0, #0
4C17D4:  IT NE
4C17D6:  MOVNE           R0, #1
4C17D8:  BX              LR
