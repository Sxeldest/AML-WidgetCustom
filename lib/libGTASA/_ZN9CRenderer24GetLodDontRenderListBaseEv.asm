; =========================================================
; Game Engine Function: _ZN9CRenderer24GetLodDontRenderListBaseEv
; Address            : 0x412320 - 0x41232C
; =========================================================

412320:  LDR             R0, =(PC_Scratch_ptr - 0x412326)
412322:  ADD             R0, PC; PC_Scratch_ptr
412324:  LDR             R0, [R0]; PC_Scratch
412326:  ADD.W           R0, R0, #0x8000
41232A:  BX              LR
