; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_cC2Ev
; Address            : 0x366CC0 - 0x366CD8
; =========================================================

366CC0:  PUSH            {R7,LR}
366CC2:  MOV             R7, SP
366CC4:  BLX             j__ZN10FxPrimBP_cC2Ev; FxPrimBP_c::FxPrimBP_c(void)
366CC8:  LDR             R1, =(_ZTV13FxEmitterBP_c_ptr - 0x366CD2)
366CCA:  MOVS            R2, #0
366CCC:  STRB            R2, [R0,#4]
366CCE:  ADD             R1, PC; _ZTV13FxEmitterBP_c_ptr
366CD0:  LDR             R1, [R1]; `vtable for'FxEmitterBP_c ...
366CD2:  ADDS            R1, #8
366CD4:  STR             R1, [R0]
366CD6:  POP             {R7,PC}
