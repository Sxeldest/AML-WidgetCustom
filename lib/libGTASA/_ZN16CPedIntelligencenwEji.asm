; =========================================================
; Game Engine Function: _ZN16CPedIntelligencenwEji
; Address            : 0x4C2434 - 0x4C2482
; =========================================================

4C2434:  PUSH            {R4,R6,R7,LR}
4C2436:  ADD             R7, SP, #8
4C2438:  LDR             R0, =(_ZN6CPools23ms_pPedIntelligencePoolE_ptr - 0x4C2444)
4C243A:  ASRS            R4, R1, #8
4C243C:  AND.W           R1, R1, #0x7F
4C2440:  ADD             R0, PC; _ZN6CPools23ms_pPedIntelligencePoolE_ptr
4C2442:  LDR             R0, [R0]; CPools::ms_pPedIntelligencePool ...
4C2444:  LDR             R2, [R0]; CPools::ms_pPedIntelligencePool
4C2446:  LDRD.W          R12, LR, [R2]
4C244A:  LDRB.W          R0, [LR,R4]
4C244E:  AND.W           R0, R0, #0x7F
4C2452:  STRB.W          R0, [LR,R4]
4C2456:  LDR.W           LR, [R2,#4]
4C245A:  LDRB.W          R0, [LR,R4]
4C245E:  AND.W           R0, R0, #0x80
4C2462:  ORRS            R0, R1
4C2464:  STRB.W          R0, [LR,R4]
4C2468:  MOVS            R0, #0
4C246A:  LDR             R1, [R2,#4]
4C246C:  STR             R0, [R2,#0xC]
4C246E:  LDRSB           R3, [R1,R0]
4C2470:  ADDS            R0, #1
4C2472:  CMP.W           R3, #0xFFFFFFFF
4C2476:  BGT             loc_4C246C
4C2478:  MOV.W           R0, #0x298
4C247C:  MLA.W           R0, R4, R0, R12
4C2480:  POP             {R4,R6,R7,PC}
