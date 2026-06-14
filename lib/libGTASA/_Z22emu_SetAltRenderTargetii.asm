; =========================================================
; Game Engine Function: _Z22emu_SetAltRenderTargetii
; Address            : 0x1BB94C - 0x1BBAA2
; =========================================================

1BB94C:  PUSH            {R4-R7,LR}
1BB94E:  ADD             R7, SP, #0xC
1BB950:  PUSH.W          {R11}
1BB954:  SUB             SP, SP, #0x10; int
1BB956:  MOV             R5, R0
1BB958:  LDR             R0, =(renderWidth_ptr - 0x1BB960)
1BB95A:  MOV             R4, R1
1BB95C:  ADD             R0, PC; renderWidth_ptr
1BB95E:  LDR             R0, [R0]; renderWidth
1BB960:  LDR             R0, [R0]
1BB962:  CMP             R0, R5
1BB964:  BNE             loc_1BB974
1BB966:  LDR             R0, =(renderHeight_ptr - 0x1BB96C)
1BB968:  ADD             R0, PC; renderHeight_ptr
1BB96A:  LDR             R0, [R0]; renderHeight
1BB96C:  LDR             R0, [R0]
1BB96E:  CMP             R0, R4
1BB970:  BEQ.W           loc_1BBA9A
1BB974:  LDR             R0, =(backTarget_ptr - 0x1BB97A)
1BB976:  ADD             R0, PC; backTarget_ptr
1BB978:  LDR             R0, [R0]; backTarget
1BB97A:  LDR             R0, [R0]; this
1BB97C:  CBZ             R0, loc_1BB9BE
1BB97E:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BB982:  LDR             R0, =(shadowTarget_ptr - 0x1BB98A)
1BB984:  CMP             R5, #0
1BB986:  ADD             R0, PC; shadowTarget_ptr
1BB988:  LDR             R0, [R0]; shadowTarget
1BB98A:  LDR             R0, [R0]; this
1BB98C:  IT NE
1BB98E:  CMPNE           R4, #0
1BB990:  BNE             loc_1BBA42
1BB992:  CBZ             R0, loc_1BB9A2
1BB994:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BB998:  LDR             R0, =(shadowTarget_ptr - 0x1BB9A0)
1BB99A:  MOVS            R1, #0
1BB99C:  ADD             R0, PC; shadowTarget_ptr
1BB99E:  LDR             R0, [R0]; shadowTarget
1BB9A0:  STR             R1, [R0]
1BB9A2:  LDR             R0, =(renderWidth_ptr - 0x1BB9AE)
1BB9A4:  MOVS            R3, #0
1BB9A6:  LDR             R1, =(backTarget_ptr - 0x1BB9B0)
1BB9A8:  LDR             R2, =(renderHeight_ptr - 0x1BB9B2)
1BB9AA:  ADD             R0, PC; renderWidth_ptr
1BB9AC:  ADD             R1, PC; backTarget_ptr
1BB9AE:  ADD             R2, PC; renderHeight_ptr
1BB9B0:  LDR             R0, [R0]; renderWidth
1BB9B2:  LDR             R1, [R1]; backTarget
1BB9B4:  LDR             R2, [R2]; renderHeight
1BB9B6:  STR             R3, [R0]
1BB9B8:  STR             R3, [R1]
1BB9BA:  STR             R3, [R2]
1BB9BC:  B               loc_1BBA9A
1BB9BE:  LDR             R0, =(dword_6B408C - 0x1BB9C4)
1BB9C0:  ADD             R0, PC; dword_6B408C
1BB9C2:  LDR             R0, [R0]
1BB9C4:  CBNZ            R0, loc_1BBA22
1BB9C6:  LDR             R0, =(contrastVShader_ptr - 0x1BB9CE)
1BB9C8:  LDR             R1, =(contrastPShader_ptr - 0x1BB9D0)
1BB9CA:  ADD             R0, PC; contrastVShader_ptr
1BB9CC:  ADD             R1, PC; contrastPShader_ptr
1BB9CE:  LDR             R6, [R0]; contrastVShader
1BB9D0:  LDR             R0, [R1]; contrastPShader
1BB9D2:  LDR             R1, [R6]; "precision highp float;attribute vec3 Po"... ...
1BB9D4:  LDR             R0, [R0]; "precision mediump float;uniform sampler"... ...
1BB9D6:  BLX             j__Z22emu_CustomShaderCreatePKcS0_; emu_CustomShaderCreate(char const*,char const*)
1BB9DA:  LDR             R1, =(gradingPShader_ptr - 0x1BB9E2)
1BB9DC:  LDR             R3, =(dword_6B408C - 0x1BB9E4)
1BB9DE:  ADD             R1, PC; gradingPShader_ptr
1BB9E0:  ADD             R3, PC; dword_6B408C
1BB9E2:  LDR             R2, [R1]; gradingPShader
1BB9E4:  LDR             R1, [R6]; "precision highp float;attribute vec3 Po"... ...
1BB9E6:  STR             R0, [R3]
1BB9E8:  LDR             R2, [R2]; "precision mediump float;uniform sampler"... ...
1BB9EA:  MOV             R0, R2; char *
1BB9EC:  BLX             j__Z22emu_CustomShaderCreatePKcS0_; emu_CustomShaderCreate(char const*,char const*)
1BB9F0:  LDR             R1, =(blurPShader_ptr - 0x1BB9F8)
1BB9F2:  LDR             R3, =(dword_6B4090 - 0x1BB9FA)
1BB9F4:  ADD             R1, PC; blurPShader_ptr
1BB9F6:  ADD             R3, PC; dword_6B4090
1BB9F8:  LDR             R2, [R1]; blurPShader
1BB9FA:  LDR             R1, [R6]; "precision highp float;attribute vec3 Po"... ...
1BB9FC:  STR             R0, [R3]
1BB9FE:  LDR             R2, [R2]; "precision mediump float;uniform sampler"... ...
1BBA00:  MOV             R0, R2; char *
1BBA02:  BLX             j__Z22emu_CustomShaderCreatePKcS0_; emu_CustomShaderCreate(char const*,char const*)
1BBA06:  LDR             R1, =(shadowResolvePShader_ptr - 0x1BBA0E)
1BBA08:  LDR             R3, =(dword_6B4094 - 0x1BBA10)
1BBA0A:  ADD             R1, PC; shadowResolvePShader_ptr
1BBA0C:  ADD             R3, PC; dword_6B4094
1BBA0E:  LDR             R2, [R1]; shadowResolvePShader
1BBA10:  LDR             R1, [R6]; "precision highp float;attribute vec3 Po"... ...
1BBA12:  STR             R0, [R3]
1BBA14:  LDR             R2, [R2]; "precision mediump float;uniform sampler"... ...
1BBA16:  MOV             R0, R2; char *
1BBA18:  BLX             j__Z22emu_CustomShaderCreatePKcS0_; emu_CustomShaderCreate(char const*,char const*)
1BBA1C:  LDR             R1, =(dword_6B4098 - 0x1BBA22)
1BBA1E:  ADD             R1, PC; dword_6B4098
1BBA20:  STR             R0, [R1]
1BBA22:  LDR             R0, =(RQCaps_ptr - 0x1BBA28)
1BBA24:  ADD             R0, PC; RQCaps_ptr
1BBA26:  LDR             R0, [R0]; RQCaps
1BBA28:  LDRB            R0, [R0,#(byte_6B8BA8 - 0x6B8B9C)]
1BBA2A:  CBZ             R0, loc_1BBA52
1BBA2C:  MOVS            R0, #0x20 ; ' '
1BBA2E:  MOVS            R1, #0x20 ; ' '
1BBA30:  MOVS            R2, #1
1BBA32:  MOVS            R3, #0
1BBA34:  BLX             j__ZN14RQRenderTarget6CreateEjj17RQTargetColorType17RQTargetDepthType; RQRenderTarget::Create(uint,uint,RQTargetColorType,RQTargetDepthType)
1BBA38:  LDR             R1, =(hackTarget_ptr - 0x1BBA3E)
1BBA3A:  ADD             R1, PC; hackTarget_ptr
1BBA3C:  LDR             R1, [R1]; hackTarget
1BBA3E:  STR             R0, [R1]
1BBA40:  B               loc_1BBA52
1BBA42:  CBZ             R0, loc_1BBA52
1BBA44:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BBA48:  LDR             R0, =(shadowTarget_ptr - 0x1BBA50)
1BBA4A:  MOVS            R1, #0
1BBA4C:  ADD             R0, PC; shadowTarget_ptr
1BBA4E:  LDR             R0, [R0]; shadowTarget
1BBA50:  STR             R1, [R0]
1BBA52:  LDR             R0, =(NoRenderTarget_ptr - 0x1BBA58)
1BBA54:  ADD             R0, PC; NoRenderTarget_ptr
1BBA56:  LDR             R0, [R0]; NoRenderTarget
1BBA58:  LDRB            R0, [R0]
1BBA5A:  CBNZ            R0, loc_1BBA9A
1BBA5C:  LDR             R0, =(renderHeight_ptr - 0x1BBA68)
1BBA5E:  MOVS            R2, #0
1BBA60:  LDR             R1, =(renderWidth_ptr - 0x1BBA6A)
1BBA62:  MOVS            R3, #2
1BBA64:  ADD             R0, PC; renderHeight_ptr
1BBA66:  ADD             R1, PC; renderWidth_ptr
1BBA68:  LDR             R0, [R0]; renderHeight
1BBA6A:  LDR             R1, [R1]; renderWidth
1BBA6C:  STR             R4, [R0]
1BBA6E:  MOV             R0, R5
1BBA70:  STR             R5, [R1]
1BBA72:  MOV             R1, R4
1BBA74:  BLX             j__ZN14RQRenderTarget6CreateEjj17RQTargetColorType17RQTargetDepthType; RQRenderTarget::Create(uint,uint,RQTargetColorType,RQTargetDepthType)
1BBA78:  LDR             R1, =(backTarget_ptr - 0x1BBA7E)
1BBA7A:  ADD             R1, PC; backTarget_ptr
1BBA7C:  LDR             R1, [R1]; backTarget
1BBA7E:  STR             R0, [R1]
1BBA80:  MOVS            R1, #(stderr+1); RQRenderTarget *
1BBA82:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BBA86:  VMOV.I32        Q8, #0
1BBA8A:  MOV             R1, SP; unsigned int
1BBA8C:  MOVS            R0, #(stderr+1); this
1BBA8E:  MOVS            R2, #0; float *
1BBA90:  MOVS            R3, #0; float
1BBA92:  VST1.64         {D16-D17}, [R1,#0x20+var_20]
1BBA96:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BBA9A:  ADD             SP, SP, #0x10
1BBA9C:  POP.W           {R11}
1BBAA0:  POP             {R4-R7,PC}
