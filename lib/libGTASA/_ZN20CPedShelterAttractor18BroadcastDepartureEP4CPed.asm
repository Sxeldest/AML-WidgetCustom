; =========================================================
; Game Engine Function: _ZN20CPedShelterAttractor18BroadcastDepartureEP4CPed
; Address            : 0x4A94A0 - 0x4A95B2
; =========================================================

4A94A0:  PUSH            {R4-R7,LR}
4A94A2:  ADD             R7, SP, #0xC
4A94A4:  PUSH.W          {R8-R11}
4A94A8:  SUB             SP, SP, #4
4A94AA:  VPUSH           {D8}
4A94AE:  SUB             SP, SP, #0x20; float
4A94B0:  MOV             R4, R0
4A94B2:  MOVS            R0, #0
4A94B4:  LDR.W           LR, [R4,#0x1C]
4A94B8:  CMP.W           LR, #1
4A94BC:  BLT             loc_4A95A4
4A94BE:  LDR             R2, [R4,#0x20]
4A94C0:  MOV.W           R5, #0xFFFFFFFF
4A94C4:  LDR.W           R6, [R2,R0,LSL#2]
4A94C8:  CMP             R6, R1
4A94CA:  IT EQ
4A94CC:  MOVEQ           R5, R0
4A94CE:  ADDS            R0, #1
4A94D0:  CMP             R0, LR
4A94D2:  BGE             loc_4A94D8
4A94D4:  CMP             R6, R1
4A94D6:  BNE             loc_4A94C4
4A94D8:  CMP             R5, #0
4A94DA:  BLT             loc_4A9508
4A94DC:  LDR.W           R12, [R4,#0x28]
4A94E0:  CMP.W           R12, #0
4A94E4:  BEQ             loc_4A951E
4A94E6:  ADD.W           R6, R12, R12,LSL#2
4A94EA:  MOV             R2, #0xFFFFFFEC
4A94EE:  LDR             R0, [R4,#0x2C]; dest
4A94F0:  ADD.W           R2, R2, R6,LSL#2; n
4A94F4:  MOVS            R6, #0
4A94F6:  LDR             R3, [R0]
4A94F8:  CMP             R3, R1
4A94FA:  BEQ             loc_4A950C
4A94FC:  ADDS            R6, #1
4A94FE:  ADDS            R0, #0x14
4A9500:  SUBS            R2, #0x14
4A9502:  CMP             R6, R12
4A9504:  BCC             loc_4A94F6
4A9506:  B               loc_4A951E
4A9508:  MOVS            R0, #0
4A950A:  B               loc_4A95A4
4A950C:  ADD.W           R1, R0, #0x14; src
4A9510:  BLX             memmove_1
4A9514:  LDR             R0, [R4,#0x28]
4A9516:  LDR.W           LR, [R4,#0x1C]
4A951A:  SUBS            R0, #1
4A951C:  STR             R0, [R4,#0x28]
4A951E:  LDR             R0, [R4,#0x20]
4A9520:  MOV             R2, #0x3FFFFFFF
4A9524:  SUBS            R2, R2, R5
4A9526:  ADD             R2, LR
4A9528:  ADD.W           R0, R0, R5,LSL#2; dest
4A952C:  ADDS            R1, R0, #4; src
4A952E:  LSLS            R2, R2, #2; n
4A9530:  BLX             memmove_1
4A9534:  LDR             R1, [R4,#0x1C]
4A9536:  LDR             R0, [R4,#0x10]
4A9538:  SUBS            R6, R1, #1
4A953A:  STR             R6, [R4,#0x1C]
4A953C:  CMP             R0, #1
4A953E:  BLT             loc_4A95A2
4A9540:  SUB.W           R11, R0, #1
4A9544:  ADD.W           R9, SP, #0x48+var_34
4A9548:  MOV.W           R8, #0
4A954C:  B               loc_4A9554
4A954E:  ADD.W           R8, R8, #1
4A9552:  LDR             R6, [R4,#0x1C]
4A9554:  LDR             R0, [R4,#0x14]
4A9556:  MOV             R1, R6
4A9558:  MOV             R2, R9
4A955A:  LDR.W           R10, [R0,R8,LSL#2]
4A955E:  LDR             R0, [R4]
4A9560:  LDR             R3, [R0,#0x10]
4A9562:  MOV             R0, R4
4A9564:  BLX             R3
4A9566:  LDR             R0, [R4]
4A9568:  ADD             R2, SP, #0x48+var_38
4A956A:  MOV             R1, R6
4A956C:  LDR             R3, [R0,#0x14]
4A956E:  MOV             R0, R4
4A9570:  BLX             R3
4A9572:  MOVS            R0, #word_2C; this
4A9574:  VLDR            S16, [R4,#0x38]
4A9578:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4A957C:  LDR             R3, [SP,#0x48+var_38]; float
4A957E:  MOV             R5, R0
4A9580:  MOVS            R0, #4
4A9582:  STR             R6, [SP,#0x48+var_44]; int
4A9584:  STR             R0, [SP,#0x48+var_40]; int
4A9586:  MOV             R0, R5; this
4A9588:  MOV             R1, R4; CPedAttractor *
4A958A:  MOV             R2, R9; CVector *
4A958C:  VSTR            S16, [SP,#0x48+var_48]
4A9590:  BLX             j__ZN25CTaskComplexGoToAttractorC2EP13CPedAttractorRK7CVectorffii; CTaskComplexGoToAttractor::CTaskComplexGoToAttractor(CPedAttractor *,CVector const&,float,float,int,int)
4A9594:  MOV             R0, R4; this
4A9596:  MOV             R1, R10; CPed *
4A9598:  MOV             R2, R5; CTask *
4A959A:  BLX             j__ZN13CPedAttractor13SetTaskForPedEP4CPedP5CTask; CPedAttractor::SetTaskForPed(CPed *,CTask *)
4A959E:  CMP             R11, R8
4A95A0:  BNE             loc_4A954E
4A95A2:  MOVS            R0, #1
4A95A4:  ADD             SP, SP, #0x20 ; ' '
4A95A6:  VPOP            {D8}
4A95AA:  ADD             SP, SP, #4
4A95AC:  POP.W           {R8-R11}
4A95B0:  POP             {R4-R7,PC}
