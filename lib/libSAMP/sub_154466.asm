; =========================================================
; Game Engine Function: sub_154466
; Address            : 0x154466 - 0x1544A0
; =========================================================

154466:  PUSH            {R4,R6,R7,LR}
154468:  ADD             R7, SP, #8
15446A:  MOV             R4, R0
15446C:  LDRD.W          R1, R0, [R0,#4]
154470:  CMP             R0, R1
154472:  BEQ             loc_154494
154474:  SUBS            R1, R0, R1
154476:  MOVW            R2, #0x3F81
15447A:  SUB.W           R1, R1, #0x204
15447E:  MOVT            R2, #0xFE0
154482:  UMULL.W         R1, R2, R1, R2
154486:  MVN.W           R1, R2,LSR#5
15448A:  ADD.W           R1, R1, R1,LSL#7
15448E:  ADD.W           R0, R0, R1,LSL#2
154492:  STR             R0, [R4,#8]
154494:  LDR             R0, [R4]; void *
154496:  CBZ             R0, loc_15449C
154498:  BLX             j__ZdlPv; operator delete(void *)
15449C:  MOV             R0, R4
15449E:  POP             {R4,R6,R7,PC}
