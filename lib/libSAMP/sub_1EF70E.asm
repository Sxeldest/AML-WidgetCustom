; =========================================================
; Game Engine Function: sub_1EF70E
; Address            : 0x1EF70E - 0x1EF740
; =========================================================

1EF70E:  PUSH            {R4,R5,R7,LR}
1EF710:  ADD             R7, SP, #8
1EF712:  MOV             R5, R1
1EF714:  MOV             R4, R0
1EF716:  BL              sub_1EF740
1EF71A:  CMP             R0, #1
1EF71C:  BHI             loc_1EF728
1EF71E:  CBNZ            R5, loc_1EF73C
1EF720:  MOV             R0, R4
1EF722:  BL              sub_1EF740
1EF726:  CBZ             R0, loc_1EF73C
1EF728:  LDR             R0, [R4,#8]
1EF72A:  LDR.W           R0, [R0,#-4]; void *
1EF72E:  BLX             j__ZdlPv; operator delete(void *)
1EF732:  MOV             R0, R4
1EF734:  BL              sub_1EF750
1EF738:  MOVS            R0, #1
1EF73A:  POP             {R4,R5,R7,PC}
1EF73C:  MOVS            R0, #0
1EF73E:  POP             {R4,R5,R7,PC}
