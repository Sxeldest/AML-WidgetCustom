; =========================================================
; Game Engine Function: sub_10D40C
; Address            : 0x10D40C - 0x10D422
; =========================================================

10D40C:  PUSH            {R4,R6,R7,LR}
10D40E:  ADD             R7, SP, #8
10D410:  MOV             R4, R0
10D412:  LDR             R0, [R0,#4]
10D414:  CBZ             R0, loc_10D41E
10D416:  BL              sub_10D4F4
10D41A:  BLX             j__ZdlPv; operator delete(void *)
10D41E:  MOV             R0, R4
10D420:  POP             {R4,R6,R7,PC}
