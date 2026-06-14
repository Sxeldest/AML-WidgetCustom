; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity
; Address            : 0x4AE064 - 0x4AE21E
; =========================================================

4AE064:  PUSH            {R4,R6,R7,LR}
4AE066:  ADD             R7, SP, #8
4AE068:  VPUSH           {D8-D12}
4AE06C:  SUB             SP, SP, #0x30
4AE06E:  MOV             R4, R0
4AE070:  MOV             R2, SP; CEntity *
4AE072:  LDR             R0, [R4,#8]; this
4AE074:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AE078:  VLDR            S0, =0.0
4AE07C:  VMOV.F32        S14, #0.25
4AE080:  VLDR            S1, [SP,#0x60+var_60]
4AE084:  MOVS            R0, #0
4AE086:  VLDR            S7, [SP,#0x60+var_5C]
4AE08A:  VADD.F32        S4, S1, S0
4AE08E:  VLDR            S3, [SP,#0x60+var_54]
4AE092:  VADD.F32        S2, S7, S0
4AE096:  VLDR            S5, [SP,#0x60+var_50]
4AE09A:  VLDR            S10, [SP,#0x60+var_38]
4AE09E:  VLDR            S12, [SP,#0x60+var_3C]
4AE0A2:  VLDR            S22, [SP,#0x60+var_34]
4AE0A6:  VLDR            S24, [R4,#8]
4AE0AA:  VLDR            S11, [SP,#0x60+var_58]
4AE0AE:  VADD.F32        S8, S4, S3
4AE0B2:  VLDR            S4, [SP,#0x60+var_48]
4AE0B6:  VADD.F32        S6, S2, S5
4AE0BA:  VLDR            S2, [SP,#0x60+var_44]
4AE0BE:  VMUL.F32        S11, S11, S0
4AE0C2:  VADD.F32        S8, S8, S4
4AE0C6:  VADD.F32        S6, S6, S2
4AE0CA:  VADD.F32        S9, S8, S12
4AE0CE:  VADD.F32        S6, S6, S10
4AE0D2:  VMUL.F32        S8, S6, S14
4AE0D6:  VMUL.F32        S6, S9, S14
4AE0DA:  VLDR            S9, [SP,#0x60+var_4C]
4AE0DE:  VLDR            S14, [SP,#0x60+var_40]
4AE0E2:  VSUB.F32        S13, S10, S8
4AE0E6:  VSUB.F32        S15, S12, S6
4AE0EA:  VSUB.F32        S20, S7, S8
4AE0EE:  VMUL.F32        S16, S12, S13
4AE0F2:  VLDR            S12, [R4,#4]
4AE0F6:  VMUL.F32        S18, S10, S15
4AE0FA:  VLDR            S10, [R4]
4AE0FE:  VMUL.F32        S15, S12, S15
4AE102:  VMUL.F32        S13, S10, S13
4AE106:  VSUB.F32        S16, S18, S16
4AE10A:  VMUL.F32        S18, S10, S20
4AE10E:  VMUL.F32        S20, S1, S20
4AE112:  VSUB.F32        S1, S1, S6
4AE116:  VSUB.F32        S13, S15, S13
4AE11A:  VMUL.F32        S15, S12, S1
4AE11E:  VMUL.F32        S1, S7, S1
4AE122:  VMUL.F32        S7, S24, S0
4AE126:  VSUB.F32        S15, S15, S18
4AE12A:  VMUL.F32        S18, S22, S0
4AE12E:  VSUB.F32        S1, S1, S20
4AE132:  VADD.F32        S13, S13, S7
4AE136:  VADD.F32        S15, S15, S7
4AE13A:  VADD.F32        S16, S16, S18
4AE13E:  VADD.F32        S11, S1, S11
4AE142:  VSUB.F32        S1, S13, S16
4AE146:  VSUB.F32        S11, S15, S11
4AE14A:  VCMPE.F32       S1, #0.0
4AE14E:  VMRS            APSR_nzcv, FPSCR
4AE152:  BLT             loc_4AE15E
4AE154:  VCMPE.F32       S11, #0.0
4AE158:  VMRS            APSR_nzcv, FPSCR
4AE15C:  BLT             loc_4AE216
4AE15E:  VSUB.F32        S13, S5, S8
4AE162:  MOVS            R1, #0
4AE164:  VSUB.F32        S15, S3, S6
4AE168:  VMUL.F32        S9, S9, S0
4AE16C:  VNEG.F32        S13, S13
4AE170:  VMUL.F32        S5, S5, S15
4AE174:  VMUL.F32        S15, S12, S15
4AE178:  VMUL.F32        S3, S3, S13
4AE17C:  VMUL.F32        S13, S10, S13
4AE180:  VADD.F32        S3, S5, S3
4AE184:  VADD.F32        S5, S13, S15
4AE188:  VADD.F32        S3, S3, S9
4AE18C:  VADD.F32        S5, S5, S7
4AE190:  VSUB.F32        S3, S5, S3
4AE194:  VCMPE.F32       S3, #0.0
4AE198:  VMRS            APSR_nzcv, FPSCR
4AE19C:  VCMPE.F32       S11, #0.0
4AE1A0:  IT LT
4AE1A2:  MOVLT           R1, #1
4AE1A4:  VMRS            APSR_nzcv, FPSCR
4AE1A8:  IT GE
4AE1AA:  MOVGE           R0, #1
4AE1AC:  ANDS            R0, R1
4AE1AE:  BNE             loc_4AE216
4AE1B0:  VSUB.F32        S8, S2, S8
4AE1B4:  VMUL.F32        S0, S14, S0
4AE1B8:  VCMPE.F32       S3, #0.0
4AE1BC:  VMRS            APSR_nzcv, FPSCR
4AE1C0:  VMUL.F32        S5, S4, S8
4AE1C4:  VSUB.F32        S4, S4, S6
4AE1C8:  VNEG.F32        S6, S8
4AE1CC:  VMUL.F32        S2, S2, S4
4AE1D0:  VSUB.F32        S2, S2, S5
4AE1D4:  VADD.F32        S0, S2, S0
4AE1D8:  VMUL.F32        S2, S12, S4
4AE1DC:  VMUL.F32        S4, S10, S6
4AE1E0:  VADD.F32        S2, S4, S2
4AE1E4:  VADD.F32        S2, S2, S7
4AE1E8:  VSUB.F32        S0, S2, S0
4AE1EC:  BLT             loc_4AE1FC
4AE1EE:  VCMPE.F32       S0, #0.0
4AE1F2:  VMRS            APSR_nzcv, FPSCR
4AE1F6:  BGE             loc_4AE1FC
4AE1F8:  MOVS            R0, #2
4AE1FA:  B               loc_4AE216
4AE1FC:  VCMPE.F32       S0, #0.0
4AE200:  MOV             R1, R0
4AE202:  VMRS            APSR_nzcv, FPSCR
4AE206:  VCMPE.F32       S1, #0.0
4AE20A:  IT GE
4AE20C:  MOVGE           R1, #3
4AE20E:  VMRS            APSR_nzcv, FPSCR
4AE212:  IT LT
4AE214:  MOVLT           R0, R1
4AE216:  ADD             SP, SP, #0x30 ; '0'
4AE218:  VPOP            {D8-D12}
4AE21C:  POP             {R4,R6,R7,PC}
