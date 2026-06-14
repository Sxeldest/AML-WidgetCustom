; =========================================================
; Game Engine Function: alcGetThreadContext
; Address            : 0x1BF5BC - 0x1BF5C8
; =========================================================

1BF5BC:  LDR             R0, =(dword_38279C - 0x1BF5C8)
1BF5C0:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF5C4:  B               pthread_getspecific
