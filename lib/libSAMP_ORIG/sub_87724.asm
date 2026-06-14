; =========================================================
; Game Engine Function: sub_87724
; Address            : 0x87724 - 0x87734
; =========================================================

87724:  PUSH            {R4,R6,R7,LR}
87726:  ADD             R7, SP, #8
87728:  MOVS            R1, #0; mutexattr
8772A:  MOV             R4, R0
8772C:  BLX             pthread_mutex_init
87730:  MOV             R0, R4
87732:  POP             {R4,R6,R7,PC}
