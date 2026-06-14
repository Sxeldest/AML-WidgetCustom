; =========================================================
; Game Engine Function: sub_11C960
; Address            : 0x11C960 - 0x11C972
; =========================================================

11C960:  PUSH            {R4,R6,R7,LR}
11C962:  ADD             R7, SP, #8
11C964:  MOV             R4, R0
11C966:  LDR             R0, [R0,#4]; void *
11C968:  CBZ             R0, loc_11C96E
11C96A:  BLX             j__ZdlPv; operator delete(void *)
11C96E:  MOV             R0, R4
11C970:  POP             {R4,R6,R7,PC}
