; =========================================================
; Game Engine Function: _ZN9CPedStats14GetPedStatTypeEPc
; Address            : 0x4C33F8 - 0x4C342A
; =========================================================

4C33F8:  PUSH            {R4-R7,LR}
4C33FA:  ADD             R7, SP, #0xC
4C33FC:  PUSH.W          {R11}
4C3400:  MOV             R5, R0
4C3402:  LDR             R0, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x4C340A)
4C3404:  MOVS            R4, #0
4C3406:  ADD             R0, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
4C3408:  LDR             R0, [R0]; CPedStats::ms_apPedStats ...
4C340A:  LDR             R0, [R0]; CPedStats::ms_apPedStats
4C340C:  ADDS            R6, R0, #4
4C340E:  MOV             R0, R6; char *
4C3410:  MOV             R1, R5; char *
4C3412:  BLX             strcmp
4C3416:  CBZ             R0, loc_4C3422
4C3418:  ADDS            R4, #1
4C341A:  ADDS            R6, #0x34 ; '4'
4C341C:  CMP             R4, #0x2A ; '*'
4C341E:  BLS             loc_4C340E
4C3420:  MOVS            R4, #0x10
4C3422:  MOV             R0, R4
4C3424:  POP.W           {R11}
4C3428:  POP             {R4-R7,PC}
