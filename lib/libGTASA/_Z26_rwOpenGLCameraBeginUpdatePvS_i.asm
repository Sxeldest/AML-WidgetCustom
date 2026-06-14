; =========================================================
; Game Engine Function: _Z26_rwOpenGLCameraBeginUpdatePvS_i
; Address            : 0x1ADB38 - 0x1ADDBC
; =========================================================

1ADB38:  PUSH            {R4-R7,LR}
1ADB3A:  ADD             R7, SP, #0xC
1ADB3C:  PUSH.W          {R11}
1ADB40:  VPUSH           {D8-D9}
1ADB44:  SUB             SP, SP, #0x60; double
1ADB46:  MOV             R5, R1
1ADB48:  LDR             R0, [R5,#4]
1ADB4A:  LDR             R6, [R5,#0x60]
1ADB4C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1ADB50:  MOV             R4, R0
1ADB52:  LDR             R0, =(oldTarget_ptr - 0x1ADB5E)
1ADB54:  LDR             R2, =(dgGGlobals_ptr - 0x1ADB64)
1ADB56:  VMOV.I32        Q8, #0
1ADB5A:  ADD             R0, PC; oldTarget_ptr
1ADB5C:  ADD             R3, SP, #0x80+var_60
1ADB5E:  LDR             R1, =(_ZN14RQRenderTarget8selectedE_ptr - 0x1ADB6E)
1ADB60:  ADD             R2, PC; dgGGlobals_ptr
1ADB62:  LDR.W           R12, [R0]; oldTarget
1ADB66:  ADD.W           R0, R3, #0x24 ; '$'
1ADB6A:  ADD             R1, PC; _ZN14RQRenderTarget8selectedE_ptr
1ADB6C:  VLDR            S16, [R5,#0x80]
1ADB70:  VLDR            S18, [R5,#0x84]
1ADB74:  VST1.32         {D16-D17}, [R0]
1ADB78:  ADD.W           R0, R3, #0x14
1ADB7C:  LDR             R2, [R2]; dgGGlobals
1ADB7E:  VST1.32         {D16-D17}, [R0]
1ADB82:  MOVS            R0, #0
1ADB84:  LDR             R1, [R1]; RQRenderTarget::selected ...
1ADB86:  STRD.W          R0, R0, [SP,#0x80+var_2C]
1ADB8A:  LDR             R0, [R2]
1ADB8C:  ADDS            R2, R3, #4; bool
1ADB8E:  LDR             R1, [R1]; RQRenderTarget::selected
1ADB90:  STR.W           R1, [R12]
1ADB94:  CMP             R0, R5
1ADB96:  MOV.W           R1, #0x3F800000
1ADB9A:  VST1.32         {D16-D17}, [R2]
1ADB9E:  STR             R1, [SP,#0x80+var_60]
1ADBA0:  STR             R1, [SP,#0x80+var_24]
1ADBA2:  STR             R1, [SP,#0x80+var_38]
1ADBA4:  STR             R1, [SP,#0x80+var_4C]
1ADBA6:  BEQ             loc_1ADBD0
1ADBA8:  LDR             R0, =(RasterExtOffset_ptr - 0x1ADBAE)
1ADBAA:  ADD             R0, PC; RasterExtOffset_ptr
1ADBAC:  LDR             R0, [R0]; RasterExtOffset
1ADBAE:  LDR             R0, [R0]
1ADBB0:  ADD             R0, R6
1ADBB2:  LDR             R0, [R0,#0x18]; this
1ADBB4:  CBZ             R0, loc_1ADBC8
1ADBB6:  MOVS            R1, #0; RQRenderTarget *
1ADBB8:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1ADBBC:  LDRD.W          R2, R3, [R6,#0xC]; unsigned int
1ADBC0:  MOVS            R0, #0; this
1ADBC2:  MOVS            R1, #0; int
1ADBC4:  BLX             j__ZN14RQRenderTarget8ViewportEiijj; RQRenderTarget::Viewport(int,int,uint,uint)
1ADBC8:  LDR             R0, =(dgGGlobals_ptr - 0x1ADBCE)
1ADBCA:  ADD             R0, PC; dgGGlobals_ptr
1ADBCC:  LDR             R0, [R0]; dgGGlobals
1ADBCE:  STR             R5, [R0]
1ADBD0:  LDR             R0, [R6]
1ADBD2:  CMP             R6, R0
1ADBD4:  MOV             R6, R0
1ADBD6:  BNE             loc_1ADBD0
1ADBD8:  MOVW            R0, #0x1701; unsigned int
1ADBDC:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADBE0:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1ADBE4:  LDR             R0, [R5,#0x14]
1ADBE6:  CMP             R0, #2
1ADBE8:  BNE             loc_1ADC48
1ADBEA:  VADD.F32        S0, S16, S18
1ADBEE:  VLDR            S6, [R5,#0x68]
1ADBF2:  VMOV.F32        S2, #1.0
1ADBF6:  VLDR            S8, [R5,#0x6C]
1ADBFA:  VMOV.F32        S4, #-2.0
1ADBFE:  VLDR            S10, [R5,#0x78]
1ADC02:  VSUB.F32        S14, S18, S16
1ADC06:  VLDR            S12, [R5,#0x7C]
1ADC0A:  LDR             R0, =(unk_67A09C - 0x1ADC10)
1ADC0C:  ADD             R0, PC; unk_67A09C ; float *
1ADC0E:  VNEG.F32        S0, S0
1ADC12:  VDIV.F32        S6, S2, S6
1ADC16:  VDIV.F32        S2, S2, S8
1ADC1A:  VDIV.F32        S4, S4, S14
1ADC1E:  VDIV.F32        S0, S0, S14
1ADC22:  VNMUL.F32       S8, S6, S10
1ADC26:  VSTR            S6, [R0]
1ADC2A:  VNMUL.F32       S10, S2, S12
1ADC2E:  VSTR            S2, [R0,#0x14]
1ADC32:  VSTR            S8, [R0,#0x20]
1ADC36:  VSTR            S10, [R0,#0x24]
1ADC3A:  VSTR            S4, [R0,#0x28]
1ADC3E:  VSTR            S0, [R0,#0x38]
1ADC42:  BLX             j__Z17emu_glMultMatrixfPKf; emu_glMultMatrixf(float const*)
1ADC46:  B               loc_1ADCB4
1ADC48:  VLDR            S0, [R5,#0x68]
1ADC4C:  VLDR            S4, [R5,#0x78]
1ADC50:  VMUL.F32        S0, S16, S0
1ADC54:  VLDR            S2, [R5,#0x6C]
1ADC58:  VNMUL.F32       S8, S16, S4
1ADC5C:  VLDR            S6, [R5,#0x7C]
1ADC60:  VMUL.F32        S4, S16, S4
1ADC64:  VMUL.F32        S2, S16, S2
1ADC68:  VSUB.F32        S8, S8, S0
1ADC6C:  VSUB.F32        S0, S0, S4
1ADC70:  VMUL.F32        S4, S16, S6
1ADC74:  VNMUL.F32       S6, S16, S6
1ADC78:  VCVT.F64.F32    D16, S8
1ADC7C:  VCVT.F64.F32    D17, S0
1ADC80:  VMOV            R0, R1, D16; double
1ADC84:  VMOV            R2, R3, D17; double
1ADC88:  VSUB.F32        S0, S2, S4
1ADC8C:  VSUB.F32        S2, S6, S2
1ADC90:  VCVT.F64.F32    D16, S18
1ADC94:  VCVT.F64.F32    D17, S16
1ADC98:  VCVT.F64.F32    D19, S2
1ADC9C:  VCVT.F64.F32    D18, S0
1ADCA0:  VSTR            D19, [SP,#0x80+var_80]
1ADCA4:  VSTR            D18, [SP,#0x80+var_78]
1ADCA8:  VSTR            D17, [SP,#0x80+var_70]
1ADCAC:  VSTR            D16, [SP,#0x80+var_68]
1ADCB0:  BLX             j__Z13emu_glFrustumdddddd; emu_glFrustum(double,double,double,double,double,double)
1ADCB4:  MOVW            R0, #0x1703; unsigned int
1ADCB8:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADCBC:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1ADCC0:  VLDR            S0, [R4]
1ADCC4:  VNEG.F32        S0, S0
1ADCC8:  VSTR            S0, [SP,#0x80+var_60]
1ADCCC:  VLDR            S0, [R4,#4]
1ADCD0:  VNEG.F32        S0, S0
1ADCD4:  VSTR            S0, [SP,#0x80+var_50]
1ADCD8:  VLDR            S0, [R4,#8]
1ADCDC:  VNEG.F32        S0, S0
1ADCE0:  VSTR            S0, [SP,#0x80+var_40]
1ADCE4:  LDR             R0, [R4,#0x10]
1ADCE6:  STR             R0, [SP,#0x80+var_5C]
1ADCE8:  LDR             R0, [R4,#0x14]
1ADCEA:  STR             R0, [SP,#0x80+var_4C]
1ADCEC:  LDR             R0, [R4,#0x18]
1ADCEE:  STR             R0, [SP,#0x80+var_3C]
1ADCF0:  ADD             R0, SP, #0x80+var_60; float *
1ADCF2:  VLDR            S0, [R4,#0x20]
1ADCF6:  VLDR            S2, [R4,#0x24]
1ADCFA:  VNEG.F32        S0, S0
1ADCFE:  VLDR            S4, [R4,#0x28]
1ADD02:  VSTR            S0, [SP,#0x80+var_58]
1ADD06:  VNEG.F32        S0, S2
1ADD0A:  VSTR            S0, [SP,#0x80+var_48]
1ADD0E:  VNEG.F32        S0, S4
1ADD12:  VSTR            S0, [SP,#0x80+var_38]
1ADD16:  VLDR            S0, [R4]
1ADD1A:  VLDR            S6, [R4,#0x30]
1ADD1E:  VLDR            S2, [R4,#4]
1ADD22:  VLDR            S8, [R4,#0x34]
1ADD26:  VMUL.F32        S0, S0, S6
1ADD2A:  VLDR            S4, [R4,#8]
1ADD2E:  VMUL.F32        S2, S2, S8
1ADD32:  VLDR            S10, [R4,#0x38]
1ADD36:  VMUL.F32        S4, S4, S10
1ADD3A:  VADD.F32        S0, S0, S2
1ADD3E:  VADD.F32        S0, S0, S4
1ADD42:  VSTR            S0, [SP,#0x80+var_30]
1ADD46:  VLDR            S2, [R4,#0x14]
1ADD4A:  VLDR            S0, [R4,#0x10]
1ADD4E:  VLDR            S6, [R4,#0x30]
1ADD52:  VMUL.F32        S2, S2, S8
1ADD56:  VLDR            S4, [R4,#0x18]
1ADD5A:  VMUL.F32        S0, S0, S6
1ADD5E:  VMUL.F32        S4, S4, S10
1ADD62:  VADD.F32        S0, S0, S2
1ADD66:  VADD.F32        S0, S0, S4
1ADD6A:  VNEG.F32        S0, S0
1ADD6E:  VSTR            S0, [SP,#0x80+var_2C]
1ADD72:  VLDR            S0, [R4,#0x20]
1ADD76:  VLDR            S6, [R4,#0x30]
1ADD7A:  VLDR            S2, [R4,#0x24]
1ADD7E:  VLDR            S8, [R4,#0x34]
1ADD82:  VMUL.F32        S0, S0, S6
1ADD86:  VLDR            S4, [R4,#0x28]
1ADD8A:  VMUL.F32        S2, S2, S8
1ADD8E:  VMUL.F32        S4, S4, S10
1ADD92:  VADD.F32        S0, S0, S2
1ADD96:  VADD.F32        S0, S0, S4
1ADD9A:  VSTR            S0, [SP,#0x80+var_28]
1ADD9E:  BLX             j__Z17emu_glMultMatrixfPKf; emu_glMultMatrixf(float const*)
1ADDA2:  MOV.W           R0, #0x1700; unsigned int
1ADDA6:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1ADDAA:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1ADDAE:  MOVS            R0, #1
1ADDB0:  ADD             SP, SP, #0x60 ; '`'
1ADDB2:  VPOP            {D8-D9}
1ADDB6:  POP.W           {R11}
1ADDBA:  POP             {R4-R7,PC}
