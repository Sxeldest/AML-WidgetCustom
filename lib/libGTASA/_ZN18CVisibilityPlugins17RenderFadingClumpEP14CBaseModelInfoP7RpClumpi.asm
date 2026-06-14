; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins17RenderFadingClumpEP14CBaseModelInfoP7RpClumpi
; Address            : 0x5D4ECC - 0x5D4F0A
; =========================================================

5D4ECC:  PUSH            {R4,R5,R7,LR}
5D4ECE:  ADD             R7, SP, #8
5D4ED0:  SUB             SP, SP, #8
5D4ED2:  MOV             R4, R0
5D4ED4:  STR             R2, [SP,#0x10+var_C]
5D4ED6:  LDRB.W          R0, [R4,#0x28]
5D4EDA:  MOV             R5, R1
5D4EDC:  LSLS            R0, R0, #0x1D
5D4EDE:  BPL             loc_5D4EE8
5D4EE0:  MOVS            R0, #0xB
5D4EE2:  MOVS            R1, #2
5D4EE4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D4EE8:  LDR             R0, =(_ZN18CVisibilityPlugins23RenderAtomicWithAlphaCBEP8RpAtomicPv_ptr - 0x5D4EF0)
5D4EEA:  ADD             R2, SP, #0x10+var_C
5D4EEC:  ADD             R0, PC; _ZN18CVisibilityPlugins23RenderAtomicWithAlphaCBEP8RpAtomicPv_ptr
5D4EEE:  LDR             R1, [R0]; CVisibilityPlugins::RenderAtomicWithAlphaCB(RpAtomic *,void *)
5D4EF0:  MOV             R0, R5
5D4EF2:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D4EF6:  LDRB.W          R0, [R4,#0x28]
5D4EFA:  LSLS            R0, R0, #0x1D
5D4EFC:  BPL             loc_5D4F06
5D4EFE:  MOVS            R0, #0xB
5D4F00:  MOVS            R1, #6
5D4F02:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D4F06:  ADD             SP, SP, #8
5D4F08:  POP             {R4,R5,R7,PC}
