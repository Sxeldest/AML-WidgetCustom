; =========================================================
; Game Engine Function: _ZN12CPatrolRoutenwEj
; Address            : 0x3271F4 - 0x327254
; =========================================================

3271F4:  PUSH            {R7,LR}
3271F6:  MOV             R7, SP
3271F8:  LDR             R0, =(_ZN6CPools19ms_pPatrolRoutePoolE_ptr - 0x327202)
3271FA:  MOV.W           LR, #0
3271FE:  ADD             R0, PC; _ZN6CPools19ms_pPatrolRoutePoolE_ptr
327200:  LDR             R0, [R0]; CPools::ms_pPatrolRoutePool ...
327202:  LDR             R1, [R0]; CPools::ms_pPatrolRoutePool
327204:  LDRD.W          R12, R0, [R1,#8]
327208:  ADDS            R0, #1
32720A:  STR             R0, [R1,#0xC]
32720C:  CMP             R0, R12
32720E:  BNE             loc_327220
327210:  MOVS            R0, #0
327212:  MOVS.W          R2, LR,LSL#31
327216:  STR             R0, [R1,#0xC]
327218:  IT NE
32721A:  POPNE           {R7,PC}
32721C:  MOV.W           LR, #1
327220:  LDR             R2, [R1,#4]
327222:  LDRSB           R3, [R2,R0]
327224:  CMP.W           R3, #0xFFFFFFFF
327228:  BGT             loc_327208
32722A:  AND.W           R3, R3, #0x7F
32722E:  STRB            R3, [R2,R0]
327230:  LDR             R0, [R1,#4]
327232:  LDR             R2, [R1,#0xC]
327234:  LDRB            R3, [R0,R2]
327236:  AND.W           R12, R3, #0x80
32723A:  ADDS            R3, #1
32723C:  AND.W           R3, R3, #0x7F
327240:  ORR.W           R3, R3, R12
327244:  STRB            R3, [R0,R2]
327246:  MOV.W           R2, #0x1A4
32724A:  LDR             R0, [R1]
32724C:  LDR             R1, [R1,#0xC]
32724E:  MLA.W           R0, R1, R2, R0
327252:  POP             {R7,PC}
