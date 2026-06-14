; =========================================================
; Game Engine Function: _ZN4Fx_c19TriggerWaterHydrantER7CVector
; Address            : 0x366138 - 0x3661AC
; =========================================================

366138:  LDR             R0, =(TheCamera_ptr - 0x366144)
36613A:  MOV             R2, R1; int
36613C:  VLDR            S0, [R2]
366140:  ADD             R0, PC; TheCamera_ptr
366142:  LDR             R0, [R0]; TheCamera
366144:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
366146:  ADD.W           R3, R1, #0x30 ; '0'
36614A:  CMP             R1, #0
36614C:  IT EQ
36614E:  ADDEQ           R3, R0, #4
366150:  VLDR            D16, [R2,#4]
366154:  VLDR            S2, [R3]
366158:  VLDR            D17, [R3,#4]
36615C:  VSUB.F32        S0, S2, S0
366160:  VSUB.F32        D16, D17, D16
366164:  VMUL.F32        D1, D16, D16
366168:  VMUL.F32        S0, S0, S0
36616C:  VADD.F32        S0, S0, S2
366170:  VADD.F32        S0, S0, S3
366174:  VLDR            S2, =625.0
366178:  VCMPE.F32       S0, S2
36617C:  VMRS            APSR_nzcv, FPSCR
366180:  IT GT
366182:  BXGT            LR
366184:  PUSH            {R7,LR}
366186:  MOV             R7, SP
366188:  SUB             SP, SP, #8
36618A:  LDR             R0, =(g_fxMan_ptr - 0x366196)
36618C:  MOVS            R1, #0
36618E:  STR             R1, [SP,#0x10+var_10]; int
366190:  ADR             R1, aWaterHydrant; "water_hydrant"
366192:  ADD             R0, PC; g_fxMan_ptr
366194:  MOVS            R3, #0; int
366196:  LDR             R0, [R0]; g_fxMan ; int
366198:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
36619C:  CMP             R0, #0
36619E:  ADD             SP, SP, #8
3661A0:  POP.W           {R7,LR}
3661A4:  IT NE
3661A6:  BNE.W           sub_1968F4
3661AA:  BX              LR
