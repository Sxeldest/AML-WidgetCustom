; =========================================================
; Game Engine Function: silk_bwexpander_32
; Address            : 0xB3504 - 0xB3582
; =========================================================

B3504:  PUSH            {R4-R7,LR}
B3506:  ADD             R7, SP, #0xC
B3508:  PUSH.W          {R8,R9,R11}
B350C:  SUB.W           R12, R1, #1
B3510:  MOV.W           R9, R2,ASR#16
B3514:  CMP             R1, #2
B3516:  BLT             loc_B355A
B3518:  SUB.W           LR, R2, #0x10000
B351C:  MOV.W           R8, #1
B3520:  MOV             R4, R12
B3522:  MOV             R5, R0
B3524:  LDR             R6, [R5]
B3526:  UXTH            R1, R2
B3528:  SUBS            R4, #1
B352A:  SXTH            R3, R6
B352C:  MUL.W           R1, R3, R1
B3530:  MUL.W           R3, R3, R9
B3534:  MUL.W           R9, R2, LR
B3538:  ADD.W           R1, R3, R1,ASR#16
B353C:  ADD.W           R3, R8, R6,ASR#15
B3540:  MOV.W           R3, R3,ASR#1
B3544:  MLA.W           R1, R3, R2, R1
B3548:  STR.W           R1, [R5],#4
B354C:  ADD.W           R1, R8, R9,ASR#15
B3550:  ADD.W           R2, R2, R1,ASR#1
B3554:  MOV.W           R9, R2,ASR#16
B3558:  BNE             loc_B3524
B355A:  LDR.W           R1, [R0,R12,LSL#2]
B355E:  UXTH            R6, R2
B3560:  SXTH            R3, R1
B3562:  MULS            R6, R3
B3564:  SMULBB.W        R3, R3, R9
B3568:  ADD.W           R3, R3, R6,ASR#16
B356C:  MOVS            R6, #1
B356E:  ADD.W           R1, R6, R1,ASR#15
B3572:  ASRS            R1, R1, #1
B3574:  MLA.W           R1, R1, R2, R3
B3578:  STR.W           R1, [R0,R12,LSL#2]
B357C:  POP.W           {R8,R9,R11}
B3580:  POP             {R4-R7,PC}
