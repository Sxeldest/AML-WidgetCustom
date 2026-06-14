; =========================================================
; Game Engine Function: sub_107998
; Address            : 0x107998 - 0x1079A8
; =========================================================

107998:  PUSH            {R4,R6,R7,LR}
10799A:  ADD             R7, SP, #8
10799C:  MOV             R4, R0
10799E:  LDR             R0, [R0]; mutex
1079A0:  BLX             pthread_mutex_unlock
1079A4:  MOV             R0, R4
1079A6:  POP             {R4,R6,R7,PC}
