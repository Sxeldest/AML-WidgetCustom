; =========================================================
; Game Engine Function: sub_1163EC
; Address            : 0x1163EC - 0x11648A
; =========================================================

1163EC:  PUSH            {R4-R7,LR}
1163EE:  ADD             R7, SP, #0xC
1163F0:  PUSH.W          {R11}
1163F4:  VPUSH           {D8-D10}
1163F8:  SUB             SP, SP, #0x20
1163FA:  MOV             R5, R0
1163FC:  LDR             R0, [R0]
1163FE:  MOV             R4, R1
116400:  MOV             R1, #0x3F819653
116408:  LDR             R2, [R0,#0x60]
11640A:  MOV             R0, R5
11640C:  BLX             R2
11640E:  MOV             R6, R0
116410:  LDR             R0, [R5]
116412:  MOV             R1, #0x40066666
11641A:  LDR             R2, [R0,#0x60]
11641C:  MOV             R0, R5
11641E:  BLX             R2
116420:  MOV             R1, R0
116422:  MOV             R0, R6
116424:  BL              sub_163C58
116428:  LDR             R0, [R5]
11642A:  MOV             R1, R5
11642C:  LDR             R2, [R0,#0x5C]
11642E:  ADD             R0, SP, #0x48+var_30
116430:  BLX             R2
116432:  LDR             R0, [R5]
116434:  MOV             R1, R5
116436:  VLDR            S16, [SP,#0x48+var_30]
11643A:  LDR             R2, [R0,#0x58]
11643C:  ADD             R0, SP, #0x48+var_38
11643E:  BLX             R2
116440:  LDR             R0, [R5]
116442:  MOV             R1, R5
116444:  VLDR            S18, [SP,#0x48+var_38]
116448:  LDR             R2, [R0,#0x5C]
11644A:  ADD             R0, SP, #0x48+var_40
11644C:  BLX             R2
11644E:  LDR             R0, [R5]
116450:  MOV             R1, R5
116452:  VLDR            S20, [SP,#0x48+var_3C]
116456:  LDR             R2, [R0,#0x58]
116458:  MOV             R0, SP
11645A:  BLX             R2
11645C:  VLDR            S0, =0.58594
116460:  MOV             R2, R4
116462:  VLDR            S2, =0.83984
116466:  VLDR            S4, [SP,#0x48+var_44]
11646A:  VMLA.F32        S16, S18, S0
11646E:  VMLA.F32        S20, S4, S2
116472:  VMOV            R0, S16
116476:  VMOV            R1, S20
11647A:  BL              sub_163D64
11647E:  ADD             SP, SP, #0x20 ; ' '
116480:  VPOP            {D8-D10}
116484:  POP.W           {R11}
116488:  POP             {R4-R7,PC}
