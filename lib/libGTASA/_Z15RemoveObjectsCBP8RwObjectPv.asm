; =========================================================
; Game Engine Function: _Z15RemoveObjectsCBP8RwObjectPv
; Address            : 0x58D116 - 0x58D170
; =========================================================

58D116:  PUSH            {R4-R7,LR}
58D118:  ADD             R7, SP, #0xC
58D11A:  PUSH.W          {R11}
58D11E:  MOV             R4, R0
58D120:  MOV             R5, R1
58D122:  LDRB            R0, [R4]
58D124:  CMP             R0, #1
58D126:  BNE             loc_58D168
58D128:  MOV             R0, R4
58D12A:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
58D12E:  TST.W           R0, #0x800
58D132:  STR             R0, [R5]
58D134:  BNE             loc_58D168
58D136:  MOV             R0, R4
58D138:  BLX             j__ZN18CVisibilityPlugins12GetModelInfoEP8RpAtomic; CVisibilityPlugins::GetModelInfo(RpAtomic *)
58D13C:  MOV             R5, R0
58D13E:  LDR             R0, [R4,#0x3C]
58D140:  MOV             R1, R4
58D142:  LDR             R6, [R4,#4]
58D144:  BLX             j__Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic; RpClumpRemoveAtomic(RpClump *,RpAtomic *)
58D148:  MOV             R0, R4
58D14A:  BLX.W           j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
58D14E:  MOV             R0, R6
58D150:  BLX             j__ZN18CVisibilityPlugins19GetFrameHierarchyIdEP7RwFrame; CVisibilityPlugins::GetFrameHierarchyId(RwFrame *)
58D154:  CMP             R0, #0
58D156:  ITT EQ
58D158:  MOVEQ           R0, R6
58D15A:  BLXEQ.W         j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
58D15E:  CMP             R5, #0
58D160:  ITT NE
58D162:  MOVNE           R0, R5; this
58D164:  BLXNE           j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
58D168:  MOV             R0, R4
58D16A:  POP.W           {R11}
58D16E:  POP             {R4-R7,PC}
