; =========================================================
; Game Engine Function: _ZN10CNodeRoutenwEj
; Address            : 0x327288 - 0x3272E8
; =========================================================

327288:  PUSH            {R7,LR}
32728A:  MOV             R7, SP
32728C:  LDR             R0, =(_ZN6CPools17ms_pNodeRoutePoolE_ptr - 0x327296)
32728E:  MOV.W           LR, #0
327292:  ADD             R0, PC; _ZN6CPools17ms_pNodeRoutePoolE_ptr
327294:  LDR             R0, [R0]; CPools::ms_pNodeRoutePool ...
327296:  LDR             R1, [R0]; CPools::ms_pNodeRoutePool
327298:  LDRD.W          R12, R0, [R1,#8]
32729C:  ADDS            R0, #1
32729E:  STR             R0, [R1,#0xC]
3272A0:  CMP             R0, R12
3272A2:  BNE             loc_3272B4
3272A4:  MOVS            R0, #0
3272A6:  MOVS.W          R2, LR,LSL#31
3272AA:  STR             R0, [R1,#0xC]
3272AC:  IT NE
3272AE:  POPNE           {R7,PC}
3272B0:  MOV.W           LR, #1
3272B4:  LDR             R2, [R1,#4]
3272B6:  LDRSB           R3, [R2,R0]
3272B8:  CMP.W           R3, #0xFFFFFFFF
3272BC:  BGT             loc_32729C
3272BE:  AND.W           R3, R3, #0x7F
3272C2:  STRB            R3, [R2,R0]
3272C4:  LDR             R0, [R1,#4]
3272C6:  LDR             R2, [R1,#0xC]
3272C8:  LDRB            R3, [R0,R2]
3272CA:  AND.W           R12, R3, #0x80
3272CE:  ADDS            R3, #1
3272D0:  AND.W           R3, R3, #0x7F
3272D4:  ORR.W           R3, R3, R12
3272D8:  STRB            R3, [R0,R2]
3272DA:  LDR             R0, [R1]
3272DC:  LDR             R1, [R1,#0xC]
3272DE:  ADD.W           R1, R1, R1,LSL#3
3272E2:  ADD.W           R0, R0, R1,LSL#2
3272E6:  POP             {R7,PC}
