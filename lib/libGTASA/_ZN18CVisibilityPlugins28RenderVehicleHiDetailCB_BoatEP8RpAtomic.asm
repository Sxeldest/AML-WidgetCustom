; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins28RenderVehicleHiDetailCB_BoatEP8RpAtomic
; Address            : 0x5D5E14 - 0x5D5E6C
; =========================================================

5D5E14:  PUSH            {R4,R6,R7,LR}
5D5E16:  ADD             R7, SP, #8
5D5E18:  LDR             R1, =(_ZN18CVisibilityPlugins18ms_vehicleLod0DistE_ptr - 0x5D5E22)
5D5E1A:  MOV             R4, R0
5D5E1C:  LDR             R0, =(gVehicleDistanceFromCamera_ptr - 0x5D5E24)
5D5E1E:  ADD             R1, PC; _ZN18CVisibilityPlugins18ms_vehicleLod0DistE_ptr
5D5E20:  ADD             R0, PC; gVehicleDistanceFromCamera_ptr
5D5E22:  LDR             R1, [R1]; CVisibilityPlugins::ms_vehicleLod0Dist ...
5D5E24:  LDR             R0, [R0]; gVehicleDistanceFromCamera
5D5E26:  VLDR            S2, [R1]
5D5E2A:  VLDR            S0, [R0]
5D5E2E:  VCMPE.F32       S0, S2
5D5E32:  VMRS            APSR_nzcv, FPSCR
5D5E36:  BGE             loc_5D5E68
5D5E38:  LDR             R1, =(_ZN18CVisibilityPlugins33ms_vehicleLod0RenderMultiPassDistE_ptr - 0x5D5E40)
5D5E3A:  LDR             R0, =(_ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr - 0x5D5E42)
5D5E3C:  ADD             R1, PC; _ZN18CVisibilityPlugins33ms_vehicleLod0RenderMultiPassDistE_ptr
5D5E3E:  ADD             R0, PC; _ZN18CVisibilityPlugins21ms_atomicPluginOffsetE_ptr
5D5E40:  LDR             R1, [R1]; CVisibilityPlugins::ms_vehicleLod0RenderMultiPassDist ...
5D5E42:  LDR             R0, [R0]; CVisibilityPlugins::ms_atomicPluginOffset ...
5D5E44:  VLDR            S2, [R1]
5D5E48:  LDR             R0, [R0]; CVisibilityPlugins::ms_atomicPluginOffset
5D5E4A:  VCMPE.F32       S2, S0
5D5E4E:  VMRS            APSR_nzcv, FPSCR
5D5E52:  ADD             R0, R4
5D5E54:  LDRH            R2, [R0,#2]
5D5E56:  ORR.W           R1, R2, #0x2000
5D5E5A:  IT GT
5D5E5C:  BICGT.W         R1, R2, #0x2000
5D5E60:  STRH            R1, [R0,#2]
5D5E62:  MOV             R0, R4
5D5E64:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D5E68:  MOV             R0, R4
5D5E6A:  POP             {R4,R6,R7,PC}
