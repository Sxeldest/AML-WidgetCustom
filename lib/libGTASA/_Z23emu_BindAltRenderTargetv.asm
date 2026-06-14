; =========================================================
; Game Engine Function: _Z23emu_BindAltRenderTargetv
; Address            : 0x1BC230 - 0x1BC27A
; =========================================================

1BC230:  PUSH            {R7,LR}
1BC232:  MOV             R7, SP
1BC234:  SUB             SP, SP, #0x10; int
1BC236:  LDR             R0, =(RQCaps_ptr - 0x1BC23C)
1BC238:  ADD             R0, PC; RQCaps_ptr
1BC23A:  LDR             R0, [R0]; RQCaps
1BC23C:  LDRB            R0, [R0,#(byte_6B8BA8 - 0x6B8B9C)]
1BC23E:  CBZ             R0, loc_1BC268
1BC240:  LDR             R0, =(hackTarget_ptr - 0x1BC248)
1BC242:  MOVS            R1, #0; RQRenderTarget *
1BC244:  ADD             R0, PC; hackTarget_ptr
1BC246:  LDR             R0, [R0]; hackTarget
1BC248:  LDR             R0, [R0]; this
1BC24A:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BC24E:  LDR             R0, =(unk_5E87D8 - 0x1BC25C)
1BC250:  MOV             R1, SP; unsigned int
1BC252:  MOV.W           R2, #0x3F800000; float *
1BC256:  MOVS            R3, #0; float
1BC258:  ADD             R0, PC; unk_5E87D8
1BC25A:  VLD1.64         {D16-D17}, [R0]
1BC25E:  MOVS            R0, #(stderr+1); this
1BC260:  VST1.64         {D16-D17}, [R1,#0x18+var_18]
1BC264:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BC268:  LDR             R0, =(backTarget_ptr - 0x1BC270)
1BC26A:  MOVS            R1, #0; RQRenderTarget *
1BC26C:  ADD             R0, PC; backTarget_ptr
1BC26E:  LDR             R0, [R0]; backTarget
1BC270:  LDR             R0, [R0]; this
1BC272:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BC276:  ADD             SP, SP, #0x10
1BC278:  POP             {R7,PC}
