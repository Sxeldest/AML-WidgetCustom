; =========================================================
; Game Engine Function: _ZN9CRenderer20GetLodRenderListBaseEv
; Address            : 0x412310 - 0x41231A
; =========================================================

412310:  LDR             R0, =(PC_Scratch_ptr - 0x412316)
412312:  ADD             R0, PC; PC_Scratch_ptr
412314:  LDR             R0, [R0]; PC_Scratch
412316:  ADDS            R0, #0x60 ; '`'
412318:  BX              LR
