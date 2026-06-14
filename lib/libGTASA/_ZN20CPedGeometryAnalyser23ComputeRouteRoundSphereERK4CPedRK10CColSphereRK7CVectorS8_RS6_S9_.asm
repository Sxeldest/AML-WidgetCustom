; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser23ComputeRouteRoundSphereERK4CPedRK10CColSphereRK7CVectorS8_RS6_S9_
; Address            : 0x4B0250 - 0x4B04CA
; =========================================================

4B0250:  PUSH            {R4-R7,LR}
4B0252:  ADD             R7, SP, #0xC
4B0254:  PUSH.W          {R8-R11}
4B0258:  SUB             SP, SP, #0x3C
4B025A:  MOV             R4, R3
4B025C:  MOV             R9, R1
4B025E:  LDR             R1, [R0,#0x14]
4B0260:  MOV             R6, R2
4B0262:  LDR.W           R11, [R7,#arg_0]
4B0266:  VLDR            D16, [R4]
4B026A:  ADD.W           R5, R1, #0x30 ; '0'
4B026E:  LDR             R2, [R4,#8]
4B0270:  CMP             R1, #0
4B0272:  STR.W           R2, [R11,#8]
4B0276:  MOV             R1, R4; CVector *
4B0278:  VSTR            D16, [R11]
4B027C:  IT EQ
4B027E:  ADDEQ           R5, R0, #4
4B0280:  MOV             R0, R9; this
4B0282:  BLX             j__ZNK10CColSphere14IntersectPointERK7CVector; CColSphere::IntersectPoint(CVector const&)
4B0286:  CBZ             R0, loc_4B02EC
4B0288:  VLDR            S0, [R6]
4B028C:  VLDR            S6, [R4]
4B0290:  VLDR            S2, [R6,#4]
4B0294:  VSUB.F32        S0, S6, S0
4B0298:  VLDR            S8, [R4,#4]
4B029C:  VLDR            S10, [R4,#8]
4B02A0:  ADD             R4, SP, #0x58+var_44
4B02A2:  VLDR            S4, [R6,#8]
4B02A6:  MOV             R0, R4; this
4B02A8:  VSTR            S0, [SP,#0x58+var_44]
4B02AC:  VSUB.F32        S0, S8, S2
4B02B0:  VSTR            S0, [SP,#0x58+var_40]
4B02B4:  VSUB.F32        S0, S10, S4
4B02B8:  VSTR            S0, [SP,#0x58+var_3C]
4B02BC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B02C0:  ADD             R0, SP, #0x58+var_38
4B02C2:  ADD             R3, SP, #0x58+var_28; CVector *
4B02C4:  STR             R0, [SP,#0x58+var_58]; CVector *
4B02C6:  MOV             R0, R9; this
4B02C8:  MOV             R1, R5; CVector *
4B02CA:  MOV             R2, R4; CVector *
4B02CC:  BLX             j__ZNK10CColSphere12IntersectRayERK7CVectorS2_RS0_S3_; CColSphere::IntersectRay(CVector const&,CVector const&,CVector&,CVector&)
4B02D0:  CMP             R0, #1
4B02D2:  ADD.W           R6, R4, #8
4B02D6:  ITTTT EQ
4B02D8:  VLDREQ          D16, [SP,#0x58+var_38]
4B02DC:  LDREQ           R0, [SP,#0x58+var_30]
4B02DE:  STREQ.W         R0, [R11,#8]
4B02E2:  VSTREQ          D16, [R11]
4B02E6:  ADD.W           R10, R4, #4
4B02EA:  B               loc_4B02F6
4B02EC:  ADD             R0, SP, #0x58+var_44
4B02EE:  ADD.W           R6, R0, #8
4B02F2:  ADD.W           R10, R0, #4
4B02F6:  VLDR            S0, [R5]
4B02FA:  ADD             R4, SP, #0x58+var_44
4B02FC:  VLDR            S6, [R11]
4B0300:  VLDR            S2, [R5,#4]
4B0304:  MOV             R0, R4; this
4B0306:  VSUB.F32        S0, S6, S0
4B030A:  VLDR            S8, [R11,#4]
4B030E:  VLDR            S4, [R5,#8]
4B0312:  VLDR            S10, [R11,#8]
4B0316:  VSTR            S0, [SP,#0x58+var_44]
4B031A:  VSUB.F32        S0, S8, S2
4B031E:  VSTR            S0, [R10]
4B0322:  VSUB.F32        S0, S10, S4
4B0326:  VSTR            S0, [R6]
4B032A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B032E:  ADD             R3, SP, #0x58+var_28; CVector *
4B0330:  MOV             R0, R9; this
4B0332:  MOV             R1, R11; CVector *
4B0334:  MOV             R2, R4; CVector *
4B0336:  ADD.W           R8, SP, #0x58+var_38
4B033A:  STR.W           R8, [SP,#0x58+var_58]; CVector *
4B033E:  BLX             j__ZNK10CColSphere12IntersectRayERK7CVectorS2_RS0_S3_; CColSphere::IntersectRay(CVector const&,CVector const&,CVector&,CVector&)
4B0342:  CMP             R0, #0
4B0344:  BEQ             loc_4B03CE
4B0346:  VLDR            S0, [SP,#0x58+var_28]
4B034A:  MOV             R0, R8
4B034C:  VLDR            S6, [R5]
4B0350:  VLDR            S2, [SP,#0x58+var_24]
4B0354:  VLDR            S8, [R5,#4]
4B0358:  VSUB.F32        S0, S0, S6
4B035C:  VLDR            S12, [R11]
4B0360:  VLDR            S14, [R11,#4]
4B0364:  VSUB.F32        S2, S2, S8
4B0368:  VSUB.F32        S6, S12, S6
4B036C:  VLDR            S4, [SP,#0x58+var_20]
4B0370:  VSUB.F32        S8, S14, S8
4B0374:  VLDR            S10, [R5,#8]
4B0378:  VLDR            S1, [R11,#8]
4B037C:  VSUB.F32        S4, S4, S10
4B0380:  LDR.W           R8, [R7,#arg_4]
4B0384:  VMUL.F32        S0, S0, S0
4B0388:  VSUB.F32        S10, S1, S10
4B038C:  VMUL.F32        S2, S2, S2
4B0390:  VMUL.F32        S6, S6, S6
4B0394:  VMUL.F32        S8, S8, S8
4B0398:  VMUL.F32        S4, S4, S4
4B039C:  VADD.F32        S0, S0, S2
4B03A0:  VMUL.F32        S2, S10, S10
4B03A4:  VADD.F32        S6, S6, S8
4B03A8:  VADD.F32        S0, S0, S4
4B03AC:  VADD.F32        S2, S6, S2
4B03B0:  VCMPE.F32       S2, S0
4B03B4:  VMRS            APSR_nzcv, FPSCR
4B03B8:  BGE             loc_4B03E2
4B03BA:  VLDR            D16, [R11]
4B03BE:  MOV             R4, R8
4B03C0:  LDR.W           R0, [R11,#8]
4B03C4:  STR             R0, [R4,#8]
4B03C6:  MOVS            R0, #0
4B03C8:  VSTR            D16, [R4]
4B03CC:  B               loc_4B04C2
4B03CE:  LDR             R1, [R7,#arg_4]
4B03D0:  VLDR            D16, [R11]
4B03D4:  LDR.W           R0, [R11,#8]
4B03D8:  STR             R0, [R1,#8]
4B03DA:  MOVS            R0, #0
4B03DC:  VSTR            D16, [R1]
4B03E0:  B               loc_4B04C2
4B03E2:  ADD             R2, SP, #0x58+var_44; CVector *
4B03E4:  ADD             R3, SP, #0x58+var_28; CVector *
4B03E6:  STR             R0, [SP,#0x58+var_58]; CVector *
4B03E8:  MOV             R0, R9; this
4B03EA:  MOV             R1, R5; CVector *
4B03EC:  BLX             j__ZNK10CColSphere12IntersectRayERK7CVectorS2_RS0_S3_; CColSphere::IntersectRay(CVector const&,CVector const&,CVector&,CVector&)
4B03F0:  CMP             R0, #1
4B03F2:  BNE             loc_4B04C0
4B03F4:  VLDR            S0, [R5]
4B03F8:  ADD             R0, SP, #0x58+var_50; this
4B03FA:  VLDR            S6, [R9]
4B03FE:  VLDR            S2, [R5,#4]
4B0402:  VLDR            S8, [R9,#4]
4B0406:  VSUB.F32        S14, S6, S0
4B040A:  VLDR            S1, [SP,#0x58+var_44]
4B040E:  VSUB.F32        S2, S8, S2
4B0412:  VLDR            S3, [R10]
4B0416:  VLDR            S4, [R5,#8]
4B041A:  VLDR            S10, [R9,#8]
4B041E:  VLDR            S5, [R6]
4B0422:  VSUB.F32        S12, S10, S4
4B0426:  VMUL.F32        S14, S14, S1
4B042A:  VMUL.F32        S2, S2, S3
4B042E:  VSTR            S12, [SP,#0x58+var_48]
4B0432:  VMUL.F32        S12, S12, S5
4B0436:  VADD.F32        S2, S14, S2
4B043A:  VADD.F32        S2, S2, S12
4B043E:  VMUL.F32        S12, S1, S2
4B0442:  VLDR            S1, [R5,#4]
4B0446:  VMUL.F32        S14, S3, S2
4B044A:  VMUL.F32        S2, S5, S2
4B044E:  VADD.F32        S0, S0, S12
4B0452:  VADD.F32        S12, S1, S14
4B0456:  VADD.F32        S2, S4, S2
4B045A:  VSUB.F32        S0, S0, S6
4B045E:  VSUB.F32        S4, S12, S8
4B0462:  VSUB.F32        S2, S2, S10
4B0466:  VSTR            S0, [SP,#0x58+var_50]
4B046A:  VSTR            S4, [SP,#0x58+var_4C]
4B046E:  VSTR            S2, [SP,#0x58+var_48]
4B0472:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4B0476:  VLDR            S0, [SP,#0x58+var_50]
4B047A:  MOV             R0, R8
4B047C:  VLDR            S6, [R9,#0xC]
4B0480:  VLDR            S2, [SP,#0x58+var_4C]
4B0484:  VMUL.F32        S0, S6, S0
4B0488:  VLDR            S4, [SP,#0x58+var_48]
4B048C:  VMUL.F32        S2, S6, S2
4B0490:  VSTR            S0, [SP,#0x58+var_50]
4B0494:  VSTR            S2, [SP,#0x58+var_4C]
4B0498:  VLDR            S8, [R9]
4B049C:  VADD.F32        S0, S8, S0
4B04A0:  VSTR            S0, [R0]
4B04A4:  VLDR            S0, [R9,#4]
4B04A8:  VADD.F32        S0, S0, S2
4B04AC:  VMUL.F32        S2, S6, S4
4B04B0:  VSTR            S0, [R0,#4]
4B04B4:  VLDR            S0, [R9,#8]
4B04B8:  VADD.F32        S0, S0, S2
4B04BC:  VSTR            S0, [R0,#8]
4B04C0:  MOVS            R0, #1
4B04C2:  ADD             SP, SP, #0x3C ; '<'
4B04C4:  POP.W           {R8-R11}
4B04C8:  POP             {R4-R7,PC}
