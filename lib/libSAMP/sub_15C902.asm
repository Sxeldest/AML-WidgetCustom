; =========================================================
; Game Engine Function: sub_15C902
; Address            : 0x15C902 - 0x15C91E
; =========================================================

15C902:  PUSH            {R4,R6,R7,LR}
15C904:  ADD             R7, SP, #8
15C906:  LDR             R1, [R0,#8]
15C908:  MOV             R4, R0
15C90A:  BL              sub_15C91E
15C90E:  LDR             R0, [R4]; void *
15C910:  MOVS            R1, #0
15C912:  STR             R1, [R4]
15C914:  CBZ             R0, loc_15C91A
15C916:  BLX             j__ZdlPv; operator delete(void *)
15C91A:  MOV             R0, R4
15C91C:  POP             {R4,R6,R7,PC}
