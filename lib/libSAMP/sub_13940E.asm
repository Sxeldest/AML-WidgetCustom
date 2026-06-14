; =========================================================
; Game Engine Function: sub_13940E
; Address            : 0x13940E - 0x139432
; =========================================================

13940E:  PUSH            {R4,R6,R7,LR}
139410:  ADD             R7, SP, #8
139412:  SUB             SP, SP, #0x10
139414:  MOV             R2, R1
139416:  MOV             R1, R0
139418:  ADD             R0, SP, #0x18+var_14
13941A:  LDR             R4, [R2]
13941C:  BL              sub_139432
139420:  LDR             R0, [SP,#0x18+var_14]; void *
139422:  MOVS            R1, #0
139424:  STR             R1, [SP,#0x18+var_14]
139426:  CBZ             R0, loc_13942C
139428:  BLX             j__ZdlPv; operator delete(void *)
13942C:  MOV             R0, R4
13942E:  ADD             SP, SP, #0x10
139430:  POP             {R4,R6,R7,PC}
