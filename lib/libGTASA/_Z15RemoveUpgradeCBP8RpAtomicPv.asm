; =========================================================
; Game Engine Function: _Z15RemoveUpgradeCBP8RpAtomicPv
; Address            : 0x58D08C - 0x58D0E8
; =========================================================

58D08C:  PUSH            {R4-R7,LR}
58D08E:  ADD             R7, SP, #0xC
58D090:  PUSH.W          {R11}
58D094:  MOV             R5, R1
58D096:  MOV             R4, R0
58D098:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
58D09C:  TST.W           R0, #0x800
58D0A0:  BEQ             loc_58D0E0
58D0A2:  MOV             R0, R4
58D0A4:  BLX             j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
58D0A8:  LDRH            R1, [R0,#0x28]
58D0AA:  TST.W           R1, #0x100
58D0AE:  UBFX.W          R0, R1, #0xA, #5
58D0B2:  IT EQ
58D0B4:  CMPEQ           R0, R5
58D0B6:  BNE             loc_58D0E0
58D0B8:  MOV             R0, R4
58D0BA:  BLX             j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
58D0BE:  MOV             R5, R0
58D0C0:  LDR             R0, [R4,#0x3C]
58D0C2:  MOV             R1, R4
58D0C4:  LDR             R6, [R4,#4]
58D0C6:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
58D0CA:  MOV             R0, R4
58D0CC:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
58D0D0:  MOV             R0, R6
58D0D2:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
58D0D6:  CMP             R5, #0
58D0D8:  ITT NE
58D0DA:  MOVNE           R0, R5; this
58D0DC:  BLXNE           j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
58D0E0:  MOV             R0, R4
58D0E2:  POP.W           {R11}
58D0E6:  POP             {R4-R7,PC}
