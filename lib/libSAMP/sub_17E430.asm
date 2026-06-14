; =========================================================
; Game Engine Function: sub_17E430
; Address            : 0x17E430 - 0x17E4F4
; =========================================================

17E430:  PUSH            {R4-R7,LR}
17E432:  ADD             R7, SP, #0xC
17E434:  PUSH.W          {R8-R11}
17E438:  SUB             SP, SP, #4
17E43A:  LDR             R5, [R0,#0xC]
17E43C:  MOV             R4, R1
17E43E:  MOV             R8, R0
17E440:  CMP             R5, #0
17E442:  BEQ             loc_17E4CC
17E444:  LDR.W           R1, [R8,#8]
17E448:  LDR.W           R0, [R8]
17E44C:  LDR             R2, [R4]
17E44E:  ADD.W           R9, R1, #1
17E452:  STR.W           R9, [R8,#8]
17E456:  CMP             R9, R5
17E458:  STR.W           R2, [R0,R1,LSL#2]
17E45C:  ITT EQ
17E45E:  MOVEQ.W         R9, #0
17E462:  STREQ.W         R9, [R8,#8]
17E466:  LDR.W           R0, [R8,#4]
17E46A:  CMP             R9, R0
17E46C:  BNE             loc_17E4EC
17E46E:  MOV             R0, #0x3FFFFFFE
17E476:  AND.W           R0, R0, R5,LSL#1
17E47A:  SUBS.W          R1, R0, R5,LSL#1
17E47E:  MOV.W           R0, R5,LSL#3
17E482:  IT NE
17E484:  MOVNE           R1, #1
17E486:  CMP             R1, #0
17E488:  IT NE
17E48A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
17E48E:  BLX             j__Znaj; operator new[](uint)
17E492:  LDR.W           R4, [R8]
17E496:  MOV             R11, R0
17E498:  MOV.W           R10, R5,LSL#1
17E49C:  MOVS            R6, #0
17E49E:  ADD.W           R0, R9, R6
17E4A2:  MOV             R1, R5
17E4A4:  BLX             sub_221798
17E4A8:  LDR.W           R0, [R4,R1,LSL#2]
17E4AC:  STR.W           R0, [R11,R6,LSL#2]
17E4B0:  ADDS            R6, #1
17E4B2:  CMP             R5, R6
17E4B4:  BNE             loc_17E49E
17E4B6:  MOVS            R0, #0
17E4B8:  ADD.W           R1, R8, #4
17E4BC:  STM.W           R1, {R0,R5,R10}
17E4C0:  MOV             R0, R4; void *
17E4C2:  BLX             j__ZdaPv; operator delete[](void *)
17E4C6:  STR.W           R11, [R8]
17E4CA:  B               loc_17E4EC
17E4CC:  MOVS            R0, #0x40 ; '@'; unsigned int
17E4CE:  BLX             j__Znaj; operator new[](uint)
17E4D2:  MOVS            R1, #1
17E4D4:  STR.W           R0, [R8]
17E4D8:  STR.W           R1, [R8,#8]
17E4DC:  MOVS            R1, #0
17E4DE:  STR.W           R1, [R8,#4]
17E4E2:  MOVS            R2, #0x10
17E4E4:  LDR             R1, [R4]
17E4E6:  STR.W           R2, [R8,#0xC]
17E4EA:  STR             R1, [R0]
17E4EC:  ADD             SP, SP, #4
17E4EE:  POP.W           {R8-R11}
17E4F2:  POP             {R4-R7,PC}
