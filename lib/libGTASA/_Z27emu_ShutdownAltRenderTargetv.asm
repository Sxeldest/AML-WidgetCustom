; =========================================================
; Game Engine Function: _Z27emu_ShutdownAltRenderTargetv
; Address            : 0x1BCAB8 - 0x1BCB4E
; =========================================================

1BCAB8:  PUSH            {R4,R6,R7,LR}
1BCABA:  ADD             R7, SP, #8
1BCABC:  MOVS            R0, #0; this
1BCABE:  MOVS            R1, #0; RQRenderTarget *
1BCAC0:  MOVS            R4, #0
1BCAC2:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BCAC6:  LDR             R0, =(hackTarget_ptr - 0x1BCACC)
1BCAC8:  ADD             R0, PC; hackTarget_ptr
1BCACA:  LDR             R0, [R0]; hackTarget
1BCACC:  LDR             R0, [R0]; this
1BCACE:  CBZ             R0, loc_1BCADC
1BCAD0:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BCAD4:  LDR             R0, =(hackTarget_ptr - 0x1BCADA)
1BCAD6:  ADD             R0, PC; hackTarget_ptr
1BCAD8:  LDR             R0, [R0]; hackTarget
1BCADA:  STR             R4, [R0]
1BCADC:  LDR             R0, =(backTarget_ptr - 0x1BCAE2)
1BCADE:  ADD             R0, PC; backTarget_ptr
1BCAE0:  LDR             R0, [R0]; backTarget
1BCAE2:  LDR             R0, [R0]; this
1BCAE4:  CBZ             R0, loc_1BCAF4
1BCAE6:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BCAEA:  LDR             R0, =(backTarget_ptr - 0x1BCAF2)
1BCAEC:  MOVS            R1, #0; RQRenderTarget *
1BCAEE:  ADD             R0, PC; backTarget_ptr
1BCAF0:  LDR             R0, [R0]; backTarget
1BCAF2:  STR             R1, [R0]
1BCAF4:  LDR             R0, =(shadowTarget_ptr - 0x1BCAFA)
1BCAF6:  ADD             R0, PC; shadowTarget_ptr
1BCAF8:  LDR             R0, [R0]; shadowTarget
1BCAFA:  LDR             R0, [R0]; this
1BCAFC:  CBZ             R0, loc_1BCB0C
1BCAFE:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1BCB02:  LDR             R0, =(shadowTarget_ptr - 0x1BCB0A)
1BCB04:  MOVS            R1, #0
1BCB06:  ADD             R0, PC; shadowTarget_ptr
1BCB08:  LDR             R0, [R0]; shadowTarget
1BCB0A:  STR             R1, [R0]
1BCB0C:  LDR             R0, =(dword_6B408C - 0x1BCB12)
1BCB0E:  ADD             R0, PC; dword_6B408C
1BCB10:  LDR             R0, [R0]; void *
1BCB12:  CBZ             R0, loc_1BCB20
1BCB14:  BLX             j__Z22emu_CustomShaderDeletePv; emu_CustomShaderDelete(void *)
1BCB18:  LDR             R0, =(dword_6B408C - 0x1BCB20)
1BCB1A:  MOVS            R1, #0
1BCB1C:  ADD             R0, PC; dword_6B408C
1BCB1E:  STR             R1, [R0]
1BCB20:  LDR             R0, =(dword_6B4090 - 0x1BCB26)
1BCB22:  ADD             R0, PC; dword_6B4090
1BCB24:  LDR             R0, [R0]; void *
1BCB26:  CBZ             R0, loc_1BCB34
1BCB28:  BLX             j__Z22emu_CustomShaderDeletePv; emu_CustomShaderDelete(void *)
1BCB2C:  LDR             R0, =(dword_6B4090 - 0x1BCB34)
1BCB2E:  MOVS            R1, #0
1BCB30:  ADD             R0, PC; dword_6B4090
1BCB32:  STR             R1, [R0]
1BCB34:  LDR             R0, =(dword_6B4098 - 0x1BCB3A)
1BCB36:  ADD             R0, PC; dword_6B4098
1BCB38:  LDR             R0, [R0]; void *
1BCB3A:  CMP             R0, #0
1BCB3C:  IT EQ
1BCB3E:  POPEQ           {R4,R6,R7,PC}
1BCB40:  BLX             j__Z22emu_CustomShaderDeletePv; emu_CustomShaderDelete(void *)
1BCB44:  LDR             R0, =(dword_6B4098 - 0x1BCB4C)
1BCB46:  MOVS            R1, #0
1BCB48:  ADD             R0, PC; dword_6B4098
1BCB4A:  STR             R1, [R0]
1BCB4C:  POP             {R4,R6,R7,PC}
