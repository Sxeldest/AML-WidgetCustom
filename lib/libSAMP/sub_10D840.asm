; =========================================================
; Game Engine Function: sub_10D840
; Address            : 0x10D840 - 0x10D85C
; =========================================================

10D840:  PUSH            {R4,R5,R7,LR}
10D842:  ADD             R7, SP, #8
10D844:  LDR             R5, [R0,#4]
10D846:  MOV             R4, R0
10D848:  CBZ             R5, loc_10D858
10D84A:  LDR             R1, [R5,#4]
10D84C:  MOV             R0, R5
10D84E:  BL              sub_10E2B8
10D852:  MOV             R0, R5; void *
10D854:  BLX             j__ZdlPv; operator delete(void *)
10D858:  MOV             R0, R4
10D85A:  POP             {R4,R5,R7,PC}
