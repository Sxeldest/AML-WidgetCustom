; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins28GetDistanceSquaredFromCameraEP7RwFrame
; Address            : 0x5D4BF0 - 0x5D4C2E
; =========================================================

5D4BF0:  PUSH            {R7,LR}
5D4BF2:  MOV             R7, SP
5D4BF4:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D4BF8:  LDR             R1, =(_ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr - 0x5D4C02)
5D4BFA:  VLDR            S0, [R0,#0x30]
5D4BFE:  ADD             R1, PC; _ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr
5D4C00:  VLDR            D16, [R0,#0x34]
5D4C04:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn ...
5D4C06:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn
5D4C08:  VLDR            S2, [R1]
5D4C0C:  VLDR            D17, [R1,#4]
5D4C10:  VSUB.F32        S0, S0, S2
5D4C14:  VSUB.F32        D16, D16, D17
5D4C18:  VMUL.F32        D1, D16, D16
5D4C1C:  VMUL.F32        S0, S0, S0
5D4C20:  VADD.F32        S0, S0, S2
5D4C24:  VADD.F32        S0, S0, S3
5D4C28:  VMOV            R0, S0
5D4C2C:  POP             {R7,PC}
