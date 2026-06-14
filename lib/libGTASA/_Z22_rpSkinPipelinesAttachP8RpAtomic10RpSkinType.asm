; =========================================================
; Game Engine Function: _Z22_rpSkinPipelinesAttachP8RpAtomic10RpSkinType
; Address            : 0x1C8718 - 0x1C8752
; =========================================================

1C8718:  PUSH            {R4,R6,R7,LR}
1C871A:  ADD             R7, SP, #8
1C871C:  MOV             R4, R0
1C871E:  CMP             R1, #1
1C8720:  BEQ             loc_1C873E
1C8722:  CMP             R1, #2
1C8724:  BEQ             loc_1C873A
1C8726:  MOV.W           R0, #0x120; unsigned int
1C872A:  BLX             j__Z23RpAtomicGetPluginOffsetj; RpAtomicGetPluginOffset(uint)
1C872E:  CMP             R0, #1
1C8730:  BLT             loc_1C873E
1C8732:  MOV             R0, R4
1C8734:  BLX             j__Z25RpMatFXAtomicQueryEffectsP8RpAtomic; RpMatFXAtomicQueryEffects(RpAtomic *)
1C8738:  CBZ             R0, loc_1C873E
1C873A:  MOVS            R0, #1
1C873C:  B               loc_1C8740
1C873E:  MOVS            R0, #0
1C8740:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C8746)
1C8742:  ADD             R1, PC; _rpSkinGlobals_ptr
1C8744:  LDR             R1, [R1]; _rpSkinGlobals
1C8746:  ADD.W           R0, R1, R0,LSL#2
1C874A:  LDR             R0, [R0,#0x24]
1C874C:  STR             R0, [R4,#0x6C]
1C874E:  MOV             R0, R4
1C8750:  POP             {R4,R6,R7,PC}
