; =========================================================
; Game Engine Function: _Z19RpGeometryTransformP10RpGeometryPK11RwMatrixTag
; Address            : 0x2157C8 - 0x21585E
; =========================================================

2157C8:  PUSH            {R4-R7,LR}
2157CA:  ADD             R7, SP, #0xC
2157CC:  PUSH.W          {R8-R10}
2157D0:  MOV             R9, R0
2157D2:  MOV             R8, R1
2157D4:  LDRH.W          R0, [R9,#0xC]
2157D8:  CMP.W           R9, #0
2157DC:  ORR.W           R0, R0, #6
2157E0:  STRH.W          R0, [R9,#0xC]
2157E4:  BEQ             loc_215852
2157E6:  LDR.W           R0, [R9,#0x18]
2157EA:  CMP             R0, #1
2157EC:  BLT             loc_215844
2157EE:  MOVS            R4, #0
2157F0:  LDR.W           R0, [R9,#0x60]
2157F4:  RSB.W           R1, R4, R4,LSL#3
2157F8:  LDR.W           R2, [R9,#0x14]
2157FC:  MOV             R3, R8
2157FE:  ADD.W           R10, R0, R1,LSL#2
215802:  LDRD.W          R0, R5, [R10,#0x14]
215806:  MOV             R1, R0
215808:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
21580C:  CBZ             R5, loc_215830
21580E:  LDR.W           R2, [R9,#0x14]
215812:  MOV             R0, R5
215814:  MOV             R1, R5
215816:  MOV             R3, R8
215818:  BLX             j__Z21RwV3dTransformVectorsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformVectors(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
21581C:  LDR.W           R6, [R9,#0x14]
215820:  CBZ             R6, loc_215830
215822:  MOV             R0, R5
215824:  MOV             R1, R5
215826:  BLX             j__Z15_rwV3dNormalizeP5RwV3dPKS_; _rwV3dNormalize(RwV3d *,RwV3d const*)
21582A:  ADDS            R5, #0xC
21582C:  SUBS            R6, #1
21582E:  BNE             loc_215822
215830:  ADD.W           R1, R10, #4
215834:  MOV             R0, R10
215836:  BLX             j__Z31RpMorphTargetCalcBoundingSpherePK13RpMorphTargetP8RwSphere; RpMorphTargetCalcBoundingSphere(RpMorphTarget const*,RwSphere *)
21583A:  LDR.W           R0, [R9,#0x18]
21583E:  ADDS            R4, #1
215840:  CMP             R4, R0
215842:  BLT             loc_2157F0
215844:  MOV             R0, R9
215846:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
21584A:  CBNZ            R0, loc_215856
21584C:  MOV             R0, R9
21584E:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
215852:  MOV.W           R9, #0
215856:  MOV             R0, R9
215858:  POP.W           {R8-R10}
21585C:  POP             {R4-R7,PC}
