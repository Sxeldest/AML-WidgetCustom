; =========================================================
; Game Engine Function: sub_1B9BAC
; Address            : 0x1B9BAC - 0x1B9BDC
; =========================================================

1B9BAC:  PUSH            {R11,LR}
1B9BB0:  MOV             R11, SP
1B9BB4:  LDR             R0, =(dword_382774 - 0x1B9BC0)
1B9BB8:  LDR             R0, [PC,R0]; dword_382774
1B9BBC:  LDR             R1, [R0]
1B9BC0:  LDR             R1, [R1,#0x14]
1B9BC4:  BLX             R1
1B9BC8:  LDR             R0, =(dword_382778 - 0x1B9BD8)
1B9BCC:  MOV             R1, #0; pointer
1B9BD0:  LDR             R0, [PC,R0]; dword_382778 ; key
1B9BD4:  POP             {R11,LR}
1B9BD8:  B               pthread_setspecific
