; =========================================================
; Game Engine Function: _Z27RtQuatSetupSlerpArgandCacheP6RtQuatS0_P22RtQuatSlerpArgandCache
; Address            : 0x211EAC - 0x212006
; =========================================================

211EAC:  PUSH            {R4,R5,R7,LR}
211EAE:  ADD             R7, SP, #8
211EB0:  VPUSH           {D8-D12}
211EB4:  MOV             R5, R0
211EB6:  VLDR            S16, [R1]
211EBA:  VLDR            S0, [R5]
211EBE:  MOV             R4, R2
211EC0:  VLDR            S18, [R1,#4]
211EC4:  VLDR            S2, [R5,#4]
211EC8:  VMUL.F32        S0, S0, S16
211ECC:  VLDR            S20, [R1,#8]
211ED0:  VMUL.F32        S2, S2, S18
211ED4:  VLDR            S4, [R5,#8]
211ED8:  VLDR            S22, [R1,#0xC]
211EDC:  VMUL.F32        S4, S4, S20
211EE0:  VLDR            S6, [R5,#0xC]
211EE4:  VADD.F32        S0, S0, S2
211EE8:  VMUL.F32        S2, S6, S22
211EEC:  VADD.F32        S0, S0, S4
211EF0:  VADD.F32        S0, S0, S2
211EF4:  VCMPE.F32       S0, #0.0
211EF8:  VMRS            APSR_nzcv, FPSCR
211EFC:  ITTTT LT
211EFE:  VNEGLT.F32      S20, S20
211F02:  VNEGLT.F32      S18, S18
211F06:  VNEGLT.F32      S16, S16
211F0A:  VNEGLT.F32      S22, S22
211F0E:  VMUL.F32        S0, S18, S18
211F12:  VMUL.F32        S2, S16, S16
211F16:  VMUL.F32        S4, S20, S20
211F1A:  VADD.F32        S0, S2, S0
211F1E:  VADD.F32        S0, S0, S4
211F22:  VMOV            R0, S0; float
211F26:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211F2A:  VMOV            R1, S22; x
211F2E:  VMOV            S22, R0; y
211F32:  BLX             atan2f
211F36:  VMOV            S0, R0
211F3A:  VLDR            S24, =0.0
211F3E:  VCMPE.F32       S22, #0.0
211F42:  MOVS            R0, #0
211F44:  VDIV.F32        S0, S0, S22
211F48:  VMRS            APSR_nzcv, FPSCR
211F4C:  VMOV.F32        S2, S24
211F50:  IT GT
211F52:  VMOVGT.F32      S2, S0
211F56:  STR             R0, [R4,#0xC]
211F58:  VMUL.F32        S0, S16, S2
211F5C:  VMUL.F32        S4, S18, S2
211F60:  VMUL.F32        S2, S20, S2
211F64:  VSTR            S0, [R4]
211F68:  VSTR            S4, [R4,#4]
211F6C:  VSTR            S2, [R4,#8]
211F70:  VLDR            S0, [R5]
211F74:  VLDR            S2, [R5,#4]
211F78:  VMUL.F32        S0, S0, S0
211F7C:  VLDR            S4, [R5,#8]
211F80:  VMUL.F32        S2, S2, S2
211F84:  VMUL.F32        S4, S4, S4
211F88:  VADD.F32        S0, S0, S2
211F8C:  VADD.F32        S0, S0, S4
211F90:  VMOV            R0, S0; float
211F94:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211F98:  LDR             R1, [R5,#0xC]; x
211F9A:  VMOV            S16, R0; y
211F9E:  BLX             atan2f
211FA2:  VMOV            S0, R0
211FA6:  VCMPE.F32       S16, #0.0
211FAA:  VDIV.F32        S0, S0, S16
211FAE:  VMRS            APSR_nzcv, FPSCR
211FB2:  IT GT
211FB4:  VMOVGT.F32      S24, S0
211FB8:  VLDR            S0, [R5]
211FBC:  VMUL.F32        S0, S0, S24
211FC0:  VSTR            S0, [R4,#0x10]
211FC4:  VLDR            S2, [R5,#4]
211FC8:  VMUL.F32        S2, S24, S2
211FCC:  VSTR            S2, [R4,#0x14]
211FD0:  VLDR            S4, [R5,#8]
211FD4:  VLDR            S6, [R4]
211FD8:  VMUL.F32        S4, S24, S4
211FDC:  VLDR            S8, [R4,#4]
211FE0:  VLDR            S10, [R4,#8]
211FE4:  VSUB.F32        S0, S6, S0
211FE8:  VSUB.F32        S2, S8, S2
211FEC:  LDR             R0, [R4,#0xC]
211FEE:  STR             R0, [R4,#0x1C]
211FF0:  VSUB.F32        S4, S10, S4
211FF4:  VSTR            S0, [R4,#0x10]
211FF8:  VSTR            S2, [R4,#0x14]
211FFC:  VSTR            S4, [R4,#0x18]
212000:  VPOP            {D8-D12}
212004:  POP             {R4,R5,R7,PC}
