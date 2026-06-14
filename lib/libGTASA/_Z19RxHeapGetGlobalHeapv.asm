; =========================================================
; Game Engine Function: _Z19RxHeapGetGlobalHeapv
; Address            : 0x1DE584 - 0x1DE58E
; =========================================================

1DE584:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE58A)
1DE586:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE588:  LDR             R0, [R0]; _rxHeapGlobal
1DE58A:  LDR             R0, [R0]
1DE58C:  BX              LR
