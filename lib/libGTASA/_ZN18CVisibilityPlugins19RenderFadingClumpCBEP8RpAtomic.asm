; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19RenderFadingClumpCBEP8RpAtomic
; Address            : 0x5D6100 - 0x5D6148
; =========================================================

5D6100:  PUSH            {R4,R6,R7,LR}
5D6102:  ADD             R7, SP, #8
5D6104:  MOV             R4, R0
5D6106:  LDR             R0, =(_ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr - 0x5D610E)
5D6108:  LDR             R1, [R4,#0x3C]
5D610A:  ADD             R0, PC; _ZN18CVisibilityPlugins20ms_clumpPluginOffsetE_ptr
5D610C:  LDR             R0, [R0]; CVisibilityPlugins::ms_clumpPluginOffset ...
5D610E:  LDR             R0, [R0]; CVisibilityPlugins::ms_clumpPluginOffset
5D6110:  ADD             R0, R1
5D6112:  LDR             R0, [R0,#4]
5D6114:  CMP             R0, #0xFF
5D6116:  BNE             loc_5D6122
5D6118:  MOV             R0, R4
5D611A:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D611E:  MOV             R0, R4
5D6120:  POP             {R4,R6,R7,PC}
5D6122:  VMOV            S0, R0
5D6126:  VLDR            S2, =255.0
5D612A:  VCVT.F32.S32    S0, S0
5D612E:  VDIV.F32        S0, S0, S2
5D6132:  VMOV            R0, S0; float
5D6136:  BLX.W           j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
5D613A:  MOV             R0, R4
5D613C:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D6140:  BLX.W           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
5D6144:  MOV             R0, R4
5D6146:  POP             {R4,R6,R7,PC}
