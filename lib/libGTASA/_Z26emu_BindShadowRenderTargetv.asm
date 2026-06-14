; =========================================================
; Game Engine Function: _Z26emu_BindShadowRenderTargetv
; Address            : 0x1BCA20 - 0x1BCA98
; =========================================================

1BCA20:  PUSH            {R7,LR}
1BCA22:  MOV             R7, SP
1BCA24:  SUB             SP, SP, #0x10; int
1BCA26:  LDR             R0, =(shadowTarget_ptr - 0x1BCA2E)
1BCA28:  LDR             R1, =(NoRenderTarget_ptr - 0x1BCA30)
1BCA2A:  ADD             R0, PC; shadowTarget_ptr
1BCA2C:  ADD             R1, PC; NoRenderTarget_ptr
1BCA2E:  LDR             R0, [R0]; shadowTarget
1BCA30:  LDR             R1, [R1]; NoRenderTarget
1BCA32:  LDR             R0, [R0]
1BCA34:  LDRB            R1, [R1]
1BCA36:  CBZ             R1, loc_1BCA4E
1BCA38:  CBNZ            R0, loc_1BCA4E
1BCA3A:  MOVS            R0, #0x10
1BCA3C:  MOVS            R1, #0x10
1BCA3E:  MOVS            R2, #0
1BCA40:  MOVS            R3, #0
1BCA42:  BLX             j__ZN14RQRenderTarget6CreateEjj17RQTargetColorType17RQTargetDepthType; RQRenderTarget::Create(uint,uint,RQTargetColorType,RQTargetDepthType)
1BCA46:  LDR             R1, =(shadowTarget_ptr - 0x1BCA4C)
1BCA48:  ADD             R1, PC; shadowTarget_ptr
1BCA4A:  LDR             R1, [R1]; shadowTarget
1BCA4C:  STR             R0, [R1]
1BCA4E:  CBNZ            R0, loc_1BCA76
1BCA50:  LDR             R0, =(backTarget_ptr - 0x1BCA5A)
1BCA52:  LDR             R1, =(renderHeight_ptr - 0x1BCA5C)
1BCA54:  LDR             R2, =(renderWidth_ptr - 0x1BCA5E)
1BCA56:  ADD             R0, PC; backTarget_ptr
1BCA58:  ADD             R1, PC; renderHeight_ptr
1BCA5A:  ADD             R2, PC; renderWidth_ptr
1BCA5C:  LDR             R0, [R0]; backTarget
1BCA5E:  LDR             R1, [R1]; renderHeight
1BCA60:  LDR             R2, [R2]; renderWidth
1BCA62:  LDR             R3, [R0]
1BCA64:  LDR             R1, [R1]
1BCA66:  LDR             R0, [R2]
1BCA68:  MOVS            R2, #0
1BCA6A:  BLX             j__ZN14RQRenderTarget6CreateEjj17RQTargetColorTypePS_; RQRenderTarget::Create(uint,uint,RQTargetColorType,RQRenderTarget*)
1BCA6E:  LDR             R1, =(shadowTarget_ptr - 0x1BCA74)
1BCA70:  ADD             R1, PC; shadowTarget_ptr
1BCA72:  LDR             R1, [R1]; shadowTarget
1BCA74:  STR             R0, [R1]
1BCA76:  MOVS            R1, #0; RQRenderTarget *
1BCA78:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BCA7C:  LDR             R0, =(unk_5E87F8 - 0x1BCA88)
1BCA7E:  MOV             R1, SP; unsigned int
1BCA80:  MOVS            R2, #0; float *
1BCA82:  MOVS            R3, #0; float
1BCA84:  ADD             R0, PC; unk_5E87F8
1BCA86:  VLD1.64         {D16-D17}, [R0]
1BCA8A:  MOVS            R0, #(stderr+1); this
1BCA8C:  VST1.64         {D16-D17}, [R1,#0x18+var_18]
1BCA90:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BCA94:  ADD             SP, SP, #0x10
1BCA96:  POP             {R7,PC}
