; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf
; Address            : 0x4AEAC8 - 0x4AEAF0
; =========================================================

4AEAC8:  PUSH            {R4-R7,LR}
4AEACA:  ADD             R7, SP, #0xC
4AEACC:  PUSH.W          {R11}
4AEAD0:  SUB             SP, SP, #0x30; float *
4AEAD2:  MOV             R6, SP
4AEAD4:  MOV             R5, R2
4AEAD6:  MOV             R2, R6; CEntity *
4AEAD8:  MOV             R4, R3
4AEADA:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AEADE:  MOV             R1, R6; float
4AEAE0:  MOV             R2, R5; CVector *
4AEAE2:  MOV             R3, R4; CVector *
4AEAE4:  BLX             j__ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanesUncached(float,CVector const*,CVector*,float *)
4AEAE8:  ADD             SP, SP, #0x30 ; '0'
4AEAEA:  POP.W           {R11}
4AEAEE:  POP             {R4-R7,PC}
