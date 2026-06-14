; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence20SetEventResponseTaskEP4CPedbRK5CTaskbS4_i
; Address            : 0x4B340A - 0x4B3456
; =========================================================

4B340A:  PUSH            {R4-R7,LR}
4B340C:  ADD             R7, SP, #0xC
4B340E:  PUSH.W          {R11}
4B3412:  SUB             SP, SP, #8
4B3414:  LDR             R6, [R7,#arg_0]
4B3416:  MOV             R4, R1
4B3418:  MOV             R5, R0
4B341A:  CMP             R2, #1
4B341C:  BNE             loc_4B3436
4B341E:  MOVS            R0, #0
4B3420:  MOV.W           R1, #0xFFFFFFFF
4B3424:  STRD.W          R1, R0, [SP,#0x18+var_18]; int
4B3428:  ADD.W           R0, R5, #0xC; this
4B342C:  MOV             R2, R3; CTask *
4B342E:  MOV             R1, R4; CPed *
4B3430:  MOV             R3, R0; CPedTaskPair *
4B3432:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B3436:  CMP             R6, #1
4B3438:  BNE             loc_4B344E
4B343A:  LDRD.W          R2, R0, [R7,#arg_4]; CTask *
4B343E:  MOVS            R1, #0
4B3440:  ADD.W           R3, R5, #0xAC; CPedTaskPair *
4B3444:  STRD.W          R0, R1, [SP,#0x18+var_18]; int
4B3448:  MOV             R1, R4; CPed *
4B344A:  BLX             j__ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib; CPedGroupIntelligence::SetTask(CPed *,CTask const&,CPedTaskPair *,int,bool)
4B344E:  ADD             SP, SP, #8
4B3450:  POP.W           {R11}
4B3454:  POP             {R4-R7,PC}
