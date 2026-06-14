; =========================================================
; Game Engine Function: _ZN10MenuScreen12DoesTextWrapEPti9CVector2D
; Address            : 0x298F4C - 0x298FE2
; =========================================================

298F4C:  PUSH            {R4-R7,LR}
298F4E:  ADD             R7, SP, #0xC
298F50:  PUSH.W          {R11}
298F54:  VPUSH           {D8}
298F58:  UXTB            R0, R2; this
298F5A:  MOV             R4, R3
298F5C:  MOV             R5, R1
298F5E:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
298F62:  LDR             R0, =(RsGlobal_ptr - 0x298F6C)
298F64:  VLDR            S0, =0.05
298F68:  ADD             R0, PC; RsGlobal_ptr
298F6A:  VLDR            S2, [R7,#arg_0]
298F6E:  LDR             R6, [R0]; RsGlobal
298F70:  VMUL.F32        S0, S2, S0
298F74:  VLDR            S6, [R6,#8]
298F78:  VLDR            S4, [R6,#4]
298F7C:  VCVT.F32.S32    S2, S6
298F80:  VCVT.F32.S32    S16, S4
298F84:  VMUL.F32        S0, S0, S2
298F88:  VLDR            S2, =480.0
298F8C:  VDIV.F32        S0, S0, S2
298F90:  VMOV            R0, S0; this
298F94:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
298F98:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
298F9A:  VMOV            S0, R0
298F9E:  VCVT.F32.S32    S0, S0
298FA2:  VMOV            R0, S0; this
298FA6:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
298FAA:  MOV             R0, R5; this
298FAC:  MOVS            R1, #(stderr+1); unsigned __int16 *
298FAE:  MOVS            R2, #0; unsigned __int8
298FB0:  MOVS            R6, #0
298FB2:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
298FB6:  VMOV            S0, R4
298FBA:  VLDR            S2, =640.0
298FBE:  VMUL.F32        S0, S0, S16
298FC2:  VDIV.F32        S0, S0, S2
298FC6:  VMOV            S2, R0
298FCA:  VCMPE.F32       S2, S0
298FCE:  VMRS            APSR_nzcv, FPSCR
298FD2:  IT GT
298FD4:  MOVGT           R6, #1
298FD6:  MOV             R0, R6
298FD8:  VPOP            {D8}
298FDC:  POP.W           {R11}
298FE0:  POP             {R4-R7,PC}
