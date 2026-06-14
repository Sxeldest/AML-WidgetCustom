; =========================================================
; Game Engine Function: _Z19AND_GameServiceInitv
; Address            : 0x26A4CC - 0x26A502
; =========================================================

26A4CC:  PUSH            {R4,R5,R7,LR}
26A4CE:  ADD             R7, SP, #8
26A4D0:  MOVS            R0, #8; unsigned int
26A4D2:  BLX             _Znwj; operator new(uint)
26A4D6:  MOV             R4, R0
26A4D8:  ADDS            R5, R4, #4
26A4DA:  MOV             R0, R5; attr
26A4DC:  BLX             pthread_mutexattr_init
26A4E0:  MOV             R0, R5
26A4E2:  MOVS            R1, #1
26A4E4:  BLX             pthread_mutexattr_settype
26A4E8:  MOV             R0, R4; mutex
26A4EA:  MOV             R1, R5; mutexattr
26A4EC:  BLX             pthread_mutex_init
26A4F0:  LDR             R0, =(gameServiceMutex_ptr - 0x26A4F8)
26A4F2:  LDR             R1, =(off_6D7128 - 0x26A4FA)
26A4F4:  ADD             R0, PC; gameServiceMutex_ptr
26A4F6:  ADD             R1, PC; off_6D7128
26A4F8:  LDR             R0, [R0]; gameServiceMutex
26A4FA:  STR             R4, [R0]
26A4FC:  MOVS            R0, #0
26A4FE:  STR             R0, [R1]
26A500:  POP             {R4,R5,R7,PC}
