; =========================================================
; Game Engine Function: _ZN4CPed19DoesLOSBulletHitPedER9CColPoint
; Address            : 0x4ACFD0 - 0x4AD050
; =========================================================

4ACFD0:  PUSH            {R4-R7,LR}
4ACFD2:  ADD             R7, SP, #0xC
4ACFD4:  PUSH.W          {R8}
4ACFD8:  SUB             SP, SP, #0x10
4ACFDA:  MOV             R5, R0
4ACFDC:  MOVS            R0, #0
4ACFDE:  STRD.W          R0, R0, [SP,#0x20+var_1C]
4ACFE2:  MOV             R8, R1
4ACFE4:  STR             R0, [SP,#0x20+var_14]
4ACFE6:  LDR             R0, [R5,#0x18]
4ACFE8:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4ACFEC:  MOV             R6, R0
4ACFEE:  LDR.W           R0, [R5,#0x49C]
4ACFF2:  LDR             R1, [R0,#0x14]
4ACFF4:  MOV             R0, R6
4ACFF6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4ACFFA:  MOV             R4, R0
4ACFFC:  MOV             R0, R6
4ACFFE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4AD002:  ADD.W           R3, R0, R4,LSL#6
4AD006:  ADD             R0, SP, #0x20+var_1C
4AD008:  MOVS            R2, #1
4AD00A:  MOVS            R4, #1
4AD00C:  MOV             R1, R0
4AD00E:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4AD012:  LDR.W           R0, [R5,#0x44C]
4AD016:  CMP             R0, #0x2A ; '*'
4AD018:  BEQ             loc_4AD046
4AD01A:  VLDR            S2, [SP,#0x20+var_14]
4AD01E:  VLDR            S0, [R8,#8]
4AD022:  VCMPE.F32       S0, S2
4AD026:  VMRS            APSR_nzcv, FPSCR
4AD02A:  BGE             loc_4AD030
4AD02C:  MOVS            R4, #1
4AD02E:  B               loc_4AD046
4AD030:  VLDR            S4, =0.2
4AD034:  MOVS            R4, #0
4AD036:  VADD.F32        S2, S2, S4
4AD03A:  VCMPE.F32       S0, S2
4AD03E:  VMRS            APSR_nzcv, FPSCR
4AD042:  IT LT
4AD044:  MOVLT           R4, #2
4AD046:  UXTB            R0, R4
4AD048:  ADD             SP, SP, #0x10
4AD04A:  POP.W           {R8}
4AD04E:  POP             {R4-R7,PC}
