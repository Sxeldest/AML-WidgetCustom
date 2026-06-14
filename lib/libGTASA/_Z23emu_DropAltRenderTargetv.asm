; =========================================================
; Game Engine Function: _Z23emu_DropAltRenderTargetv
; Address            : 0x1BC9BC - 0x1BC9EE
; =========================================================

1BC9BC:  PUSH            {R7,LR}
1BC9BE:  MOV             R7, SP
1BC9C0:  SUB             SP, SP, #0x10; int
1BC9C2:  LDR             R0, =(flushedSinceSwap_ptr - 0x1BC9CA)
1BC9C4:  MOVS            R1, #1
1BC9C6:  ADD             R0, PC; flushedSinceSwap_ptr
1BC9C8:  LDR             R0, [R0]; flushedSinceSwap
1BC9CA:  STRB            R1, [R0]
1BC9CC:  MOVS            R0, #0; this
1BC9CE:  MOVS            R1, #(stderr+1); RQRenderTarget *
1BC9D0:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BC9D4:  VMOV.I32        Q8, #0
1BC9D8:  MOV             R1, SP; unsigned int
1BC9DA:  MOVS            R0, #(stderr+2); this
1BC9DC:  MOV.W           R2, #0x3F800000; float *
1BC9E0:  MOVS            R3, #0; float
1BC9E2:  VST1.64         {D16-D17}, [R1,#0x18+var_18]
1BC9E6:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BC9EA:  ADD             SP, SP, #0x10
1BC9EC:  POP             {R7,PC}
