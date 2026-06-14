; =========================================================
; Game Engine Function: _Z12_rwES2fwritePKvjjPv
; Address            : 0x1E26FC - 0x1E271A
; =========================================================

1E26FC:  PUSH            {R4,R6,R7,LR}
1E26FE:  ADD             R7, SP, #8
1E2700:  MOV             R4, R2
1E2702:  MOV             R12, R0
1E2704:  MUL.W           R2, R4, R1; int
1E2708:  MOV             R0, R3; void *
1E270A:  MOV             R1, R12; ptr
1E270C:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E2710:  CMP             R0, #0
1E2712:  IT NE
1E2714:  MOVNE           R4, #0
1E2716:  MOV             R0, R4
1E2718:  POP             {R4,R6,R7,PC}
