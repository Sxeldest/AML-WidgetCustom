; =========================================================
; Game Engine Function: sub_188454
; Address            : 0x188454 - 0x188520
; =========================================================

188454:  PUSH            {R4-R7,LR}
188456:  ADD             R7, SP, #0xC
188458:  PUSH.W          {R8-R11}
18845C:  SUB             SP, SP, #4
18845E:  LDR.W           R12, [R0,#0xAC]
188462:  CMP.W           R12, #0
188466:  BEQ             loc_188518
188468:  MOV             R8, R0
18846A:  ADD.W           R11, R0, #0x6A0
18846E:  ADD.W           R4, R0, #0xA8
188472:  MOVW            R0, #0x9680
188476:  MOV             R9, R3
188478:  MOV             R10, R2
18847A:  MOVS            R5, #0
18847C:  MOVT            R0, #0x98
188480:  STR.W           R8, [SP,#0x20+var_20]
188484:  LDR             R1, [R4]
188486:  LDR.W           R6, [R1,R5,LSL#2]
18848A:  LDRD.W          R2, R3, [R6]
18848E:  ADDS            R2, R2, R0
188490:  ADC.W           R3, R3, #0
188494:  SUBS.W          R2, R2, R10
188498:  SBCS.W          R2, R3, R9
18849C:  BGE             loc_1884EA
18849E:  LDR             R2, [R6,#8]
1884A0:  LDR             R2, [R2]
1884A2:  LDR             R3, [R2,#0xC]
1884A4:  BIC.W           R3, R3, #1
1884A8:  CMP             R3, #6
1884AA:  BNE             loc_1884EA
1884AC:  LDR             R0, [R6,#0xC]
1884AE:  CBZ             R0, loc_1884F2
1884B0:  MOV.W           R8, #0
1884B4:  LDR             R0, [R2,#0x34]; void *
1884B6:  CBZ             R0, loc_1884BE
1884B8:  BLX             j__ZdaPv; operator delete[](void *)
1884BC:  LDR             R1, [R4]
1884BE:  LDR.W           R0, [R1,R5,LSL#2]
1884C2:  LDR             R0, [R0,#8]
1884C4:  LDR.W           R1, [R0,R8,LSL#2]
1884C8:  MOV             R0, R11
1884CA:  BL              sub_17E56C
1884CE:  LDR             R1, [R4]
1884D0:  ADD.W           R0, R8, #1
1884D4:  LDR.W           R6, [R1,R5,LSL#2]
1884D8:  LDR             R2, [R6,#0xC]
1884DA:  CMP             R0, R2
1884DC:  BCS             loc_1884EE
1884DE:  LDR             R2, [R6,#8]
1884E0:  ADD.W           R2, R2, R8,LSL#2
1884E4:  MOV             R8, R0
1884E6:  LDR             R2, [R2,#4]
1884E8:  B               loc_1884B4
1884EA:  ADDS            R5, #1
1884EC:  B               loc_188514
1884EE:  LDR.W           R8, [SP,#0x20+var_20]
1884F2:  ADD.W           R0, R6, #8
1884F6:  BL              sub_18A128
1884FA:  MOV             R0, R6; void *
1884FC:  BLX             j__ZdlPv; operator delete(void *)
188500:  MOV             R0, R4
188502:  MOV             R1, R5
188504:  BL              sub_18B9EC
188508:  MOVW            R0, #0x9680
18850C:  LDR.W           R12, [R8,#0xAC]
188510:  MOVT            R0, #0x98
188514:  CMP             R5, R12
188516:  BCC             loc_188484
188518:  ADD             SP, SP, #4
18851A:  POP.W           {R8-R11}
18851E:  POP             {R4-R7,PC}
