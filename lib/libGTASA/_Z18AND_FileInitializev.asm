; =========================================================
; Game Engine Function: _Z18AND_FileInitializev
; Address            : 0x266840 - 0x26686E
; =========================================================

266840:  PUSH            {R4,R5,R7,LR}
266842:  ADD             R7, SP, #8
266844:  MOVS            R0, #8; unsigned int
266846:  BLX             _Znwj; operator new(uint)
26684A:  MOV             R4, R0
26684C:  ADDS            R5, R4, #4
26684E:  MOV             R0, R5; attr
266850:  BLX             pthread_mutexattr_init
266854:  MOV             R0, R5
266856:  MOVS            R1, #1
266858:  BLX             pthread_mutexattr_settype
26685C:  MOV             R0, R4; mutex
26685E:  MOV             R1, R5; mutexattr
266860:  BLX             pthread_mutex_init
266864:  LDR             R0, =(fileMutex_ptr - 0x26686A)
266866:  ADD             R0, PC; fileMutex_ptr
266868:  LDR             R0, [R0]; fileMutex
26686A:  STR             R4, [R0]
26686C:  POP             {R4,R5,R7,PC}
