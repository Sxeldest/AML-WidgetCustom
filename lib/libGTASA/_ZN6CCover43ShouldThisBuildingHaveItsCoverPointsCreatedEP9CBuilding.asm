; =========================================================
; Game Engine Function: _ZN6CCover43ShouldThisBuildingHaveItsCoverPointsCreatedEP9CBuilding
; Address            : 0x4D579C - 0x4D5810
; =========================================================

4D579C:  PUSH            {R4,R6,R7,LR}
4D579E:  ADD             R7, SP, #8
4D57A0:  SUB             SP, SP, #0x18
4D57A2:  MOV             R4, R0
4D57A4:  ADD             R0, SP, #0x20+var_14; this
4D57A6:  MOV             R1, R4
4D57A8:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
4D57AC:  MOV             R0, SP; int
4D57AE:  MOV.W           R1, #0xFFFFFFFF
4D57B2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
4D57B6:  VLDR            S0, [SP,#0x20+var_20]
4D57BA:  VLDR            S2, [SP,#0x20+var_14]
4D57BE:  VLDR            D16, [SP,#0x20+var_1C]
4D57C2:  VSUB.F32        S0, S2, S0
4D57C6:  VLDR            D17, [SP,#0x20+var_10]
4D57CA:  VSUB.F32        D16, D17, D16
4D57CE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D57D8)
4D57D0:  LDRSH.W         R1, [R4,#0x26]
4D57D4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D57D6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D57D8:  VMUL.F32        D1, D16, D16
4D57DC:  VMUL.F32        S0, S0, S0
4D57E0:  LDR.W           R0, [R0,R1,LSL#2]
4D57E4:  LDR             R0, [R0,#0x2C]
4D57E6:  VADD.F32        S0, S0, S2
4D57EA:  VLDR            S4, [R0,#0x24]
4D57EE:  MOVS            R0, #0
4D57F0:  VADD.F32        S0, S0, S3
4D57F4:  VMOV.F32        S2, #30.0
4D57F8:  VSQRT.F32       S0, S0
4D57FC:  VADD.F32        S2, S4, S2
4D5800:  VCMPE.F32       S0, S2
4D5804:  VMRS            APSR_nzcv, FPSCR
4D5808:  IT LT
4D580A:  MOVLT           R0, #1
4D580C:  ADD             SP, SP, #0x18
4D580E:  POP             {R4,R6,R7,PC}
