; =========================================================
; Game Engine Function: _Z15RwMatrixDestroyP11RwMatrixTag
; Address            : 0x1E44EC - 0x1E450C
; =========================================================

1E44EC:  PUSH            {R7,LR}
1E44EE:  MOV             R7, SP
1E44F0:  MOV             R1, R0
1E44F2:  LDR             R0, =(RwEngineInstance_ptr - 0x1E44FA)
1E44F4:  LDR             R2, =(dword_6BD044 - 0x1E44FC)
1E44F6:  ADD             R0, PC; RwEngineInstance_ptr
1E44F8:  ADD             R2, PC; dword_6BD044
1E44FA:  LDR             R0, [R0]; RwEngineInstance
1E44FC:  LDR             R2, [R2]
1E44FE:  LDR             R3, [R0]
1E4500:  LDR             R0, [R3,R2]
1E4502:  LDR.W           R2, [R3,#0x140]
1E4506:  BLX             R2
1E4508:  MOVS            R0, #1
1E450A:  POP             {R7,PC}
