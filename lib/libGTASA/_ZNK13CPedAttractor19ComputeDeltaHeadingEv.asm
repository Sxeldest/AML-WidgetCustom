; =========================================================
; Game Engine Function: _ZNK13CPedAttractor19ComputeDeltaHeadingEv
; Address            : 0x4A8CA4 - 0x4A8CDA
; =========================================================

4A8CA4:  PUSH            {R7,LR}
4A8CA6:  MOV             R7, SP
4A8CA8:  VPUSH           {D8}
4A8CAC:  VLDR            S16, [R0,#0x4C]
4A8CB0:  BLX             rand
4A8CB4:  VMOV            S0, R0
4A8CB8:  VLDR            S2, =4.6566e-10
4A8CBC:  VADD.F32        S4, S16, S16
4A8CC0:  VCVT.F32.S32    S0, S0
4A8CC4:  VMUL.F32        S0, S0, S2
4A8CC8:  VMUL.F32        S0, S4, S0
4A8CCC:  VSUB.F32        S0, S0, S16
4A8CD0:  VMOV            R0, S0
4A8CD4:  VPOP            {D8}
4A8CD8:  POP             {R7,PC}
