; =========================================================
; Game Engine Function: _Z15AND_BillingInitv
; Address            : 0x26A498 - 0x26A4C6
; =========================================================

26A498:  PUSH            {R4,R5,R7,LR}
26A49A:  ADD             R7, SP, #8
26A49C:  MOVS            R0, #8; unsigned int
26A49E:  BLX             _Znwj; operator new(uint)
26A4A2:  MOV             R4, R0
26A4A4:  ADDS            R5, R4, #4
26A4A6:  MOV             R0, R5; attr
26A4A8:  BLX             pthread_mutexattr_init
26A4AC:  MOV             R0, R5
26A4AE:  MOVS            R1, #1
26A4B0:  BLX             pthread_mutexattr_settype
26A4B4:  MOV             R0, R4; mutex
26A4B6:  MOV             R1, R5; mutexattr
26A4B8:  BLX             pthread_mutex_init
26A4BC:  LDR             R0, =(billingMutex_ptr - 0x26A4C2)
26A4BE:  ADD             R0, PC; billingMutex_ptr
26A4C0:  LDR             R0, [R0]; billingMutex
26A4C2:  STR             R4, [R0]
26A4C4:  POP             {R4,R5,R7,PC}
