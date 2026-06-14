; =========================================================
; Game Engine Function: _Z24_rwOpenGLCameraEndUpdatePvS_i
; Address            : 0x1ADDD4 - 0x1ADDF4
; =========================================================

1ADDD4:  PUSH            {R7,LR}
1ADDD6:  MOV             R7, SP
1ADDD8:  LDR             R0, =(oldTarget_ptr - 0x1ADDE2)
1ADDDA:  MOVS            R2, #0; bool
1ADDDC:  LDR             R1, =(dgGGlobals_ptr - 0x1ADDE4)
1ADDDE:  ADD             R0, PC; oldTarget_ptr
1ADDE0:  ADD             R1, PC; dgGGlobals_ptr
1ADDE2:  LDR             R0, [R0]; oldTarget
1ADDE4:  LDR             R1, [R1]; dgGGlobals
1ADDE6:  LDR             R0, [R0]; this
1ADDE8:  STR             R2, [R1]
1ADDEA:  MOVS            R1, #0; RQRenderTarget *
1ADDEC:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1ADDF0:  MOVS            R0, #1
1ADDF2:  POP             {R7,PC}
