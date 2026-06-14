; =========================================================
; Game Engine Function: sub_5B72E0
; Address            : 0x5B72E0 - 0x5B7302
; =========================================================

5B72E0:  PUSH            {R4,R6,R7,LR}
5B72E2:  ADD             R7, SP, #8
5B72E4:  MOV             R4, R0
5B72E6:  LDRB            R0, [R4,#2]
5B72E8:  LSLS            R0, R0, #0x1D
5B72EA:  BPL             loc_5B72FE
5B72EC:  LDR             R0, =(_ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr - 0x5B72F4)
5B72EE:  LDR             R1, [R4,#0x48]
5B72F0:  ADD             R0, PC; _ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr
5B72F2:  LDR             R0, [R0]; CVisibilityPlugins::RenderVehicleReallyLowDetailCB(RpAtomic *)
5B72F4:  CMP             R1, R0
5B72F6:  ITT NE
5B72F8:  MOVNE           R0, R4
5B72FA:  BLXNE.W         j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5B72FE:  MOV             R0, R4
5B7300:  POP             {R4,R6,R7,PC}
