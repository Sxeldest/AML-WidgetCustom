; =========================================================
; Game Engine Function: sub_211034
; Address            : 0x211034 - 0x2110B4
; =========================================================

211034:  PUSH            {R4,R5,R7,LR}
211036:  ADD             R7, SP, #8
211038:  MOV             R5, R1
21103A:  MOV             R4, R0
21103C:  VLDR            S2, [R5,#0x14]
211040:  VLDR            S4, [R5,#0x28]
211044:  VLDR            S0, [R5]
211048:  VADD.F32        S2, S2, S4
21104C:  VMOV.F32        S4, #1.0
211050:  VSUB.F32        S0, S0, S2
211054:  VADD.F32        S0, S0, S4
211058:  VMOV            R0, S0; float
21105C:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
211060:  VMOV.F32        S0, #0.5
211064:  VMOV            S2, R0
211068:  MOV             R0, R4
21106A:  VDIV.F32        S4, S0, S2
21106E:  VMUL.F32        S0, S2, S0
211072:  VSTR            S0, [R4]
211076:  VLDR            S0, [R5,#0x18]
21107A:  VLDR            S2, [R5,#0x24]
21107E:  VSUB.F32        S0, S0, S2
211082:  VMUL.F32        S0, S4, S0
211086:  VSTR            S0, [R4,#0xC]
21108A:  VLDR            S0, [R5,#4]
21108E:  VLDR            S2, [R5,#0x10]
211092:  VADD.F32        S0, S0, S2
211096:  VMUL.F32        S0, S4, S0
21109A:  VSTR            S0, [R4,#4]
21109E:  VLDR            S0, [R5,#8]
2110A2:  VLDR            S2, [R5,#0x20]
2110A6:  VADD.F32        S0, S0, S2
2110AA:  VMUL.F32        S0, S4, S0
2110AE:  VSTR            S0, [R4,#8]
2110B2:  POP             {R4,R5,R7,PC}
