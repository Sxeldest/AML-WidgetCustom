; =========================================================
; Game Engine Function: alcGetThreadContext
; Address            : 0x24BE3C - 0x24BE46
; =========================================================

24BE3C:  LDR             R0, =(dword_6D6290 - 0x24BE42)
24BE3E:  ADD             R0, PC; dword_6D6290
24BE40:  LDR             R0, [R0]; key
24BE42:  B.W             j_pthread_getspecific
