; =========================================================
; Game Engine Function: _Z31RwMatrixSetFreeListCreateParamsii
; Address            : 0x1E3190 - 0x1E319E
; =========================================================

1E3190:  LDR             R2, =(dword_682970 - 0x1E3198)
1E3192:  LDR             R3, =(dword_68296C - 0x1E319A)
1E3194:  ADD             R2, PC; dword_682970
1E3196:  ADD             R3, PC; dword_68296C
1E3198:  STR             R1, [R2]
1E319A:  STR             R0, [R3]
1E319C:  BX              LR
