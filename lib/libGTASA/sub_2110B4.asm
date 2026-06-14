; =========================================================
; Game Engine Function: sub_2110B4
; Address            : 0x2110B4 - 0x211134
; =========================================================

2110B4:  PUSH            {R4,R5,R7,LR}
2110B6:  ADD             R7, SP, #8
2110B8:  MOV             R5, R1
2110BA:  MOV             R4, R0
2110BC:  VLDR            S0, [R5]
2110C0:  VLDR            S2, [R5,#0x14]
2110C4:  VLDR            S4, [R5,#0x28]
2110C8:  VADD.F32        S0, S0, S2
2110CC:  VMOV.F32        S2, #1.0
2110D0:  VSUB.F32        S0, S4, S0
2110D4:  VADD.F32        S0, S0, S2
2110D8:  VMOV            R0, S0; float
2110DC:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
2110E0:  VMOV.F32        S0, #0.5
2110E4:  VMOV            S2, R0
2110E8:  MOV             R0, R4
2110EA:  VDIV.F32        S4, S0, S2
2110EE:  VMUL.F32        S0, S2, S0
2110F2:  VSTR            S0, [R4,#8]
2110F6:  VLDR            S0, [R5,#4]
2110FA:  VLDR            S2, [R5,#0x10]
2110FE:  VSUB.F32        S0, S0, S2
211102:  VMUL.F32        S0, S4, S0
211106:  VSTR            S0, [R4,#0xC]
21110A:  VLDR            S0, [R5,#8]
21110E:  VLDR            S2, [R5,#0x20]
211112:  VADD.F32        S0, S2, S0
211116:  VMUL.F32        S0, S4, S0
21111A:  VSTR            S0, [R4]
21111E:  VLDR            S0, [R5,#0x18]
211122:  VLDR            S2, [R5,#0x24]
211126:  VADD.F32        S0, S2, S0
21112A:  VMUL.F32        S0, S4, S0
21112E:  VSTR            S0, [R4,#4]
211132:  POP             {R4,R5,R7,PC}
