; =========================================================
; Game Engine Function: _Z11_rwES2freadPvjjS_
; Address            : 0x1E26D4 - 0x1E26F8
; =========================================================

1E26D4:  PUSH            {R4,R6,R7,LR}
1E26D6:  ADD             R7, SP, #8
1E26D8:  MOV             R4, R2
1E26DA:  MOV             R12, R0
1E26DC:  MUL.W           R2, R4, R1; n
1E26E0:  MOV             R0, R3; this
1E26E2:  MOV             R1, R12; ptr
1E26E4:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E26E8:  LDR             R1, =(dword_6BD01C - 0x1E26F0)
1E26EA:  CMP             R0, #0
1E26EC:  ADD             R1, PC; dword_6BD01C
1E26EE:  STR             R0, [R1]
1E26F0:  IT NE
1E26F2:  MOVNE           R4, #0
1E26F4:  MOV             R0, R4
1E26F6:  POP             {R4,R6,R7,PC}
