; =========================================================
; Game Engine Function: alcGetCurrentContext
; Address            : 0x1BF58C - 0x1BF5B4
; =========================================================

1BF58C:  PUSH            {R11,LR}
1BF590:  MOV             R11, SP
1BF594:  LDR             R0, =(dword_38279C - 0x1BF5A0)
1BF598:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF59C:  BL              pthread_getspecific
1BF5A0:  LDR             R1, =(dword_382830 - 0x1BF5B0)
1BF5A4:  CMP             R0, #0
1BF5A8:  LDR             R1, [PC,R1]; dword_382830
1BF5AC:  MOVEQ           R0, R1
1BF5B0:  POP             {R11,PC}
