; =========================================================
; Game Engine Function: _ZN10CPlayerPed14EvaluateTargetEP7CEntityPS1_Pfffb
; Address            : 0x4C732C - 0x4C7498
; =========================================================

4C732C:  PUSH            {R4-R7,LR}
4C732E:  ADD             R7, SP, #0xC
4C7330:  PUSH.W          {R8-R10}
4C7334:  VPUSH           {D8-D9}
4C7338:  SUB             SP, SP, #0x18
4C733A:  MOV             R5, R0
4C733C:  MOV             R10, R1
4C733E:  LDR             R0, [R5,#0x14]
4C7340:  ADDS            R6, R5, #4
4C7342:  LDR.W           R1, [R10,#0x14]
4C7346:  ADD.W           R4, R10, #4
4C734A:  MOV             R8, R2
4C734C:  CMP             R0, #0
4C734E:  MOV             R2, R6
4C7350:  MOV             R9, R3
4C7352:  IT NE
4C7354:  ADDNE.W         R2, R0, #0x30 ; '0'
4C7358:  CMP             R1, #0
4C735A:  MOV             R0, R4
4C735C:  VLDR            S0, [R2]
4C7360:  IT NE
4C7362:  ADDNE.W         R0, R1, #0x30 ; '0'
4C7366:  VLDR            D16, [R2,#4]
4C736A:  VLDR            S2, [R0]
4C736E:  VLDR            D17, [R0,#4]
4C7372:  VSUB.F32        S0, S2, S0
4C7376:  VSUB.F32        D16, D17, D16
4C737A:  VMUL.F32        D1, D16, D16
4C737E:  VMUL.F32        S0, S0, S0
4C7382:  VADD.F32        S0, S0, S2
4C7386:  VADD.F32        S0, S0, S3
4C738A:  VSQRT.F32       S16, S0
4C738E:  VLDR            S0, [R7,#arg_0]
4C7392:  VCMPE.F32       S16, S0
4C7396:  VMRS            APSR_nzcv, FPSCR
4C739A:  BGT             loc_4C748C
4C739C:  LDR             R1, [R7,#arg_8]
4C739E:  MOVS            R2, #0
4C73A0:  STRD.W          R2, R2, [SP,#0x40+var_34]
4C73A4:  CMP             R1, #0
4C73A6:  STR             R2, [SP,#0x40+var_2C]
4C73A8:  BEQ             loc_4C73BE
4C73AA:  MOVS            R1, #1
4C73AC:  MOVS            R2, #0
4C73AE:  STRD.W          R1, R1, [SP,#0x40+var_40]
4C73B2:  ADD             R1, SP, #0x40+var_34
4C73B4:  MOVS            R3, #0
4C73B6:  BLX             j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
4C73BA:  CMP             R0, #1
4C73BC:  BNE             loc_4C748C
4C73BE:  LDRSB.W         R0, [R5,#0x71C]
4C73C2:  MOV             R1, R10; CEntity *
4C73C4:  RSB.W           R0, R0, R0,LSL#3
4C73C8:  ADD.W           R0, R5, R0,LSL#2
4C73CC:  ADDW            R2, R0, #0x5A4; CWeapon *
4C73D0:  MOV             R0, R5; this
4C73D2:  BLX             j__ZN10CPlayerPed24DoesTargetHaveToBeBrokenEP7CEntityP7CWeapon; CPlayerPed::DoesTargetHaveToBeBroken(CEntity *,CWeapon *)
4C73D6:  CMP             R0, #0
4C73D8:  BNE             loc_4C748C
4C73DA:  LDR             R0, [R5,#0x14]
4C73DC:  LDR.W           R1, [R10,#0x14]
4C73E0:  CMP             R0, #0
4C73E2:  VLDR            S18, [R7,#arg_4]
4C73E6:  IT NE
4C73E8:  ADDNE.W         R6, R0, #0x30 ; '0'
4C73EC:  CMP             R1, #0
4C73EE:  VLDR            S0, [R6]
4C73F2:  VLDR            S2, [R6,#4]
4C73F6:  IT NE
4C73F8:  ADDNE.W         R4, R1, #0x30 ; '0'
4C73FC:  VLDR            S4, [R4]
4C7400:  VLDR            S6, [R4,#4]
4C7404:  VSUB.F32        S0, S4, S0
4C7408:  VSUB.F32        S2, S6, S2
4C740C:  VMOV            R0, S0; this
4C7410:  VMOV            R1, S2; float
4C7414:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
4C7418:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4C741C:  VMOV            S0, R0
4C7420:  VLDR            S4, =-0.7854
4C7424:  VSUB.F32        S0, S0, S18
4C7428:  VABS.F32        S2, S0
4C742C:  VMOV.F32        S0, #1.0
4C7430:  VMUL.F32        S2, S2, S4
4C7434:  VLDR            S4, =0.0
4C7438:  VCMPE.F32       S16, S0
4C743C:  VMRS            APSR_nzcv, FPSCR
4C7440:  VADD.F32        S2, S2, S0
4C7444:  VMAX.F32        D9, D1, D2
4C7448:  BLE             loc_4C745A
4C744A:  VSQRT.F32       S2, S16
4C744E:  VSQRT.F32       S2, S2
4C7452:  VDIV.F32        S0, S0, S2
4C7456:  VMUL.F32        S18, S0, S18
4C745A:  MOV             R0, R5; this
4C745C:  MOV             R1, R10; CEntity *
4C745E:  BLX             j__ZN10CPlayerPed18FindTargetPriorityEP7CEntity; CPlayerPed::FindTargetPriority(CEntity *)
4C7462:  VMOV            S0, R0
4C7466:  VMUL.F32        S16, S18, S0
4C746A:  VLDR            S0, [R9]
4C746E:  VCMPE.F32       S16, S0
4C7472:  VMRS            APSR_nzcv, FPSCR
4C7476:  BLE             loc_4C748C
4C7478:  MOV             R0, R5; this
4C747A:  MOV             R1, R10; CEntity *
4C747C:  BLX             j__Z21LOSBlockedBetweenPedsP7CEntityS0_; LOSBlockedBetweenPeds(CEntity *,CEntity *)
4C7480:  CMP             R0, #0
4C7482:  ITT EQ
4C7484:  STREQ.W         R10, [R8]
4C7488:  VSTREQ          S16, [R9]
4C748C:  ADD             SP, SP, #0x18
4C748E:  VPOP            {D8-D9}
4C7492:  POP.W           {R8-R10}
4C7496:  POP             {R4-R7,PC}
