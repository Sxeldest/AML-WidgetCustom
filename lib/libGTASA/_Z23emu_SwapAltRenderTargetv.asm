; =========================================================
; Game Engine Function: _Z23emu_SwapAltRenderTargetv
; Address            : 0x1BC9F4 - 0x1BCA16
; =========================================================

1BC9F4:  LDR             R0, =(flushedSinceSwap_ptr - 0x1BC9FA)
1BC9F6:  ADD             R0, PC; flushedSinceSwap_ptr
1BC9F8:  LDR             R0, [R0]; flushedSinceSwap
1BC9FA:  LDRB            R0, [R0]
1BC9FC:  CBNZ            R0, loc_1BCA0A
1BC9FE:  PUSH            {R7,LR}
1BCA00:  MOV             R7, SP
1BCA02:  BLX             j__Z24emu_FlushAltRenderTargetv; emu_FlushAltRenderTarget(void)
1BCA06:  POP.W           {R7,LR}
1BCA0A:  LDR             R0, =(flushedSinceSwap_ptr - 0x1BCA12)
1BCA0C:  MOVS            R1, #0
1BCA0E:  ADD             R0, PC; flushedSinceSwap_ptr
1BCA10:  LDR             R0, [R0]; flushedSinceSwap
1BCA12:  STRB            R1, [R0]
1BCA14:  BX              LR
