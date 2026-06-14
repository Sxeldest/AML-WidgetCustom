; =========================================================
; Game Engine Function: _Z19RwMatrixQueryRotatePK11RwMatrixTagP5RwV3dPfS3_
; Address            : 0x1E41B4 - 0x1E44DE
; =========================================================

1E41B4:  PUSH            {R4-R7,LR}
1E41B6:  ADD             R7, SP, #0xC
1E41B8:  PUSH.W          {R8}
1E41BC:  VPUSH           {D8-D10}
1E41C0:  SUB             SP, SP, #0x90
1E41C2:  MOV             R5, R0
1E41C4:  MOVS            R0, #1
1E41C6:  STR             R0, [SP,#0xB8+var_68]
1E41C8:  MOV             R4, R3
1E41CA:  STR             R0, [SP,#0xB8+var_AC]
1E41CC:  ADD             R0, SP, #0xB8+var_34
1E41CE:  VLDR            S0, [R5]
1E41D2:  MOV             R8, R2
1E41D4:  VLDR            S8, [R5,#0x14]
1E41D8:  MOV             R6, R1
1E41DA:  VLDR            S4, [R5,#8]
1E41DE:  VLDR            S12, [R5,#0x20]
1E41E2:  VADD.F32        S0, S0, S8
1E41E6:  VLDR            S10, [R5,#0x18]
1E41EA:  VLDR            S14, [R5,#0x24]
1E41EE:  VSUB.F32        S4, S12, S4
1E41F2:  VLDR            S1, [R5,#0x28]
1E41F6:  VSUB.F32        S10, S10, S14
1E41FA:  VLDR            S2, [R5,#4]
1E41FE:  VLDR            S6, [R5,#0x10]
1E4202:  VADD.F32        S0, S0, S1
1E4206:  VSUB.F32        S2, S2, S6
1E420A:  VSTR            S10, [SP,#0xB8+var_34]
1E420E:  VSTR            S4, [SP,#0xB8+var_30]
1E4212:  VMOV.F32        S4, #-1.0
1E4216:  VSTR            S2, [SP,#0xB8+var_2C]
1E421A:  VADD.F32        S16, S0, S4
1E421E:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
1E4222:  VMOV            S18, R0; y
1E4226:  VCMPE.F32       S18, #0.0
1E422A:  VMRS            APSR_nzcv, FPSCR
1E422E:  BLE             loc_1E4252
1E4230:  VMOV.F32        S0, #1.0
1E4234:  VLDR            S6, [SP,#0xB8+var_34]
1E4238:  VLDR            S4, [SP,#0xB8+var_30]
1E423C:  VDIV.F32        S2, S0, S18
1E4240:  VLDR            S0, [SP,#0xB8+var_2C]
1E4244:  VMUL.F32        S4, S2, S4
1E4248:  VMUL.F32        S0, S2, S0
1E424C:  VMUL.F32        S2, S2, S6
1E4250:  B               loc_1E425E
1E4252:  VLDR            S2, =0.0
1E4256:  VMOV.F32        S4, S2
1E425A:  VMOV.F32        S0, S2
1E425E:  VMOV            R1, S16; x
1E4262:  VSTR            S2, [R6]
1E4266:  VSTR            S4, [R6,#4]
1E426A:  VSTR            S0, [R6,#8]
1E426E:  BLX             atan2f
1E4272:  VCMPE.F32       S16, #0.0
1E4276:  VLDR            S0, =57.296
1E427A:  VMRS            APSR_nzcv, FPSCR
1E427E:  VMOV            S2, R0
1E4282:  VMUL.F32        S0, S2, S0
1E4286:  VSTR            S0, [R8]
1E428A:  ITTT LE
1E428C:  VLDRLE          S0, =0.01
1E4290:  VCMPELE.F32     S18, S0
1E4294:  VMRSLE          APSR_nzcv, FPSCR
1E4298:  BGT             loc_1E437A
1E429A:  VLDR            S0, [R5]
1E429E:  VLDR            S2, [R5,#0x14]
1E42A2:  VCMPE.F32       S0, S2
1E42A6:  VMRS            APSR_nzcv, FPSCR
1E42AA:  BLE             loc_1E42E0
1E42AC:  VLDR            S2, [R5,#0x28]
1E42B0:  VCMPE.F32       S0, S2
1E42B4:  VMRS            APSR_nzcv, FPSCR
1E42B8:  BLE             loc_1E4314
1E42BA:  VMOV.F32        S2, #1.0
1E42BE:  VLDR            S4, [R5,#8]
1E42C2:  VLDR            S8, [R5,#0x20]
1E42C6:  VLDR            S6, [R5,#0x10]
1E42CA:  VADD.F32        S18, S4, S8
1E42CE:  VADD.F32        S0, S0, S2
1E42D2:  VLDR            S2, [R5,#4]
1E42D6:  VADD.F32        S16, S2, S6
1E42DA:  VADD.F32        S20, S0, S0
1E42DE:  B               loc_1E4342
1E42E0:  VLDR            S0, [R5,#0x28]
1E42E4:  VCMPE.F32       S2, S0
1E42E8:  VMRS            APSR_nzcv, FPSCR
1E42EC:  BLE             loc_1E431E
1E42EE:  VMOV.F32        S0, #1.0
1E42F2:  VLDR            S4, [R5,#0x10]
1E42F6:  VLDR            S6, [R5,#0x18]
1E42FA:  VLDR            S8, [R5,#0x24]
1E42FE:  VADD.F32        S18, S6, S8
1E4302:  VADD.F32        S0, S2, S0
1E4306:  VLDR            S2, [R5,#4]
1E430A:  VADD.F32        S20, S4, S2
1E430E:  VADD.F32        S16, S0, S0
1E4312:  B               loc_1E4342
1E4314:  VMOV.F32        S0, #1.0
1E4318:  VADD.F32        S0, S2, S0
1E431C:  B               loc_1E4326
1E431E:  VMOV.F32        S2, #1.0
1E4322:  VADD.F32        S0, S0, S2
1E4326:  VLDR            S2, [R5,#8]
1E432A:  VADD.F32        S18, S0, S0
1E432E:  VLDR            S6, [R5,#0x20]
1E4332:  VLDR            S4, [R5,#0x18]
1E4336:  VLDR            S8, [R5,#0x24]
1E433A:  VADD.F32        S20, S6, S2
1E433E:  VADD.F32        S16, S8, S4
1E4342:  VMUL.F32        S0, S16, S16
1E4346:  VMUL.F32        S2, S20, S20
1E434A:  VMUL.F32        S4, S18, S18
1E434E:  VADD.F32        S0, S2, S0
1E4352:  VADD.F32        S0, S0, S4
1E4356:  VMOV            R0, S0; float
1E435A:  BLX             j__Z10_rwInvSqrtf; _rwInvSqrt(float)
1E435E:  VMOV            S0, R0
1E4362:  VMUL.F32        S2, S20, S0
1E4366:  VMUL.F32        S4, S16, S0
1E436A:  VMUL.F32        S0, S18, S0
1E436E:  VSTR            S2, [R6]
1E4372:  VSTR            S4, [R6,#4]
1E4376:  VSTR            S0, [R6,#8]
1E437A:  VMOV.F32        S0, #1.0
1E437E:  MOVS            R0, #0
1E4380:  STR             R0, [SP,#0xB8+var_3C]
1E4382:  ADD             R1, SP, #0xB8+var_74
1E4384:  STRD.W          R0, R0, [SP,#0xB8+var_44]
1E4388:  MOVS            R0, #1
1E438A:  VLDR            S2, [R5]
1E438E:  VLDR            S4, [R5,#4]
1E4392:  VLDR            S8, =0.0
1E4396:  VLDR            S6, [R5,#8]
1E439A:  VSUB.F32        S2, S0, S2
1E439E:  VSTR            S2, [SP,#0xB8+var_74]
1E43A2:  VSUB.F32        S2, S8, S4
1E43A6:  VSTR            S2, [SP,#0xB8+var_70]
1E43AA:  VSUB.F32        S2, S8, S6
1E43AE:  VSTR            S2, [SP,#0xB8+var_6C]
1E43B2:  VLDR            S2, [R5,#0x10]
1E43B6:  VLDR            S4, [R5,#0x14]
1E43BA:  VSUB.F32        S2, S8, S2
1E43BE:  VLDR            S6, [R5,#0x18]
1E43C2:  VSTR            S2, [SP,#0xB8+var_64]
1E43C6:  VSUB.F32        S2, S0, S4
1E43CA:  VSTR            S2, [SP,#0xB8+var_60]
1E43CE:  VSUB.F32        S2, S8, S6
1E43D2:  VSTR            S2, [SP,#0xB8+var_5C]
1E43D6:  VLDR            S2, [R5,#0x20]
1E43DA:  VLDR            S4, [R5,#0x24]
1E43DE:  VSUB.F32        S2, S8, S2
1E43E2:  VLDR            S6, [R5,#0x28]
1E43E6:  STR             R0, [SP,#0xB8+var_AC]
1E43E8:  VSUB.F32        S0, S0, S6
1E43EC:  VSTR            S2, [SP,#0xB8+var_54]
1E43F0:  VSUB.F32        S2, S8, S4
1E43F4:  VSTR            S2, [SP,#0xB8+var_50]
1E43F8:  STR             R0, [SP,#0xB8+var_68]
1E43FA:  MOV             R0, SP
1E43FC:  VSTR            S0, [SP,#0xB8+var_4C]
1E4400:  BL              sub_1E3B64
1E4404:  VLDR            D16, [SP,#0xB8+var_88]
1E4408:  LDR             R0, [SP,#0xB8+var_80]
1E440A:  STR             R0, [R4,#8]
1E440C:  MOV             R0, R5
1E440E:  VSTR            D16, [R4]
1E4412:  VLDR            S0, [R5,#0x30]
1E4416:  VLDR            S2, [SP,#0xB8+var_B8]
1E441A:  VLDR            S4, [R4,#4]
1E441E:  VMUL.F32        S0, S2, S0
1E4422:  VLDR            S2, [R4]
1E4426:  VADD.F32        S0, S2, S0
1E442A:  VSTR            S0, [R4]
1E442E:  VLDR            S2, [R5,#0x30]
1E4432:  VLDR            S6, [SP,#0xB8+var_B4]
1E4436:  VMUL.F32        S2, S6, S2
1E443A:  VADD.F32        S2, S4, S2
1E443E:  VSTR            S2, [R4,#4]
1E4442:  VLDR            S4, [R5,#0x30]
1E4446:  VLDR            S6, [SP,#0xB8+var_B0]
1E444A:  VMUL.F32        S4, S6, S4
1E444E:  VLDR            S6, [R4,#8]
1E4452:  VADD.F32        S4, S6, S4
1E4456:  VSTR            S4, [R4,#8]
1E445A:  VLDR            S6, [R5,#0x34]
1E445E:  VLDR            S8, [SP,#0xB8+var_A8]
1E4462:  VMUL.F32        S6, S8, S6
1E4466:  VADD.F32        S0, S0, S6
1E446A:  VSTR            S0, [R4]
1E446E:  VLDR            S6, [R5,#0x34]
1E4472:  VLDR            S8, [SP,#0xB8+var_A4]
1E4476:  VMUL.F32        S6, S8, S6
1E447A:  VADD.F32        S2, S2, S6
1E447E:  VSTR            S2, [R4,#4]
1E4482:  VLDR            S6, [R5,#0x34]
1E4486:  VLDR            S8, [SP,#0xB8+var_A0]
1E448A:  VMUL.F32        S6, S8, S6
1E448E:  VADD.F32        S4, S4, S6
1E4492:  VSTR            S4, [R4,#8]
1E4496:  VLDR            S6, [R5,#0x38]
1E449A:  VLDR            S8, [SP,#0xB8+var_98]
1E449E:  VMUL.F32        S6, S8, S6
1E44A2:  VADD.F32        S0, S0, S6
1E44A6:  VSTR            S0, [R4]
1E44AA:  VLDR            S0, [R5,#0x38]
1E44AE:  VLDR            S6, [SP,#0xB8+var_94]
1E44B2:  VMUL.F32        S0, S6, S0
1E44B6:  VADD.F32        S0, S2, S0
1E44BA:  VSTR            S0, [R4,#4]
1E44BE:  VLDR            S0, [R5,#0x38]
1E44C2:  VLDR            S2, [SP,#0xB8+var_90]
1E44C6:  VMUL.F32        S0, S2, S0
1E44CA:  VADD.F32        S0, S4, S0
1E44CE:  VSTR            S0, [R4,#8]
1E44D2:  ADD             SP, SP, #0x90
1E44D4:  VPOP            {D8-D10}
1E44D8:  POP.W           {R8}
1E44DC:  POP             {R4-R7,PC}
