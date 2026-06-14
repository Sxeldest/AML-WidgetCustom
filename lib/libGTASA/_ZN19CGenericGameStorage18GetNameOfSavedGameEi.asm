; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage18GetNameOfSavedGameEi
; Address            : 0x483BE8 - 0x483BF8
; =========================================================

483BE8:  LDR             R1, =(_ZN19CGenericGameStorage15ms_SlotFileNameE_ptr - 0x483BF2)
483BEA:  ADD.W           R0, R0, R0,LSL#6
483BEE:  ADD             R1, PC; _ZN19CGenericGameStorage15ms_SlotFileNameE_ptr
483BF0:  LDR             R1, [R1]; CGenericGameStorage::ms_SlotFileName ...
483BF2:  ADD.W           R0, R1, R0,LSL#3
483BF6:  BX              LR
