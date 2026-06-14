; =========================================================
; Game Engine Function: sub_D3468
; Address            : 0xD3468 - 0xD3582
; =========================================================

D3468:  PUSH            {R4-R7,LR}
D346A:  ADD             R7, SP, #0xC
D346C:  PUSH.W          {R11}
D3470:  MOV             R4, R0
D3472:  CMP             R2, #8
D3474:  LDR.W           R0, [R4,R2,LSL#2]
D3478:  MOV.W           LR, R1,LSL#4
D347C:  ITTTT EQ
D347E:  UXTHEQ          R2, R0
D3480:  LSLEQ           R1, R1, #0x14
D3482:  MOVEQ.W         R12, R1,ASR#16
D3486:  MOVEQ           R3, #1
D3488:  ITTTT EQ
D348A:  MULEQ.W         R6, R2, R12
D348E:  ADDEQ.W         R2, R3, LR,ASR#15
D3492:  ASREQ           R2, R2, #1
D3494:  MULEQ.W         R3, R0, R2
D3498:  ITTTT EQ
D349A:  SMLATTEQ.W      R0, R0, R1, R3
D349E:  LDRDEQ.W        R5, R3, [R4,#0x18]
D34A2:  ADDEQ.W         R0, R0, R6,ASR#16
D34A6:  ADDEQ           R0, R0, R3
D34A8:  ITTTT EQ
D34AA:  MLAEQ.W         R3, R0, R2, R5
D34AE:  UXTHEQ          R6, R0
D34B0:  MULEQ.W         R6, R6, R12
D34B4:  SMLATTEQ.W      R0, R0, R1, R3
D34B8:  ITTTT EQ
D34BA:  LDREQ           R3, [R4,#0x14]
D34BC:  ADDEQ.W         R0, R0, R6,ASR#16
D34C0:  MLAEQ.W         R3, R0, R2, R3
D34C4:  UXTHEQ          R6, R0
D34C6:  ITTTT EQ
D34C8:  MULEQ.W         R6, R6, R12
D34CC:  SMLATTEQ.W      R0, R0, R1, R3
D34D0:  LDREQ           R3, [R4,#0x10]
D34D2:  ADDEQ.W         R0, R0, R6,ASR#16
D34D6:  ITTTT EQ
D34D8:  MLAEQ.W         R3, R0, R2, R3
D34DC:  UXTHEQ          R6, R0
D34DE:  MULEQ.W         R6, R6, R12
D34E2:  SMLATTEQ.W      R0, R0, R1, R3
D34E6:  ITTTT EQ
D34E8:  ADDEQ.W         R0, R0, R6,ASR#16
D34EC:  LDRDEQ.W        R3, R6, [R4]
D34F0:  LDRDEQ.W        R5, R4, [R4,#8]
D34F4:  MLAEQ.W         R4, R0, R2, R4
D34F8:  ITTTT EQ
D34FA:  SMLATTEQ.W      R4, R0, R1, R4
D34FE:  UXTHEQ          R0, R0
D3500:  MULEQ.W         R0, R0, R12
D3504:  ADDEQ.W         R0, R4, R0,ASR#16
D3508:  ITTTT EQ
D350A:  UXTHEQ          R4, R0
D350C:  MULEQ.W         R4, R4, R12
D3510:  MLAEQ.W         R5, R0, R2, R5
D3514:  SMLATTEQ.W      R0, R0, R1, R5
D3518:  ITTTT EQ
D351A:  ADDEQ.W         R0, R0, R4,ASR#16
D351E:  MLAEQ.W         R6, R0, R2, R6
D3522:  UXTHEQ          R5, R0
D3524:  MULEQ.W         R5, R5, R12
D3528:  ITTTT EQ
D352A:  SMLATTEQ.W      R0, R0, R1, R6
D352E:  ADDEQ.W         R0, R0, R5,ASR#16
D3532:  MLAEQ.W         R2, R0, R2, R3
D3536:  UXTHEQ          R3, R0
D3538:  ITTTT EQ
D353A:  MULEQ.W         R3, R3, R12
D353E:  SMLATTEQ.W      R0, R0, R1, R2
D3542:  ADDEQ.W         R0, R0, R3,ASR#16
D3546:  POPEQ.W         {R11}
D354A:  IT EQ
D354C:  POPEQ           {R4-R7,PC}
D354E:  CMP             R2, #1
D3550:  BLT             loc_D357C
D3552:  MOVS            R3, #1
D3554:  LSLS            R1, R1, #0x14
D3556:  ADD.W           R3, R3, LR,ASR#15
D355A:  ASRS            R1, R1, #0x10
D355C:  MOV.W           R12, R3,ASR#1
D3560:  SUBS            R3, R4, #4
D3562:  UXTH            R5, R0
D3564:  MUL.W           R6, R0, R12
D3568:  MULS            R5, R1
D356A:  SMLABT.W        R0, R1, R0, R6
D356E:  LDR.W           R6, [R3,R2,LSL#2]
D3572:  SUBS            R2, #1
D3574:  ADD.W           R0, R0, R5,ASR#16
D3578:  ADD             R0, R6
D357A:  BGT             loc_D3562
D357C:  POP.W           {R11}
D3580:  POP             {R4-R7,PC}
