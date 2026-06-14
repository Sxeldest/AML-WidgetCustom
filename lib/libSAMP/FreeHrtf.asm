; =========================================================
; Game Engine Function: FreeHrtf
; Address            : 0x1D7FC8 - 0x1D7FF4
; =========================================================

1D7FC8:  PUSH            {R4,R5,R11,LR}
1D7FCC:  ADD             R11, SP, #8
1D7FD0:  LDR             R0, =(dword_382928 - 0x1D7FE4)
1D7FD4:  MOV             R5, #0
1D7FD8:  LDR             R1, =(dword_382924 - 0x1D7FEC)
1D7FDC:  ADD             R4, PC, R0; dword_382928
1D7FE0:  LDR             R0, [R4]; ptr
1D7FE4:  STR             R5, [PC,R1]; dword_382924
1D7FE8:  BL              free
1D7FEC:  STR             R5, [R4]
1D7FF0:  POP             {R4,R5,R11,PC}
