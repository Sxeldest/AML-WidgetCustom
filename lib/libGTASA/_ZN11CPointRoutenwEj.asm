; =========================================================
; Game Engine Function: _ZN11CPointRoutenwEj
; Address            : 0x327160 - 0x3271BE
; =========================================================

327160:  PUSH            {R7,LR}
327162:  MOV             R7, SP
327164:  LDR             R0, =(_ZN6CPools18ms_pPointRoutePoolE_ptr - 0x32716E)
327166:  MOV.W           LR, #0
32716A:  ADD             R0, PC; _ZN6CPools18ms_pPointRoutePoolE_ptr
32716C:  LDR             R0, [R0]; CPools::ms_pPointRoutePool ...
32716E:  LDR             R1, [R0]; CPools::ms_pPointRoutePool
327170:  LDRD.W          R12, R0, [R1,#8]
327174:  ADDS            R0, #1
327176:  STR             R0, [R1,#0xC]
327178:  CMP             R0, R12
32717A:  BNE             loc_32718C
32717C:  MOVS            R0, #0
32717E:  MOVS.W          R2, LR,LSL#31
327182:  STR             R0, [R1,#0xC]
327184:  IT NE
327186:  POPNE           {R7,PC}
327188:  MOV.W           LR, #1
32718C:  LDR             R2, [R1,#4]
32718E:  LDRSB           R3, [R2,R0]
327190:  CMP.W           R3, #0xFFFFFFFF
327194:  BGT             loc_327174
327196:  AND.W           R3, R3, #0x7F
32719A:  STRB            R3, [R2,R0]
32719C:  LDR             R0, [R1,#4]
32719E:  LDR             R2, [R1,#0xC]
3271A0:  LDRB            R3, [R0,R2]
3271A2:  AND.W           R12, R3, #0x80
3271A6:  ADDS            R3, #1
3271A8:  AND.W           R3, R3, #0x7F
3271AC:  ORR.W           R3, R3, R12
3271B0:  STRB            R3, [R0,R2]
3271B2:  MOVS            R2, #0x64 ; 'd'
3271B4:  LDR             R0, [R1]
3271B6:  LDR             R1, [R1,#0xC]
3271B8:  MLA.W           R0, R1, R2, R0
3271BC:  POP             {R7,PC}
