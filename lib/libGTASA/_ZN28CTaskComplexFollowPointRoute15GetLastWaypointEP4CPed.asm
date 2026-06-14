; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute15GetLastWaypointEP4CPed
; Address            : 0x51ECAC - 0x51ED1C
; =========================================================

51ECAC:  PUSH            {R4,R6,R7,LR}
51ECAE:  ADD             R7, SP, #8
51ECB0:  LDR             R4, [R1,#0x20]
51ECB2:  LDR.W           R12, [R4]
51ECB6:  CMP.W           R12, #1
51ECBA:  BNE             loc_51ECCA
51ECBC:  LDR             R1, [R4,#0xC]
51ECBE:  VLDR            D16, [R4,#4]
51ECC2:  STR             R1, [R0,#8]
51ECC4:  VSTR            D16, [R0]
51ECC8:  POP             {R4,R6,R7,PC}
51ECCA:  LDR             R3, [R1,#0xC]
51ECCC:  CMP             R3, #3
51ECCE:  BHI             loc_51ECE0
51ECD0:  LDR.W           LR, [R1,#0x24]
51ECD4:  CMP.W           LR, #0
51ECD8:  BEQ             loc_51ECEA
51ECDA:  ADD.W           R1, LR, LR,LSL#1
51ECDE:  B               loc_51ECF4
51ECE0:  MOVS            R1, #0
51ECE2:  STRD.W          R1, R1, [R0]
51ECE6:  STR             R1, [R0,#8]
51ECE8:  POP             {R4,R6,R7,PC}
51ECEA:  LDR             R1, [R1,#0x10]
51ECEC:  CMP             R1, #1
51ECEE:  BLT             loc_51ED08
51ECF0:  ADD.W           R1, R12, R12,LSL#1
51ECF4:  LDR.W           R2, [R4,R1,LSL#2]
51ECF8:  ADD.W           R1, R4, R1,LSL#2
51ECFC:  VLDR            D16, [R1,#-8]
51ED00:  STR             R2, [R0,#8]
51ED02:  VSTR            D16, [R0]
51ED06:  POP             {R4,R6,R7,PC}
51ED08:  LDR             R1, [R2,#0x14]
51ED0A:  ADD.W           R3, R1, #0x30 ; '0'
51ED0E:  CMP             R1, #0
51ED10:  IT EQ
51ED12:  ADDEQ           R3, R2, #4
51ED14:  VLDR            D16, [R3]
51ED18:  LDR             R1, [R3,#8]
51ED1A:  B               loc_51ECC2
