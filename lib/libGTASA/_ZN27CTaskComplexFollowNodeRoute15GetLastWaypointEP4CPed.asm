; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute15GetLastWaypointEP4CPed
; Address            : 0x51FED8 - 0x51FF24
; =========================================================

51FED8:  LDR.W           R12, [R1,#0x30]
51FEDC:  LDR.W           R3, [R12]
51FEE0:  CMP             R3, #1
51FEE2:  BNE             loc_51FEEE
51FEE4:  LDR.W           R1, [R12,#0xC]
51FEE8:  VLDR            D16, [R12,#4]
51FEEC:  B               loc_51FF1C
51FEEE:  LDR             R1, [R1,#0x38]
51FEF0:  CBZ             R1, loc_51FF0A
51FEF2:  ADD.W           R1, R1, R1,LSL#1
51FEF6:  LDR.W           R2, [R12,R1,LSL#2]
51FEFA:  ADD.W           R1, R12, R1,LSL#2
51FEFE:  VLDR            D16, [R1,#-8]
51FF02:  STR             R2, [R0,#8]
51FF04:  VSTR            D16, [R0]
51FF08:  BX              LR
51FF0A:  LDR             R1, [R2,#0x14]
51FF0C:  ADD.W           R3, R1, #0x30 ; '0'
51FF10:  CMP             R1, #0
51FF12:  IT EQ
51FF14:  ADDEQ           R3, R2, #4
51FF16:  VLDR            D16, [R3]
51FF1A:  LDR             R1, [R3,#8]
51FF1C:  STR             R1, [R0,#8]
51FF1E:  VSTR            D16, [R0]
51FF22:  BX              LR
