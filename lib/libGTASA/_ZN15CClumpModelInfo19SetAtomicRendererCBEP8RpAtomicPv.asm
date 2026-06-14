; =========================================================
; Game Engine Function: _ZN15CClumpModelInfo19SetAtomicRendererCBEP8RpAtomicPv
; Address            : 0x385576 - 0x385584
; =========================================================

385576:  PUSH            {R4,R6,R7,LR}
385578:  ADD             R7, SP, #8
38557A:  MOV             R4, R0
38557C:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
385580:  MOV             R0, R4
385582:  POP             {R4,R6,R7,PC}
