; =========================================================
; Game Engine Function: sub_7F43C
; Address            : 0x7F43C - 0x7F484
; =========================================================

7F43C:  PUSH            {R4-R7,LR}
7F43E:  ADD             R7, SP, #0xC
7F440:  PUSH.W          {R11}
7F444:  LDR             R5, [R0]
7F446:  MOV             R4, R0
7F448:  CBZ             R5, loc_7F47C
7F44A:  LDR             R6, [R4,#4]
7F44C:  MOV             R0, R5
7F44E:  CMP             R6, R5
7F450:  BNE             loc_7F462
7F452:  B               loc_7F476
7F454:  MOVS            R1, #4
7F456:  LDR             R2, [R0]
7F458:  LDR.W           R1, [R2,R1,LSL#2]
7F45C:  BLX             R1
7F45E:  CMP             R6, R5
7F460:  BEQ             loc_7F474
7F462:  LDR.W           R0, [R6,#-8]
7F466:  SUBS            R6, #0x18
7F468:  CMP             R6, R0
7F46A:  BEQ             loc_7F454
7F46C:  CMP             R0, #0
7F46E:  BEQ             loc_7F45E
7F470:  MOVS            R1, #5
7F472:  B               loc_7F456
7F474:  LDR             R0, [R4]; void *
7F476:  STR             R5, [R4,#4]
7F478:  BLX             j__ZdlPv; operator delete(void *)
7F47C:  MOV             R0, R4
7F47E:  POP.W           {R11}
7F482:  POP             {R4-R7,PC}
