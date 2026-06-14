; =========================================================
; Game Engine Function: _Z20AND_ConnectionChangeb
; Address            : 0x26CC58 - 0x26CC7E
; =========================================================

26CC58:  PUSH            {R4,R5,R7,LR}
26CC5A:  ADD             R7, SP, #8
26CC5C:  MOV             R4, R0
26CC5E:  LDR             R0, =(billingMutex_ptr - 0x26CC64)
26CC60:  ADD             R0, PC; billingMutex_ptr
26CC62:  LDR             R5, [R0]; billingMutex
26CC64:  LDR             R0, [R5]; mutex
26CC66:  BLX             pthread_mutex_lock
26CC6A:  LDR             R1, =(byte_6D7112 - 0x26CC76)
26CC6C:  EOR.W           R2, R4, #1
26CC70:  LDR             R0, [R5]; mutex
26CC72:  ADD             R1, PC; byte_6D7112
26CC74:  STRB            R2, [R1]
26CC76:  POP.W           {R4,R5,R7,LR}
26CC7A:  B.W             j_pthread_mutex_unlock
