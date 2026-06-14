; =========================================================
; Game Engine Function: _ZN19FxInfoAnimTexture_c8GetValueEffffhPv
; Address            : 0x36B7FE - 0x36B846
; =========================================================

36B7FE:  PUSH            {R7,LR}
36B800:  MOV             R7, SP
36B802:  SUB             SP, SP, #0x40
36B804:  VMOV            S2, R1
36B808:  VLDR            S0, [R7,#8]
36B80C:  LDRB            R1, [R0,#6]
36B80E:  ADDS            R0, #8; this
36B810:  VDIV.F32        S0, S2, S0
36B814:  CMP             R1, #0
36B816:  MOV             R1, SP; float *
36B818:  VMOV            S2, R2
36B81C:  IT EQ
36B81E:  VMOVEQ.F32      S2, S0
36B822:  VMOV            R2, S2; float
36B826:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36B82A:  LDR             R0, [R7,#0x10]
36B82C:  MOVS            R1, #1
36B82E:  STRB.W          R1, [R0,#0x34]
36B832:  VLDR            S0, [SP,#0x48+var_48]
36B836:  VCVT.S32.F32    S0, S0
36B83A:  VMOV            R1, S0
36B83E:  STRB.W          R1, [R0,#0x35]
36B842:  ADD             SP, SP, #0x40 ; '@'
36B844:  POP             {R7,PC}
