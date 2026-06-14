; =========================================================
; Game Engine Function: _Z24emu_ClearAltRenderTargetfff
; Address            : 0x1BBB08 - 0x1BBB46
; =========================================================

1BBB08:  PUSH            {R4-R7,LR}
1BBB0A:  ADD             R7, SP, #0xC
1BBB0C:  PUSH.W          {R11}
1BBB10:  SUB             SP, SP, #0x10
1BBB12:  MOV             R6, R0
1BBB14:  LDR             R0, =(backTarget_ptr - 0x1BBB1E)
1BBB16:  MOV             R5, R1
1BBB18:  MOVS            R1, #(stderr+1); RQRenderTarget *
1BBB1A:  ADD             R0, PC; backTarget_ptr
1BBB1C:  MOV             R4, R2
1BBB1E:  LDR             R0, [R0]; backTarget
1BBB20:  LDR             R0, [R0]; this
1BBB22:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BBB26:  MOV.W           R0, #0x3F800000
1BBB2A:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
1BBB2E:  STR             R4, [SP,#0x20+var_18]
1BBB30:  MOV             R1, SP; unsigned int
1BBB32:  STR             R0, [SP,#0x20+var_14]
1BBB34:  MOVS            R0, #(stderr+1); this
1BBB36:  MOVS            R2, #0; float *
1BBB38:  MOVS            R3, #0; float
1BBB3A:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BBB3E:  ADD             SP, SP, #0x10
1BBB40:  POP.W           {R11}
1BBB44:  POP             {R4-R7,PC}
