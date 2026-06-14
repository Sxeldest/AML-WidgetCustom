; =========================================================
; Game Engine Function: _ZN10CMemoryMgr11MallocAlignEjj
; Address            : 0x5D2FC0 - 0x5D2FDA
; =========================================================

5D2FC0:  PUSH            {R4,R6,R7,LR}
5D2FC2:  ADD             R7, SP, #8
5D2FC4:  MOV             R4, R1
5D2FC6:  ADD             R0, R4; byte_count
5D2FC8:  BLX.W           malloc
5D2FCC:  ADDS            R1, R0, R4
5D2FCE:  NEGS            R2, R4
5D2FD0:  ANDS            R1, R2
5D2FD2:  STR.W           R0, [R1,#-4]
5D2FD6:  MOV             R0, R1
5D2FD8:  POP             {R4,R6,R7,PC}
