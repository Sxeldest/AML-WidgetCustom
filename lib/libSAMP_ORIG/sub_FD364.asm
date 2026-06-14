; =========================================================
; Game Engine Function: sub_FD364
; Address            : 0xFD364 - 0xFD398
; =========================================================

FD364:  PUSH            {R4-R7,LR}
FD366:  ADD             R7, SP, #0xC
FD368:  PUSH.W          {R11}
FD36C:  MOV             R4, R0
FD36E:  MOVS            R0, #0
FD370:  MOV             R6, R2
FD372:  MOV             R5, R1
FD374:  STRD.W          R0, R3, [R4,#0xC]
FD378:  CBZ             R1, loc_FD380
FD37A:  LSLS            R0, R5, #3; unsigned int
FD37C:  BLX             j__Znwj; operator new(uint)
FD380:  ADD.W           R1, R0, R6,LSL#3
FD384:  ADD.W           R2, R0, R5,LSL#3
FD388:  STRD.W          R0, R1, [R4]
FD38C:  MOV             R0, R4
FD38E:  STRD.W          R1, R2, [R4,#8]
FD392:  POP.W           {R11}
FD396:  POP             {R4-R7,PC}
