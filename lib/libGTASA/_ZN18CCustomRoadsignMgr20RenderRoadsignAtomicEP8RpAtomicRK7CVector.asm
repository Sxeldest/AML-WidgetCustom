; =========================================================
; Game Engine Function: _ZN18CCustomRoadsignMgr20RenderRoadsignAtomicEP8RpAtomicRK7CVector
; Address            : 0x5A60DC - 0x5A616A
; =========================================================

5A60DC:  PUSH            {R4,R6,R7,LR}
5A60DE:  ADD             R7, SP, #8
5A60E0:  MOV             R4, R0
5A60E2:  VLDR            S0, [R1]
5A60E6:  LDR             R0, [R4,#4]
5A60E8:  VLDR            D16, [R1,#4]
5A60EC:  VLDR            S2, [R0,#0x40]
5A60F0:  VLDR            D17, [R0,#0x44]
5A60F4:  VSUB.F32        S0, S0, S2
5A60F8:  VSUB.F32        D16, D16, D17
5A60FC:  VMUL.F32        D1, D16, D16
5A6100:  VMUL.F32        S0, S0, S0
5A6104:  VADD.F32        S0, S0, S2
5A6108:  VADD.F32        S0, S0, S3
5A610C:  VLDR            S2, =250000.0
5A6110:  VCMPE.F32       S0, S2
5A6114:  VMRS            APSR_nzcv, FPSCR
5A6118:  BGT             loc_5A6166
5A611A:  VLDR            S4, =1600.0
5A611E:  VCMPE.F32       S0, S4
5A6122:  VMRS            APSR_nzcv, FPSCR
5A6126:  BGE             loc_5A613A
5A6128:  MOVS            R0, #0x1E
5A612A:  MOVS            R1, #0x64 ; 'd'
5A612C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A6130:  LDR             R1, =(sub_5A5C28+1 - 0x5A613A)
5A6132:  MOVS            R2, #0xFF
5A6134:  LDR             R0, [R4,#0x18]
5A6136:  ADD             R1, PC; sub_5A5C28
5A6138:  B               loc_5A615C
5A613A:  VSUB.F32        S0, S2, S0
5A613E:  VLDR            S2, =248400.0
5A6142:  LDR             R0, [R4,#0x18]
5A6144:  LDR             R1, =(sub_5A5C28+1 - 0x5A614A)
5A6146:  ADD             R1, PC; sub_5A5C28
5A6148:  VDIV.F32        S0, S0, S2
5A614C:  VLDR            S2, =254.0
5A6150:  VMUL.F32        S0, S0, S2
5A6154:  VCVT.U32.F32    S0, S0
5A6158:  VMOV            R2, S0
5A615C:  BLX.W           j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
5A6160:  LDR             R1, [R4,#0x48]
5A6162:  MOV             R0, R4
5A6164:  BLX             R1
5A6166:  MOV             R0, R4
5A6168:  POP             {R4,R6,R7,PC}
