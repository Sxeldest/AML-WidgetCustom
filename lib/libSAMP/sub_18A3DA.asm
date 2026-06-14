; =========================================================
; Game Engine Function: sub_18A3DA
; Address            : 0x18A3DA - 0x18A49E
; =========================================================

18A3DA:  PUSH            {R4-R7,LR}
18A3DC:  ADD             R7, SP, #0xC
18A3DE:  PUSH.W          {R8-R11}
18A3E2:  SUB             SP, SP, #4
18A3E4:  LDR             R5, [R0,#0xC]
18A3E6:  MOV             R4, R1
18A3E8:  MOV             R8, R0
18A3EA:  CMP             R5, #0
18A3EC:  BEQ             loc_18A476
18A3EE:  LDR.W           R1, [R8,#8]
18A3F2:  LDR.W           R0, [R8]
18A3F6:  LDR             R2, [R4]
18A3F8:  ADD.W           R9, R1, #1
18A3FC:  STR.W           R9, [R8,#8]
18A400:  CMP             R9, R5
18A402:  STR.W           R2, [R0,R1,LSL#2]
18A406:  ITT EQ
18A408:  MOVEQ.W         R9, #0
18A40C:  STREQ.W         R9, [R8,#8]
18A410:  LDR.W           R0, [R8,#4]
18A414:  CMP             R9, R0
18A416:  BNE             loc_18A496
18A418:  MOV             R0, #0x3FFFFFFE
18A420:  AND.W           R0, R0, R5,LSL#1
18A424:  SUBS.W          R1, R0, R5,LSL#1
18A428:  MOV.W           R0, R5,LSL#3
18A42C:  IT NE
18A42E:  MOVNE           R1, #1
18A430:  CMP             R1, #0
18A432:  IT NE
18A434:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18A438:  BLX             j__Znaj; operator new[](uint)
18A43C:  LDR.W           R4, [R8]
18A440:  MOV             R11, R0
18A442:  MOV.W           R10, R5,LSL#1
18A446:  MOVS            R6, #0
18A448:  ADD.W           R0, R9, R6
18A44C:  MOV             R1, R5
18A44E:  BLX             sub_221798
18A452:  LDR.W           R0, [R4,R1,LSL#2]
18A456:  STR.W           R0, [R11,R6,LSL#2]
18A45A:  ADDS            R6, #1
18A45C:  CMP             R5, R6
18A45E:  BNE             loc_18A448
18A460:  MOVS            R0, #0
18A462:  ADD.W           R1, R8, #4
18A466:  STM.W           R1, {R0,R5,R10}
18A46A:  MOV             R0, R4; void *
18A46C:  BLX             j__ZdaPv; operator delete[](void *)
18A470:  STR.W           R11, [R8]
18A474:  B               loc_18A496
18A476:  MOVS            R0, #0x40 ; '@'; unsigned int
18A478:  BLX             j__Znaj; operator new[](uint)
18A47C:  MOVS            R1, #1
18A47E:  STR.W           R0, [R8]
18A482:  STR.W           R1, [R8,#8]
18A486:  MOVS            R1, #0
18A488:  STR.W           R1, [R8,#4]
18A48C:  MOVS            R2, #0x10
18A48E:  LDR             R1, [R4]
18A490:  STR.W           R2, [R8,#0xC]
18A494:  STR             R1, [R0]
18A496:  ADD             SP, SP, #4
18A498:  POP.W           {R8-R11}
18A49C:  POP             {R4-R7,PC}
