; =========================================================
; Game Engine Function: _ZN8CCarCtrl30SteerAICarTowardsPointInEscortEP8CVehicleS1_ffPfS2_S2_Pb
; Address            : 0x2F60FC - 0x2F6438
; =========================================================

2F60FC:  PUSH            {R4-R7,LR}
2F60FE:  ADD             R7, SP, #0xC
2F6100:  PUSH.W          {R8-R10}
2F6104:  VPUSH           {D8-D15}
2F6108:  SUB             SP, SP, #0x20
2F610A:  MOV             R8, R1
2F610C:  MOV             R10, R0
2F610E:  LDR.W           R1, [R8,#0x14]
2F6112:  ADD             R0, SP, #0x78+var_64
2F6114:  STRD.W          R2, R3, [SP,#0x78+var_70]
2F6118:  ADD             R2, SP, #0x78+var_70
2F611A:  MOVS            R4, #0
2F611C:  STR             R4, [SP,#0x78+var_68]
2F611E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2F6122:  LDR             R0, [R7,#arg_C]
2F6124:  VLDR            S4, [SP,#0x78+var_64]
2F6128:  VLDR            S8, [R8,#0x48]
2F612C:  VLDR            S6, [SP,#0x78+var_60]
2F6130:  VLDR            S10, [R8,#0x4C]
2F6134:  VADD.F32        S22, S4, S8
2F6138:  STRB            R4, [R0]
2F613A:  LDR.W           R0, [R10,#0x14]
2F613E:  VADD.F32        S24, S6, S10
2F6142:  VLDR            S0, [R0,#0x10]
2F6146:  VLDR            S18, [R0,#0x14]
2F614A:  VMUL.F32        S12, S0, S0
2F614E:  VMUL.F32        S2, S18, S18
2F6152:  VADD.F32        S2, S12, S2
2F6156:  VSQRT.F32       S2, S2
2F615A:  VCMP.F32        S2, #0.0
2F615E:  VMRS            APSR_nzcv, FPSCR
2F6162:  BEQ             loc_2F616E
2F6164:  VDIV.F32        S18, S18, S2
2F6168:  VDIV.F32        S20, S0, S2
2F616C:  B               loc_2F6172
2F616E:  VMOV.F32        S20, #1.0
2F6172:  VMOV.F32        S0, #3.0
2F6176:  LDR.W           R1, [R8,#0x14]
2F617A:  ADD.W           R4, R10, #4
2F617E:  CMP             R0, #0
2F6180:  VLDR            S2, [R1,#0x10]
2F6184:  VLDR            S4, [R1,#0x14]
2F6188:  MOV             R1, R4
2F618A:  IT NE
2F618C:  ADDNE.W         R1, R0, #0x30 ; '0'
2F6190:  VLDR            S6, [R1,#4]
2F6194:  VMUL.F32        S2, S2, S0
2F6198:  VMUL.F32        S0, S4, S0
2F619C:  VLDR            S4, [R1]
2F61A0:  VADD.F32        S2, S22, S2
2F61A4:  VADD.F32        S0, S24, S0
2F61A8:  VSUB.F32        S2, S2, S4
2F61AC:  VSUB.F32        S0, S0, S6
2F61B0:  VMOV            R0, S2; this
2F61B4:  VMOV            R1, S0; float
2F61B8:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F61BC:  MOV             R6, R0
2F61BE:  VMOV            R0, S20; this
2F61C2:  VMOV            R1, S18; float
2F61C6:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F61CA:  MOV             R5, R0
2F61CC:  MOV.W           R0, #0x3F800000
2F61D0:  STR             R0, [SP,#0x78+var_78]; float
2F61D2:  MOV             R0, R10; this
2F61D4:  MOVS            R1, #0; CVehicle *
2F61D6:  MOV             R2, R6; CPhysical *
2F61D8:  MOV             R3, R5; float
2F61DA:  BLX             j__ZN8CCarCtrl30FindAngleToWeaveThroughTrafficEP8CVehicleP9CPhysicalfff; CCarCtrl::FindAngleToWeaveThroughTraffic(CVehicle *,CPhysical *,float,float,float)
2F61DE:  VMOV            S0, R5
2F61E2:  VMOV            S2, R0
2F61E6:  VSUB.F32        S16, S2, S0
2F61EA:  VLDR            S0, =-3.1416
2F61EE:  VCMPE.F32       S16, S0
2F61F2:  VMRS            APSR_nzcv, FPSCR
2F61F6:  BGE             loc_2F620A
2F61F8:  VLDR            S2, =6.2832
2F61FC:  VADD.F32        S16, S16, S2
2F6200:  VCMPE.F32       S16, S0
2F6204:  VMRS            APSR_nzcv, FPSCR
2F6208:  BLT             loc_2F61FC
2F620A:  VLDR            S0, =3.1416
2F620E:  VCMPE.F32       S16, S0
2F6212:  VMRS            APSR_nzcv, FPSCR
2F6216:  BLE             loc_2F622A
2F6218:  VLDR            S2, =-6.2832
2F621C:  VADD.F32        S16, S16, S2
2F6220:  VCMPE.F32       S16, S0
2F6224:  VMRS            APSR_nzcv, FPSCR
2F6228:  BGT             loc_2F621C
2F622A:  LDRD.W          R9, R6, [R7,#arg_0]
2F622E:  MOV             R1, R4
2F6230:  LDR.W           R0, [R10,#0x14]
2F6234:  LDR             R5, [R7,#arg_8]
2F6236:  CMP             R0, #0
2F6238:  IT NE
2F623A:  ADDNE.W         R1, R0, #0x30 ; '0'
2F623E:  VLDR            S26, [R10,#0x48]
2F6242:  VLDR            S0, [R1]
2F6246:  VLDR            S2, [R1,#4]
2F624A:  VSUB.F32        S0, S22, S0
2F624E:  VLDR            S28, [R10,#0x4C]
2F6252:  VSUB.F32        S2, S24, S2
2F6256:  VLDR            S30, [R10,#0x50]
2F625A:  VMOV            R0, S0; this
2F625E:  VMOV            R1, S2; float
2F6262:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F6266:  VMUL.F32        S0, S28, S28
2F626A:  LDR.W           R0, [R10,#0x14]
2F626E:  VMUL.F32        S2, S26, S26
2F6272:  VLDR            S12, =0.2
2F6276:  CMP             R0, #0
2F6278:  IT NE
2F627A:  ADDNE.W         R4, R0, #0x30 ; '0'
2F627E:  VLDR            S6, [R4,#4]
2F6282:  VLDR            S4, [R4]
2F6286:  VSUB.F32        S8, S24, S6
2F628A:  VMUL.F32        S6, S30, S30
2F628E:  VADD.F32        S0, S2, S0
2F6292:  VSUB.F32        S4, S22, S4
2F6296:  VMUL.F32        S2, S8, S8
2F629A:  VMUL.F32        S8, S18, S8
2F629E:  VADD.F32        S0, S0, S6
2F62A2:  VMUL.F32        S10, S4, S4
2F62A6:  VSQRT.F32       S0, S0
2F62AA:  VADD.F32        S2, S10, S2
2F62AE:  VLDR            S10, =0.9
2F62B2:  VSQRT.F32       S6, S2
2F62B6:  VSUB.F32        S2, S10, S0
2F62BA:  VMUL.F32        S10, S20, S4
2F62BE:  VLDR            S4, =0.7
2F62C2:  VCMPE.F32       S0, S4
2F62C6:  VMRS            APSR_nzcv, FPSCR
2F62CA:  VMOV.F32        S0, #0.5
2F62CE:  VADD.F32        S8, S10, S8
2F62D2:  VCMPE.F32       S8, S0
2F62D6:  IT GT
2F62D8:  VMOVGT.F32      S2, S12
2F62DC:  VMRS            APSR_nzcv, FPSCR
2F62E0:  BLE             loc_2F6350
2F62E2:  VLDR            S10, [R8,#0x48]
2F62E6:  VLDR            S12, [R8,#0x4C]
2F62EA:  VMUL.F32        S10, S10, S10
2F62EE:  VLDR            S14, [R8,#0x50]
2F62F2:  VMUL.F32        S12, S12, S12
2F62F6:  VMUL.F32        S14, S14, S14
2F62FA:  VADD.F32        S10, S10, S12
2F62FE:  VMOV.F32        S12, #15.0
2F6302:  VADD.F32        S10, S10, S14
2F6306:  VLDR            S14, =60.0
2F630A:  VCMPE.F32       S6, S12
2F630E:  VMRS            APSR_nzcv, FPSCR
2F6312:  VSQRT.F32       S10, S10
2F6316:  VMUL.F32        S10, S10, S14
2F631A:  BGE             loc_2F6386
2F631C:  VMOV.F32        S12, #-0.5
2F6320:  VLDR            S14, =-0.1
2F6324:  VMOV.F32        S18, #4.0
2F6328:  VADD.F32        S8, S8, S12
2F632C:  VMOV.F32        S12, #3.5
2F6330:  VADD.F32        S8, S8, S14
2F6334:  VMUL.F32        S6, S6, S12
2F6338:  VMIN.F32        D4, D4, D9
2F633C:  VADD.F32        S8, S8, S10
2F6340:  VCMPE.F32       S8, S6
2F6344:  VMRS            APSR_nzcv, FPSCR
2F6348:  IT GT
2F634A:  VMOVGT          D3, D4
2F634E:  B               loc_2F638A
2F6350:  VMOV.F32        S10, #15.0
2F6354:  VCMPE.F32       S6, S10
2F6358:  VMRS            APSR_nzcv, FPSCR
2F635C:  BGE             loc_2F6398
2F635E:  VMOV.F32        S0, #-3.0
2F6362:  VLDR            S2, =0.1
2F6366:  VMOV.F32        S4, #1.0
2F636A:  MOVS            R0, #0
2F636C:  VCMPE.F32       S8, S0
2F6370:  VMRS            APSR_nzcv, FPSCR
2F6374:  IT LT
2F6376:  VMOVLT.F32      S2, S4
2F637A:  STR.W           R0, [R9]
2F637E:  STR             R0, [R6]
2F6380:  VSTR            S2, [R5]
2F6384:  B               loc_2F642C
2F6386:  VLDR            S6, =300.0
2F638A:  VMOV.F32        S8, #10.0
2F638E:  VADD.F32        S8, S10, S8
2F6392:  VMIN.F32        D3, D3, D4
2F6396:  B               loc_2F639C
2F6398:  VMOV.F32        S6, #8.0
2F639C:  VMIN.F32        D1, D1, D2
2F63A0:  VLDR            S8, [R10,#0x4C]
2F63A4:  VLDR            S10, [R10,#0x50]
2F63A8:  MOVS            R0, #0
2F63AA:  VMUL.F32        S8, S8, S8
2F63AE:  VMUL.F32        S10, S10, S10
2F63B2:  VNEG.F32        S4, S2
2F63B6:  VMAX.F32        D16, D8, D2
2F63BA:  VLDR            S4, [R10,#0x48]
2F63BE:  STR             R0, [R5]
2F63C0:  VMUL.F32        S4, S4, S4
2F63C4:  VMIN.F32        D1, D16, D1
2F63C8:  VADD.F32        S4, S4, S8
2F63CC:  VLDR            S8, =60.0
2F63D0:  VADD.F32        S4, S4, S10
2F63D4:  VSQRT.F32       S4, S4
2F63D8:  VMUL.F32        S8, S4, S8
2F63DC:  VSUB.F32        S4, S6, S8
2F63E0:  VCMPE.F32       S4, #0.0
2F63E4:  VMRS            APSR_nzcv, FPSCR
2F63E8:  BLE             loc_2F640E
2F63EA:  VMOV.F32        S0, #25.0
2F63EE:  VCMPE.F32       S8, S0
2F63F2:  VMRS            APSR_nzcv, FPSCR
2F63F6:  BGE             loc_2F6422
2F63F8:  VMOV.F32        S0, #10.0
2F63FC:  VDIV.F32        S0, S4, S0
2F6400:  VMOV.F32        S4, #1.0
2F6404:  VMIN.F32        D0, D0, D2
2F6408:  VSTR            S0, [R6]
2F640C:  B               loc_2F6428
2F640E:  VMOV.F32        S6, #-20.0
2F6412:  STR             R0, [R6]
2F6414:  VDIV.F32        S4, S4, S6
2F6418:  VMIN.F32        D0, D2, D0
2F641C:  VSTR            S0, [R5]
2F6420:  B               loc_2F6428
2F6422:  MOV.W           R0, #0x3F800000
2F6426:  STR             R0, [R6]
2F6428:  VSTR            S2, [R9]
2F642C:  ADD             SP, SP, #0x20 ; ' '
2F642E:  VPOP            {D8-D15}
2F6432:  POP.W           {R8-R10}
2F6436:  POP             {R4-R7,PC}
