; =========================================================
; Game Engine Function: _ZN4CPed17IsPedHeadAbovePosEf
; Address            : 0x4AD054 - 0x4AD0C6
; =========================================================

4AD054:  PUSH            {R4-R7,LR}
4AD056:  ADD             R7, SP, #0xC
4AD058:  PUSH.W          {R8,R9,R11}
4AD05C:  SUB             SP, SP, #0x10
4AD05E:  MOVS            R4, #0
4AD060:  MOV             R5, R0
4AD062:  STRD.W          R4, R4, [SP,#0x28+var_24]
4AD066:  MOV             R8, R1
4AD068:  STR             R4, [SP,#0x28+var_1C]
4AD06A:  LDR             R0, [R5,#0x18]
4AD06C:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
4AD070:  MOV             R6, R0
4AD072:  LDR.W           R0, [R5,#0x49C]
4AD076:  LDR             R1, [R0,#0x14]
4AD078:  MOV             R0, R6
4AD07A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
4AD07E:  MOV             R9, R0
4AD080:  MOV             R0, R6
4AD082:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
4AD086:  ADD.W           R3, R0, R9,LSL#6
4AD08A:  ADD             R0, SP, #0x28+var_24
4AD08C:  MOVS            R2, #1
4AD08E:  MOV             R1, R0
4AD090:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
4AD094:  LDR             R0, [R5,#0x14]
4AD096:  VMOV            S0, R8
4AD09A:  ADD.W           R1, R0, #0x30 ; '0'
4AD09E:  CMP             R0, #0
4AD0A0:  IT EQ
4AD0A2:  ADDEQ           R1, R5, #4
4AD0A4:  VLDR            S2, [R1,#8]
4AD0A8:  VADD.F32        S0, S2, S0
4AD0AC:  VLDR            S2, [SP,#0x28+var_1C]
4AD0B0:  VCMPE.F32       S2, S0
4AD0B4:  VMRS            APSR_nzcv, FPSCR
4AD0B8:  IT GT
4AD0BA:  MOVGT           R4, #1
4AD0BC:  MOV             R0, R4
4AD0BE:  ADD             SP, SP, #0x10
4AD0C0:  POP.W           {R8,R9,R11}
4AD0C4:  POP             {R4-R7,PC}
