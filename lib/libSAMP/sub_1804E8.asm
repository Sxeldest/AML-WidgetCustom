; =========================================================
; Game Engine Function: sub_1804E8
; Address            : 0x1804E8 - 0x180584
; =========================================================

1804E8:  PUSH            {R4-R7,LR}
1804EA:  ADD             R7, SP, #0xC
1804EC:  PUSH.W          {R8-R11}
1804F0:  SUB             SP, SP, #0x13C
1804F2:  MOV             R8, R0
1804F4:  ADD             R0, SP, #0x158+var_134; int
1804F6:  MOV             R10, R1
1804F8:  MOVS            R1, #1; size
1804FA:  MOV             R6, R3
1804FC:  MOV             R9, R2
1804FE:  BL              sub_17D4C0
180502:  MOVS            R1, #0x20 ; ' '
180504:  STRB.W          R1, [R7,#var_1D]
180508:  SUB.W           R1, R7, #-var_1D
18050C:  MOVS            R2, #8
18050E:  MOVS            R3, #1
180510:  BL              sub_17D628
180514:  LDR.W           R11, [R7,#arg_0]
180518:  LDR             R4, [SP,#0x158+var_134]
18051A:  LDR             R5, [SP,#0x158+var_128]
18051C:  CBZ             R6, loc_180558
18051E:  BL              sub_17E2E4
180522:  MOVS            R1, #0
180524:  MOVS            R2, #9
180526:  STRD.W          R2, R11, [SP,#0x158+var_158]
18052A:  MOV             R2, R4
18052C:  STRD.W          R0, R1, [SP,#0x158+var_140]
180530:  MOV             R0, R8
180532:  STRD.W          R1, R1, [SP,#0x158+var_148]
180536:  MOV             R1, R5
180538:  MOVS            R3, #3
18053A:  STRD.W          R10, R9, [SP,#0x158+var_150]
18053E:  BL              sub_1825E8
180542:  MOVS            R4, #1
180544:  MOV             R0, R8
180546:  MOV             R1, R10
180548:  MOV             R2, R9
18054A:  MOVS            R3, #1
18054C:  STR             R4, [SP,#0x158+var_158]
18054E:  BL              sub_181978
180552:  STR.W           R4, [R0,#0x83C]
180556:  B               loc_180576
180558:  MOVS            R2, #9
18055A:  MOVS            R0, #1
18055C:  MOVS            R1, #0
18055E:  STRD.W          R2, R11, [SP,#0x158+var_158]
180562:  STRD.W          R1, R0, [SP,#0x158+var_148]
180566:  MOV             R0, R8
180568:  MOV             R1, R5
18056A:  MOV             R2, R4
18056C:  MOVS            R3, #3
18056E:  STRD.W          R10, R9, [SP,#0x158+var_150]
180572:  BL              sub_180774
180576:  ADD             R0, SP, #0x158+var_134
180578:  BL              sub_17D542
18057C:  ADD             SP, SP, #0x13C
18057E:  POP.W           {R8-R11}
180582:  POP             {R4-R7,PC}
