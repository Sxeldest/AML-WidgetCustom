; =========================================================
; Game Engine Function: _Z14OS_MutexCreatePKc
; Address            : 0x266874 - 0x26689C
; =========================================================

266874:  PUSH            {R4,R5,R7,LR}
266876:  ADD             R7, SP, #8
266878:  MOVS            R0, #8; unsigned int
26687A:  BLX             _Znwj; operator new(uint)
26687E:  MOV             R4, R0
266880:  ADDS            R5, R4, #4
266882:  MOV             R0, R5; attr
266884:  BLX             pthread_mutexattr_init
266888:  MOV             R0, R5
26688A:  MOVS            R1, #1
26688C:  BLX             pthread_mutexattr_settype
266890:  MOV             R0, R4; mutex
266892:  MOV             R1, R5; mutexattr
266894:  BLX             pthread_mutex_init
266898:  MOV             R0, R4
26689A:  POP             {R4,R5,R7,PC}
