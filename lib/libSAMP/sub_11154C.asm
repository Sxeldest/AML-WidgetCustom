; =========================================================
; Game Engine Function: sub_11154C
; Address            : 0x11154C - 0x111562
; =========================================================

11154C:  PUSH            {R4,R6,R7,LR}
11154E:  ADD             R7, SP, #8
111550:  MOV             R4, R0
111552:  LDR             R0, [R0,#4]
111554:  CBZ             R0, loc_11155E
111556:  BL              sub_1119F0
11155A:  BLX             j__ZdlPv; operator delete(void *)
11155E:  MOV             R0, R4
111560:  POP             {R4,R6,R7,PC}
