; =========================================================
; Game Engine Function: _ZN8CPickups29CreatePickupCoorsCloseToCoorsEfffPfS0_S0_
; Address            : 0x321134 - 0x3213B8
; =========================================================

321134:  PUSH            {R4-R7,LR}
321136:  ADD             R7, SP, #0xC
321138:  PUSH.W          {R8-R11}
32113C:  SUB             SP, SP, #4
32113E:  VPUSH           {D8-D15}
321142:  SUB             SP, SP, #0x80
321144:  VMOV            S2, R2
321148:  VLDR            S0, =0.3
32114C:  VMOV.F32        S26, #1.5
321150:  VLDR            S24, =0.024544
321154:  VADD.F32        S22, S2, S0
321158:  VLDR            S25, =0.4
32115C:  VMOV.F32        S17, #0.125
321160:  ADD.W           R10, SP, #0xE0+var_B0
321164:  VMOV            S20, R0
321168:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x321176)
32116A:  VMOV.I32        D15, #0x3E000000
32116E:  VLDR            S21, =1.3
321172:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321174:  VMOV            S18, R1
321178:  MOV.W           R11, #0
32117C:  MOVW            R6, #0x26A
321180:  LDR             R0, [R0]; CPickups::aPickUps ...
321182:  MOVS            R5, #0
321184:  STR             R3, [SP,#0xE0+var_BC]
321186:  STR             R2, [SP,#0xE0+var_B4]
321188:  VSTR            S2, [SP,#0xE0+var_C0]
32118C:  STR             R0, [SP,#0xE0+var_B8]
32118E:  B               loc_3211EC
321190:  CMP             R5, #0x10
321192:  MOV.W           R3, #0
321196:  ADD             R0, SP, #0xE0+var_78; this
321198:  ADD             R1, SP, #0xE0+var_6C; CVector *
32119A:  IT LT
32119C:  MOVLT           R3, #1; bool
32119E:  MOVS            R2, #(stderr+1); CVector *
3211A0:  STRD.W          R11, R3, [SP,#0xE0+var_E0]; bool
3211A4:  STRD.W          R11, R11, [SP,#0xE0+var_D8]; bool
3211A8:  STR.W           R11, [SP,#0xE0+var_D0]; bool
3211AC:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3211B0:  CMP             R0, #1
3211B2:  BNE             loc_3211E4
3211B4:  CMP             R5, #0x10
3211B6:  BGT.W           loc_321398
3211BA:  VMOV            R2, S29
3211BE:  MOVW            R3, #0x999A
3211C2:  MOVS            R0, #1
3211C4:  STRD.W          R11, R11, [SP,#0xE0+var_E0]
3211C8:  STRD.W          R0, R11, [SP,#0xE0+var_D8]
3211CC:  MOV             R0, R8
3211CE:  MOV             R1, R9
3211D0:  MOVT            R3, #0x3F99
3211D4:  STRD.W          R11, R11, [SP,#0xE0+var_D0]
3211D8:  STR.W           R11, [SP,#0xE0+var_C8]
3211DC:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
3211E0:  CBNZ            R0, loc_3211EA
3211E2:  B               loc_321398
3211E4:  CMP             R5, #0x1E
3211E6:  BGT.W           loc_321382
3211EA:  ADDS            R5, #1
3211EC:  BLX             rand
3211F0:  UXTB            R0, R0
3211F2:  VMOV            S0, R0
3211F6:  VCVT.F32.S32    S0, S0
3211FA:  VMUL.F32        S0, S0, S24
3211FE:  VMOV            R4, S0
321202:  MOV             R0, R4; x
321204:  BLX             sinf
321208:  VMOV            S16, R0
32120C:  MOV             R0, R4; x
32120E:  BLX             cosf
321212:  VMOV            S0, R0
321216:  LDR             R2, [SP,#0xE0+var_B4]; float
321218:  VMUL.F32        S2, S16, S26
32121C:  SUB.W           R3, R7, #-var_79; float
321220:  VMUL.F32        S0, S0, S26
321224:  STR.W           R11, [SP,#0xE0+var_E0]; bool *
321228:  VADD.F32        S27, S2, S20
32122C:  VADD.F32        S28, S0, S18
321230:  VMOV            R8, S27
321234:  VMOV            R9, S28
321238:  MOV             R0, R8; this
32123A:  MOV             R1, R9; float
32123C:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
321240:  LDRB.W          R1, [R7,#var_79]
321244:  CMP             R1, #0
321246:  BEQ             loc_3211E4
321248:  VMOV.F32        S2, #0.5
32124C:  MOV.W           R1, #0xFFFFFFFF
321250:  VMOV            S0, R0
321254:  ADD             R0, SP, #0xE0+var_88; int
321256:  VSTR            S18, [SP,#0xE0+var_68]
32125A:  VSTR            S22, [SP,#0xE0+var_64]
32125E:  VSTR            S20, [SP,#0xE0+var_6C]
321262:  VADD.F32        S29, S0, S2
321266:  VSUB.F32        S0, S28, S18
32126A:  VSUB.F32        S2, S27, S20
32126E:  VSUB.F32        S4, S29, S22
321272:  VMUL.F32        S6, S0, S0
321276:  VMUL.F32        S8, S2, S2
32127A:  VMUL.F32        S10, S4, S4
32127E:  VADD.F32        S6, S8, S6
321282:  VADD.F32        S6, S6, S10
321286:  VSQRT.F32       S6, S6
32128A:  VADD.F32        S8, S6, S25
32128E:  VDIV.F32        S6, S8, S6
321292:  VMUL.F32        S0, S0, S6
321296:  VMUL.F32        S4, S4, S6
32129A:  VMUL.F32        S2, S2, S6
32129E:  VADD.F32        S0, S0, S18
3212A2:  VADD.F32        S4, S22, S4
3212A6:  VADD.F32        S2, S2, S20
3212AA:  VSTR            S0, [SP,#0xE0+var_74]
3212AE:  VSTR            S4, [SP,#0xE0+var_70]
3212B2:  VSTR            S2, [SP,#0xE0+var_78]
3212B6:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3212BA:  ADD             R0, SP, #0xE0+var_94; int
3212BC:  MOV.W           R1, #0xFFFFFFFF
3212C0:  VLDR            S16, [SP,#0xE0+var_88]
3212C4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3212C8:  ADD             R0, SP, #0xE0+var_A0; int
3212CA:  MOV.W           R1, #0xFFFFFFFF
3212CE:  VLDR            S23, [SP,#0xE0+var_94]
3212D2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3212D6:  ADD             R0, SP, #0xE0+var_AC; int
3212D8:  MOV.W           R1, #0xFFFFFFFF
3212DC:  VLDR            S19, [SP,#0xE0+var_9C]
3212E0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
3212E4:  CMP             R5, #0x10
3212E6:  BGT             loc_32131C
3212E8:  VLDR            S2, [SP,#0xE0+var_A8]
3212EC:  VSUB.F32        S0, S27, S16
3212F0:  VSUB.F32        S4, S27, S23
3212F4:  VSUB.F32        S6, S28, S19
3212F8:  VSUB.F32        S2, S28, S2
3212FC:  VMUL.F32        S0, S0, S4
321300:  VMUL.F32        S2, S6, S2
321304:  VADD.F32        S0, S0, S2
321308:  VMOV.F32        S2, #2.0
32130C:  VSQRT.F32       S0, S0
321310:  VCMPE.F32       S0, S2
321314:  VMRS            APSR_nzcv, FPSCR
321318:  BLE.W           loc_3211E4
32131C:  CMP             R5, #0x10
32131E:  BGT.W           loc_321190
321322:  LDR             R0, [SP,#0xE0+var_B8]
321324:  MOV.W           R1, #0xFFFFFFFF
321328:  ADDS            R0, #0x10
32132A:  LDRSH.W         R2, [R0]
32132E:  VMOV            S0, R2
321332:  VCVT.F32.S32    S0, S0
321336:  LDR.W           R2, [R0,#2]
32133A:  STR             R2, [SP,#0xE0+var_B0]
32133C:  VLD1.32         {D16[0]}, [R10@32]
321340:  VMOVL.S16       Q8, D16
321344:  VMUL.F32        S0, S0, S17
321348:  VCVT.F32.S32    D16, D16
32134C:  VMUL.F32        D16, D16, D15
321350:  VSUB.F32        S0, S0, S27
321354:  VSUB.F32        D16, D16, D14
321358:  VMUL.F32        S0, S0, S0
32135C:  VMUL.F32        D1, D16, D16
321360:  VADD.F32        S0, S0, S2
321364:  VADD.F32        S0, S0, S3
321368:  VSQRT.F32       S0, S0
32136C:  VCMPE.F32       S0, S21
321370:  VMRS            APSR_nzcv, FPSCR
321374:  BLT.W           loc_3211E4
321378:  ADDS            R1, #1
32137A:  ADDS            R0, #0x20 ; ' '
32137C:  CMP             R1, R6
32137E:  BLE             loc_32132A
321380:  B               loc_321190
321382:  VLDR            S0, [SP,#0xE0+var_C0]
321386:  LDR             R0, [SP,#0xE0+var_BC]
321388:  VADD.F32        S29, S0, S25
32138C:  VSTR            S20, [R0]
321390:  LDR             R0, [R7,#arg_0]
321392:  VSTR            S18, [R0]
321396:  B               loc_3213A4
321398:  LDR             R0, [SP,#0xE0+var_BC]
32139A:  VSTR            S27, [R0]
32139E:  LDR             R0, [R7,#arg_0]
3213A0:  VSTR            S28, [R0]
3213A4:  LDR             R0, [R7,#arg_4]
3213A6:  VSTR            S29, [R0]
3213AA:  ADD             SP, SP, #0x80
3213AC:  VPOP            {D8-D15}
3213B0:  ADD             SP, SP, #4
3213B2:  POP.W           {R8-R11}
3213B6:  POP             {R4-R7,PC}
