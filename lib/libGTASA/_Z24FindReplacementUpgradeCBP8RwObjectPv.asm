; =========================================================
; Game Engine Function: _Z24FindReplacementUpgradeCBP8RwObjectPv
; Address            : 0x58D1DC - 0x58D208
; =========================================================

58D1DC:  PUSH            {R4,R5,R7,LR}
58D1DE:  ADD             R7, SP, #8
58D1E0:  MOV             R4, R0
58D1E2:  MOV             R5, R1
58D1E4:  LDRB            R0, [R4]
58D1E6:  CMP             R0, #1
58D1E8:  BNE             loc_58D204
58D1EA:  MOV             R0, R4
58D1EC:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
58D1F0:  TST.W           R0, #0x800
58D1F4:  BNE             loc_58D204
58D1F6:  MOV             R0, R4
58D1F8:  BLX.W           j__ZN18CVisibilityPlugins17GetModelInfoIndexEP8RpAtomic; CVisibilityPlugins::GetModelInfoIndex(RpAtomic *)
58D1FC:  ADDS            R0, #1
58D1FE:  ITT NE
58D200:  STRNE           R4, [R5,#4]
58D202:  MOVNE           R4, #0
58D204:  MOV             R0, R4
58D206:  POP             {R4,R5,R7,PC}
