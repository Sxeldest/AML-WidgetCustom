; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorR7CEntityRS0_
; Address            : 0x4B04FE - 0x4B0528
; =========================================================

4B04FE:  PUSH            {R4-R7,LR}
4B0500:  ADD             R7, SP, #0xC
4B0502:  PUSH.W          {R11}
4B0506:  SUB             SP, SP, #0x30
4B0508:  MOV             R5, R0
4B050A:  MOV             R6, SP
4B050C:  LDR             R0, [R5,#8]; this
4B050E:  MOV             R4, R2
4B0510:  MOV             R2, R6; CEntity *
4B0512:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4B0516:  MOV             R0, R5; this
4B0518:  MOV             R1, R6; CVector *
4B051A:  MOV             R2, R4; CVector *
4B051C:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorPS1_RS0_; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CVector const&,CVector const*,CVector&)
4B0520:  ADD             SP, SP, #0x30 ; '0'
4B0522:  POP.W           {R11}
4B0526:  POP             {R4-R7,PC}
