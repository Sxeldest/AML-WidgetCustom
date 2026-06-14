; =========================================================
; Game Engine Function: sub_18CB54
; Address            : 0x18CB54 - 0x18CB64
; =========================================================

18CB54:  PUSH            {R4,R6,R7,LR}
18CB56:  ADD             R7, SP, #8
18CB58:  MOVS            R1, #0; mutexattr
18CB5A:  MOV             R4, R0
18CB5C:  BLX             pthread_mutex_init
18CB60:  MOV             R0, R4
18CB62:  POP             {R4,R6,R7,PC}
