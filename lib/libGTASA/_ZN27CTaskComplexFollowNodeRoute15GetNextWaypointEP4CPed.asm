; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute15GetNextWaypointEP4CPed
; Address            : 0x51FF24 - 0x51FF6E
; =========================================================

51FF24:  LDR             R2, [R1,#0x30]
51FF26:  LDR             R3, [R2]
51FF28:  CMP             R3, #1
51FF2A:  BNE             loc_51FF34
51FF2C:  LDR             R1, [R2,#0xC]
51FF2E:  VLDR            D16, [R2,#4]
51FF32:  B               loc_51FF4E
51FF34:  LDR.W           R12, [R1,#0x38]
51FF38:  ADD.W           R1, R12, #1
51FF3C:  CMP             R1, R3
51FF3E:  BGE             loc_51FF56
51FF40:  ADD.W           R1, R1, R1,LSL#1
51FF44:  ADD.W           R1, R2, R1,LSL#2
51FF48:  VLDR            D16, [R1,#4]
51FF4C:  LDR             R1, [R1,#0xC]
51FF4E:  STR             R1, [R0,#8]
51FF50:  VSTR            D16, [R0]
51FF54:  BX              LR
51FF56:  ADD.W           R1, R12, R12,LSL#1
51FF5A:  LDR.W           R3, [R2,R1,LSL#2]
51FF5E:  ADD.W           R1, R2, R1,LSL#2
51FF62:  VLDR            D16, [R1,#-8]
51FF66:  STR             R3, [R0,#8]
51FF68:  VSTR            D16, [R0]
51FF6C:  BX              LR
