; =========================================================
; Game Engine Function: _ZN11CMemoryHeap8ShutdownEv
; Address            : 0x5D250C - 0x5D251E
; =========================================================

5D250C:  PUSH            {R4,R6,R7,LR}
5D250E:  ADD             R7, SP, #8
5D2510:  MOV             R4, R0
5D2512:  LDR             R0, [R4]; p
5D2514:  BLX.W           free
5D2518:  MOVS            R0, #0
5D251A:  STR             R0, [R4]
5D251C:  POP             {R4,R6,R7,PC}
