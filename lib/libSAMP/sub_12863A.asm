; =========================================================
; Game Engine Function: sub_12863A
; Address            : 0x12863A - 0x128650
; =========================================================

12863A:  PUSH            {R4,R6,R7,LR}
12863C:  ADD             R7, SP, #8
12863E:  MOV             R4, R0
128640:  LDR             R0, [R0]; void *
128642:  MOVS            R1, #0
128644:  STR             R1, [R4]
128646:  CBZ             R0, loc_12864C
128648:  BLX             j__ZdaPv; operator delete[](void *)
12864C:  MOV             R0, R4
12864E:  POP             {R4,R6,R7,PC}
