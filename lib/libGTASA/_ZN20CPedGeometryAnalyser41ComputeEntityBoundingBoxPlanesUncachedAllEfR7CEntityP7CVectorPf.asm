; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser41ComputeEntityBoundingBoxPlanesUncachedAllEfR7CEntityP7CVectorPf
; Address            : 0x4AEAF0 - 0x4AEB18
; =========================================================

4AEAF0:  PUSH            {R4-R7,LR}
4AEAF2:  ADD             R7, SP, #0xC
4AEAF4:  PUSH.W          {R11}
4AEAF8:  SUB             SP, SP, #0x30; float *
4AEAFA:  MOV             R6, SP
4AEAFC:  MOV             R5, R2
4AEAFE:  MOV             R2, R6; CEntity *
4AEB00:  MOV             R4, R3
4AEB02:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AEB06:  MOV             R1, R6; float
4AEB08:  MOV             R2, R5; CVector *
4AEB0A:  MOV             R3, R4; CVector *
4AEB0C:  BLX             j__ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanesUncached(float,CVector const*,CVector*,float *)
4AEB10:  ADD             SP, SP, #0x30 ; '0'
4AEB12:  POP.W           {R11}
4AEB16:  POP             {R4-R7,PC}
