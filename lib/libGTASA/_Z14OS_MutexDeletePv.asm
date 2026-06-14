; =========================================================
; Game Engine Function: _Z14OS_MutexDeletePv
; Address            : 0x2668D0 - 0x2668F2
; =========================================================

2668D0:  PUSH            {R4,R6,R7,LR}
2668D2:  ADD             R7, SP, #8
2668D4:  MOV             R4, R0
2668D6:  CMP             R4, #0
2668D8:  IT EQ
2668DA:  POPEQ           {R4,R6,R7,PC}
2668DC:  MOV             R0, R4; mutex
2668DE:  BLX             pthread_mutex_destroy
2668E2:  ADDS            R0, R4, #4; attr
2668E4:  BLX             pthread_mutexattr_destroy
2668E8:  MOV             R0, R4; void *
2668EA:  POP.W           {R4,R6,R7,LR}
2668EE:  B.W             j__ZdlPv; operator delete(void *)
