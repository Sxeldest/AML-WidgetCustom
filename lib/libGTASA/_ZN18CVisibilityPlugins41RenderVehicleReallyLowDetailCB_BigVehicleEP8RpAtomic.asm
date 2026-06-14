; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins41RenderVehicleReallyLowDetailCB_BigVehicleEP8RpAtomic
; Address            : 0x5D5A5C - 0x5D5A8A
; =========================================================

5D5A5C:  PUSH            {R4,R6,R7,LR}
5D5A5E:  ADD             R7, SP, #8
5D5A60:  LDR             R1, =(gVehicleDistanceFromCamera_ptr - 0x5D5A6A)
5D5A62:  MOV             R4, R0
5D5A64:  LDR             R0, =(_ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr - 0x5D5A6C)
5D5A66:  ADD             R1, PC; gVehicleDistanceFromCamera_ptr
5D5A68:  ADD             R0, PC; _ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr
5D5A6A:  LDR             R1, [R1]; gVehicleDistanceFromCamera
5D5A6C:  LDR             R0, [R0]; CVisibilityPlugins::ms_bigVehicleLod0Dist ...
5D5A6E:  VLDR            S2, [R1]
5D5A72:  VLDR            S0, [R0]
5D5A76:  VCMPE.F32       S2, S0
5D5A7A:  VMRS            APSR_nzcv, FPSCR
5D5A7E:  ITT GE
5D5A80:  MOVGE           R0, R4
5D5A82:  BLXGE.W         j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D5A86:  MOV             R0, R4
5D5A88:  POP             {R4,R6,R7,PC}
