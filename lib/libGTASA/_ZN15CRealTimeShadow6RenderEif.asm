; =========================================================
; Game Engine Function: _ZN15CRealTimeShadow6RenderEif
; Address            : 0x5B8170 - 0x5B81CE
; =========================================================

5B8170:  PUSH            {R4,R6,R7,LR}
5B8172:  ADD             R7, SP, #8
5B8174:  SUB             SP, SP, #0x10
5B8176:  MOV             R4, SP
5B8178:  BFC.W           R4, #0, #4
5B817C:  MOV             SP, R4
5B817E:  ASRS            R2, R1, #0x1F
5B8180:  VLDR            S4, =0.2
5B8184:  ADD.W           R2, R1, R2,LSR#30
5B8188:  BIC.W           R3, R2, #3
5B818C:  ASRS            R2, R2, #2
5B818E:  SUBS            R1, R1, R3
5B8190:  VMOV            S0, R2
5B8194:  VMOV            S2, R1
5B8198:  ADR             R1, dword_5B81D0
5B819A:  VCVT.F32.S32    S0, S0
5B819E:  VLD1.64         {D16-D17}, [R1@128]
5B81A2:  VCVT.F32.S32    S2, S2
5B81A6:  MOV             R1, SP
5B81A8:  VMUL.F32        S9, S0, S4
5B81AC:  VMUL.F32        S8, S2, S4
5B81B0:  VMOV.F32        S10, S8
5B81B4:  VMOV.F32        S11, S9
5B81B8:  VADD.F32        Q8, Q2, Q8
5B81BC:  VST1.64         {D16-D17}, [R1@128,#0x18+var_18]
5B81C0:  LDR             R0, [R0,#8]
5B81C2:  BLX.W           j__ZN13CShadowCamera18ShadowRasterRenderEP5RwV2d; CShadowCamera::ShadowRasterRender(RwV2d *)
5B81C6:  SUB.W           R4, R7, #-var_8
5B81CA:  MOV             SP, R4
5B81CC:  POP             {R4,R6,R7,PC}
