; =========================================================
; Game Engine Function: sub_10D618
; Address            : 0x10D618 - 0x10D62C
; =========================================================

10D618:  PUSH            {R4,R6,R7,LR}
10D61A:  ADD             R7, SP, #8
10D61C:  MOV             R4, R0
10D61E:  LDR             R0, [R0]; void *
10D620:  CBZ             R0, loc_10D628
10D622:  STR             R0, [R4,#4]
10D624:  BLX             j__ZdlPv; operator delete(void *)
10D628:  MOV             R0, R4
10D62A:  POP             {R4,R6,R7,PC}
