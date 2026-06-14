; =========================================================
; Game Engine Function: _Z28SetVehicleAtomicVisibilityCBP8RwObjectPv
; Address            : 0x5886CC - 0x5886F6
; =========================================================

5886CC:  PUSH            {R4,R5,R7,LR}
5886CE:  ADD             R7, SP, #8
5886D0:  MOV             R5, R1
5886D2:  MOV             R4, R0
5886D4:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
5886D8:  TST.W           R0, #3
5886DC:  BEQ             loc_5886F2
5886DE:  MOV             R0, R4
5886E0:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
5886E4:  AND.W           R0, R0, #3
5886E8:  MOVS            R1, #0
5886EA:  CMP             R0, R5
5886EC:  IT EQ
5886EE:  MOVEQ           R1, #4
5886F0:  STRB            R1, [R4,#2]
5886F2:  MOV             R0, R4
5886F4:  POP             {R4,R5,R7,PC}
