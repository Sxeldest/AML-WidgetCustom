; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins18RenderFadingAtomicEP14CBaseModelInfoP8RpAtomici
; Address            : 0x5D4E30 - 0x5D4E8E
; =========================================================

5D4E30:  PUSH            {R4-R7,LR}
5D4E32:  ADD             R7, SP, #0xC
5D4E34:  PUSH.W          {R11}
5D4E38:  MOV             R4, R0
5D4E3A:  MOV             R6, R2
5D4E3C:  LDRB.W          R0, [R4,#0x28]
5D4E40:  MOV             R5, R1
5D4E42:  LSLS            R0, R0, #0x1D
5D4E44:  BPL             loc_5D4E4E
5D4E46:  MOVS            R0, #0xB
5D4E48:  MOVS            R1, #2
5D4E4A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5D4E4E:  VMOV            S0, R6
5D4E52:  VLDR            S2, =255.0
5D4E56:  VCVT.F32.S32    S0, S0
5D4E5A:  VDIV.F32        S0, S0, S2
5D4E5E:  VMOV            R0, S0; float
5D4E62:  BLX.W           j__Z23emu_EnableAlphaModulatef; emu_EnableAlphaModulate(float)
5D4E66:  MOV             R0, R5
5D4E68:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D4E6C:  BLX.W           j__Z24emu_DisableAlphaModulatev; emu_DisableAlphaModulate(void)
5D4E70:  LDRB.W          R0, [R4,#0x28]
5D4E74:  LSLS            R0, R0, #0x1D
5D4E76:  ITT PL
5D4E78:  POPPL.W         {R11}
5D4E7C:  POPPL           {R4-R7,PC}
5D4E7E:  MOVS            R0, #0xB
5D4E80:  MOVS            R1, #6
5D4E82:  POP.W           {R11}
5D4E86:  POP.W           {R4-R7,LR}
5D4E8A:  B.W             sub_192888
