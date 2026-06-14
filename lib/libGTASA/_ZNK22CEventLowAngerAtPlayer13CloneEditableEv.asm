; =========================================================
; Game Engine Function: _ZNK22CEventLowAngerAtPlayer13CloneEditableEv
; Address            : 0x378508 - 0x378584
; =========================================================

378508:  PUSH            {R7,LR}
37850A:  MOV             R7, SP
37850C:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378516)
37850E:  MOV.W           LR, #0
378512:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378514:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378516:  LDR             R1, [R0]; CPools::ms_pEventPool
378518:  LDRD.W          R12, R0, [R1,#8]
37851C:  ADDS            R0, #1
37851E:  STR             R0, [R1,#0xC]
378520:  CMP             R0, R12
378522:  BNE             loc_378532
378524:  MOVS            R0, #0
378526:  MOVS.W          R2, LR,LSL#31
37852A:  STR             R0, [R1,#0xC]
37852C:  BNE             loc_378564
37852E:  MOV.W           LR, #1
378532:  LDR             R2, [R1,#4]
378534:  LDRSB           R3, [R2,R0]
378536:  CMP.W           R3, #0xFFFFFFFF
37853A:  BGT             loc_37851C
37853C:  AND.W           R3, R3, #0x7F
378540:  STRB            R3, [R2,R0]
378542:  LDR             R0, [R1,#4]
378544:  LDR             R2, [R1,#0xC]
378546:  LDRB            R3, [R0,R2]
378548:  AND.W           R12, R3, #0x80
37854C:  ADDS            R3, #1
37854E:  AND.W           R3, R3, #0x7F
378552:  ORR.W           R3, R3, R12
378556:  STRB            R3, [R0,R2]
378558:  LDR             R0, [R1]
37855A:  LDR             R1, [R1,#0xC]
37855C:  ADD.W           R1, R1, R1,LSL#4
378560:  ADD.W           R0, R0, R1,LSL#2
378564:  LDR             R1, =(_ZTV22CEventLowAngerAtPlayer_ptr - 0x378572)
378566:  MOVS            R2, #0
378568:  STR             R2, [R0,#4]
37856A:  MOVW            R2, #0x100
37856E:  ADD             R1, PC; _ZTV22CEventLowAngerAtPlayer_ptr
378570:  MOVT            R2, #0xC8
378574:  STR             R2, [R0,#8]
378576:  MOVW            R2, #0xFFFF
37857A:  LDR             R1, [R1]; `vtable for'CEventLowAngerAtPlayer ...
37857C:  STRH            R2, [R0,#0xC]
37857E:  ADDS            R1, #8
378580:  STR             R1, [R0]
378582:  POP             {R7,PC}
