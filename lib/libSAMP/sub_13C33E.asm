; =========================================================
; Game Engine Function: sub_13C33E
; Address            : 0x13C33E - 0x13C368
; =========================================================

13C33E:  PUSH            {R4,R5,R7,LR}
13C340:  ADD             R7, SP, #8
13C342:  MOV             R4, R1
13C344:  LDR             R1, [R0,#8]
13C346:  CMP             R1, R4
13C348:  BEQ             locret_13C366
13C34A:  MOV             R5, R0
13C34C:  MOV             R2, R1
13C34E:  LDR.W           R0, [R2,#-0xC]!; void *
13C352:  STR             R2, [R5,#8]
13C354:  CBZ             R0, loc_13C360
13C356:  STR.W           R0, [R1,#-8]
13C35A:  BLX             j__ZdlPv; operator delete(void *)
13C35E:  LDR             R2, [R5,#8]
13C360:  CMP             R2, R4
13C362:  MOV             R1, R2
13C364:  BNE             loc_13C34E
13C366:  POP             {R4,R5,R7,PC}
