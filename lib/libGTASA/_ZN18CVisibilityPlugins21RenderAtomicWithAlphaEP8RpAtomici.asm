; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins21RenderAtomicWithAlphaEP8RpAtomici
; Address            : 0x5D4CFC - 0x5D4D28
; =========================================================

5D4CFC:  PUSH            {R4,R6,R7,LR}
5D4CFE:  ADD             R7, SP, #8
5D4D00:  VMOV            S0, R1
5D4D04:  VLDR            S2, =255.0
5D4D08:  MOV             R4, R0
5D4D0A:  VCVT.F32.S32    S0, S0
5D4D0E:  VDIV.F32        S0, S0, S2
5D4D12:  VMOV            R0, S0; float
5D4D16:  BLX.W           j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
5D4D1A:  MOV             R0, R4
5D4D1C:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D4D20:  POP.W           {R4,R6,R7,LR}
5D4D24:  B.W             sub_18F860
