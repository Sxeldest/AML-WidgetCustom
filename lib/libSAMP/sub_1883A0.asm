; =========================================================
; Game Engine Function: sub_1883A0
; Address            : 0x1883A0 - 0x188454
; =========================================================

1883A0:  PUSH            {R4-R7,LR}
1883A2:  ADD             R7, SP, #0xC
1883A4:  PUSH.W          {R8-R11}
1883A8:  SUB             SP, SP, #0xC
1883AA:  LDR.W           R10, [R0,#0xC]
1883AE:  CMP.W           R10, #0
1883B2:  BEQ             loc_18844C
1883B4:  LDRD.W          R6, R1, [R0,#4]
1883B8:  MOV             R9, R0
1883BA:  MOV             R0, R1
1883BC:  MOV             R8, R10
1883BE:  SUBS            R0, R1, R6
1883C0:  CMP             R1, R6
1883C2:  IT CS
1883C4:  MOVCS.W         R8, #0
1883C8:  ADD.W           R11, R8, R0
1883CC:  MOVS            R0, #1
1883CE:  STR             R1, [SP,#0x28+var_24]
1883D0:  MOV             R5, R0
1883D2:  LSLS            R0, R0, #1
1883D4:  CMP             R5, R11
1883D6:  BLS             loc_1883D0
1883D8:  BIC.W           R0, R5, #0xE0000000
1883DC:  SUBS            R1, R5, R0
1883DE:  MOV.W           R0, R5,LSL#3
1883E2:  IT NE
1883E4:  MOVNE           R1, #1
1883E6:  CMP             R1, #0
1883E8:  IT NE
1883EA:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
1883EE:  BLX             j__Znaj; operator new[](uint)
1883F2:  LDR.W           R4, [R9]
1883F6:  CMP.W           R11, #0
1883FA:  STR             R0, [SP,#0x28+var_20]
1883FC:  BEQ             loc_188434
1883FE:  LDR             R1, [SP,#0x28+var_24]
188400:  STR.W           R9, [SP,#0x28+var_28]
188404:  MOV             R9, R0
188406:  ADD             R8, R1
188408:  MOV             R0, R6
18840A:  MOV             R1, R10
18840C:  BLX             sub_221798
188410:  LDR.W           R0, [R4,R1,LSL#3]
188414:  ADD.W           R1, R4, R1,LSL#3
188418:  ADDS            R6, #1
18841A:  LDR             R1, [R1,#4]
18841C:  CMP             R8, R6
18841E:  STRD.W          R0, R1, [R9],#8
188422:  BNE             loc_188408
188424:  LDR.W           R9, [SP,#0x28+var_28]
188428:  MOVS            R0, #0
18842A:  STRD.W          R0, R11, [R9,#4]
18842E:  STR.W           R5, [R9,#0xC]
188432:  B               loc_188440
188434:  MOVS            R0, #0
188436:  STRD.W          R0, R11, [R9,#4]
18843A:  STR.W           R5, [R9,#0xC]
18843E:  CBZ             R4, loc_188446
188440:  MOV             R0, R4; void *
188442:  BLX             j__ZdaPv; operator delete[](void *)
188446:  LDR             R0, [SP,#0x28+var_20]
188448:  STR.W           R0, [R9]
18844C:  ADD             SP, SP, #0xC
18844E:  POP.W           {R8-R11}
188452:  POP             {R4-R7,PC}
