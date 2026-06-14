; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins19RenderWheelAtomicCBEP8RpAtomic
; Address            : 0x5D4C38 - 0x5D4C46
; =========================================================

5D4C38:  PUSH            {R4,R6,R7,LR}
5D4C3A:  ADD             R7, SP, #8
5D4C3C:  MOV             R4, R0
5D4C3E:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D4C42:  MOV             R0, R4
5D4C44:  POP             {R4,R6,R7,PC}
