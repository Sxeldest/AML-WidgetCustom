; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute15GetNextWaypointEP4CPed
; Address            : 0x51ED1C - 0x51ED88
; =========================================================

51ED1C:  PUSH            {R7,LR}
51ED1E:  MOV             R7, SP
51ED20:  LDR             R2, [R1,#0x20]
51ED22:  LDR.W           LR, [R2]
51ED26:  CMP.W           LR, #1
51ED2A:  BNE             loc_51ED34
51ED2C:  LDR             R1, [R2,#0xC]
51ED2E:  VLDR            D16, [R2,#4]
51ED32:  B               loc_51ED76
51ED34:  LDR             R3, [R1,#0xC]
51ED36:  CMP             R3, #3
51ED38:  BCS             loc_51ED5E
51ED3A:  LDR.W           R12, [R1,#0x24]
51ED3E:  ADD.W           R1, R12, #1
51ED42:  CMP             R1, LR
51ED44:  BLT             loc_51ED68
51ED46:  ADD.W           R1, R12, R12,LSL#1
51ED4A:  LDR.W           R3, [R2,R1,LSL#2]
51ED4E:  ADD.W           R1, R2, R1,LSL#2
51ED52:  VLDR            D16, [R1,#-8]
51ED56:  STR             R3, [R0,#8]
51ED58:  VSTR            D16, [R0]
51ED5C:  POP             {R7,PC}
51ED5E:  BNE             loc_51ED7E
51ED60:  LDR             R1, [R1,#0x24]
51ED62:  ADDS            R1, #1
51ED64:  CMP             R1, LR
51ED66:  BEQ             loc_51ED2C
51ED68:  ADD.W           R1, R1, R1,LSL#1
51ED6C:  ADD.W           R1, R2, R1,LSL#2
51ED70:  VLDR            D16, [R1,#4]
51ED74:  LDR             R1, [R1,#0xC]
51ED76:  STR             R1, [R0,#8]
51ED78:  VSTR            D16, [R0]
51ED7C:  POP             {R7,PC}
51ED7E:  MOVS            R1, #0
51ED80:  STRD.W          R1, R1, [R0]
51ED84:  STR             R1, [R0,#8]
51ED86:  POP             {R7,PC}
