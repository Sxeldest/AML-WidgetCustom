; =========================================================
; Game Engine Function: sub_38C1DC
; Address            : 0x38C1DC - 0x38C69C
; =========================================================

38C1DC:  PUSH            {R4-R7,LR}
38C1DE:  ADD             R7, SP, #0xC
38C1E0:  PUSH.W          {R8-R11}
38C1E4:  SUB             SP, SP, #4
38C1E6:  VPUSH           {D8-D15}
38C1EA:  SUB             SP, SP, #0x28
38C1EC:  MOV             R5, R0
38C1EE:  LDRB            R0, [R5]
38C1F0:  STR             R5, [SP,#0x88+var_84]
38C1F2:  LSLS            R0, R0, #0x1C
38C1F4:  BPL.W           loc_38C3E4
38C1F8:  LDR.W           R0, =(dword_932098 - 0x38C200)
38C1FC:  ADD             R0, PC; dword_932098
38C1FE:  LDR             R0, [R0]
38C200:  LDR             R0, [R0,#0xC]
38C202:  CMP             R0, #0
38C204:  BEQ.W           loc_38C3E4
38C208:  VLDR            S16, =0.0
38C20C:  MOV             R10, R1
38C20E:  LDR             R0, [R5,#0x10]
38C210:  VMOV.F32        S0, S16
38C214:  STR             R0, [SP,#0x88+var_88]
38C216:  LDR.W           R2, [R10],#4
38C21A:  LDR.W           R0, [R10]; this
38C21E:  CMP             R2, #0
38C220:  BEQ             loc_38C24A
38C222:  VLDR            S0, =0.0
38C226:  ADD.W           R2, R1, #8
38C22A:  MOV             R3, R0
38C22C:  LDR             R6, [R3,#0x10]
38C22E:  CBZ             R6, loc_38C242
38C230:  LDR             R3, [R3,#0x14]
38C232:  LDRB.W          R6, [R3,#0x2E]
38C236:  LSLS            R6, R6, #0x1B
38C238:  ITT MI
38C23A:  VLDRMI          S2, [R3,#0x18]
38C23E:  VADDMI.F32      S0, S0, S2
38C242:  LDR.W           R3, [R2],#4
38C246:  CMP             R3, #0
38C248:  BNE             loc_38C22C
38C24A:  VMOV.F32        S2, #1.0
38C24E:  ADD.W           R6, R1, #8
38C252:  VMOV.F32        S20, S16
38C256:  ADD             R4, SP, #0x88+var_6C
38C258:  VMOV.F32        S18, S16
38C25C:  VSUB.F32        S0, S2, S0
38C260:  VMOV            R5, S0
38C264:  LDR             R1, [R0,#0x10]
38C266:  CBZ             R1, loc_38C29A
38C268:  LDRB            R1, [R1,#4]
38C26A:  LSLS            R1, R1, #0x1E
38C26C:  ITTT MI
38C26E:  LDRMI           R1, [R0,#0x14]
38C270:  LDRBMI.W        R1, [R1,#0x2E]
38C274:  MOVSMI.W        R1, R1,LSL#25
38C278:  BPL             loc_38C29A
38C27A:  MOV             R1, R4; CVector *
38C27C:  MOV             R2, R5; float
38C27E:  BLX             j__ZN14CAnimBlendNode31GetCurrentTranslationCompressedER7CVectorf; CAnimBlendNode::GetCurrentTranslationCompressed(CVector &,float)
38C282:  VLDR            S0, [SP,#0x88+var_6C]
38C286:  VLDR            S2, [SP,#0x88+var_68]
38C28A:  VLDR            S4, [SP,#0x88+var_64]
38C28E:  VADD.F32        S16, S16, S0
38C292:  VADD.F32        S20, S20, S2
38C296:  VADD.F32        S18, S18, S4
38C29A:  LDR.W           R0, [R6],#4
38C29E:  CMP             R0, #0
38C2A0:  BNE             loc_38C264
38C2A2:  VLDR            S26, =0.0
38C2A6:  ADD             R6, SP, #0x88+var_6C
38C2A8:  LDR.W           R1, [R10]
38C2AC:  MOVS            R0, #0
38C2AE:  VMOV.F32        S22, S26
38C2B2:  MOVS            R4, #0
38C2B4:  VMOV.F32        S28, S26
38C2B8:  MOV.W           R9, #0
38C2BC:  VMOV.F32        S21, S26
38C2C0:  MOV.W           R8, #0
38C2C4:  VMOV.F32        S23, S26
38C2C8:  STR             R0, [SP,#0x88+var_80]
38C2CA:  VMOV.F32        S25, S26
38C2CE:  VMOV.F32        S30, S26
38C2D2:  VMOV.F32        S17, S26
38C2D6:  VMOV.F32        S19, S26
38C2DA:  VMOV.F32        S27, S26
38C2DE:  VMOV.F32        S29, S26
38C2E2:  VMOV.F32        S31, S26
38C2E6:  VMOV.F32        S24, S26
38C2EA:  LDR             R0, [R1,#0x10]
38C2EC:  MOV             R11, R10
38C2EE:  CMP             R0, #0
38C2F0:  BEQ             loc_38C398
38C2F2:  ADD             R2, SP, #0x88+var_7C; CQuaternion *
38C2F4:  MOV             R0, R1; this
38C2F6:  MOV             R1, R6; CVector *
38C2F8:  MOV             R3, R5; float
38C2FA:  BLX             j__ZN14CAnimBlendNode16UpdateCompressedER7CVectorR11CQuaternionf; CAnimBlendNode::UpdateCompressed(CVector &,CQuaternion &,float)
38C2FE:  VLDR            S0, [SP,#0x88+var_7C]
38C302:  MOV             R1, R0
38C304:  VLDR            S2, [SP,#0x88+var_78]
38C308:  VLDR            S4, [SP,#0x88+var_74]
38C30C:  VADD.F32        S24, S24, S0
38C310:  VADD.F32        S31, S31, S2
38C314:  LDR.W           R0, [R11]; this
38C318:  VADD.F32        S29, S29, S4
38C31C:  VLDR            S6, [SP,#0x88+var_70]
38C320:  LDR             R2, [R0,#0x10]
38C322:  VADD.F32        S27, S27, S6
38C326:  VMOV            R8, S24
38C32A:  LDRB            R2, [R2,#4]
38C32C:  VMOV            R9, S31
38C330:  VMOV            R4, S29
38C334:  LSLS            R2, R2, #0x1E
38C336:  BPL             loc_38C39A
38C338:  VLDR            S0, [SP,#0x88+var_6C]
38C33C:  VLDR            S2, [SP,#0x88+var_68]
38C340:  VLDR            S4, [SP,#0x88+var_64]
38C344:  VADD.F32        S19, S19, S0
38C348:  LDR             R2, [R0,#0x14]
38C34A:  VADD.F32        S17, S17, S2
38C34E:  VADD.F32        S30, S30, S4
38C352:  LDRB.W          R2, [R2,#0x2E]
38C356:  LSLS            R2, R2, #0x19
38C358:  BPL             loc_38C39A
38C35A:  VADD.F32        S26, S26, S4
38C35E:  LDR             R2, [SP,#0x88+var_80]
38C360:  VADD.F32        S22, S22, S2
38C364:  CMP             R1, #1
38C366:  VADD.F32        S28, S28, S0
38C36A:  ORR.W           R2, R2, R1
38C36E:  STR             R2, [SP,#0x88+var_80]
38C370:  BNE             loc_38C39A
38C372:  MOV             R1, R6; CVector *
38C374:  MOV             R2, R5; float
38C376:  BLX             j__ZN14CAnimBlendNode27GetEndTranslationCompressedER7CVectorf; CAnimBlendNode::GetEndTranslationCompressed(CVector &,float)
38C37A:  VLDR            S0, [SP,#0x88+var_6C]
38C37E:  VLDR            S2, [SP,#0x88+var_68]
38C382:  VLDR            S4, [SP,#0x88+var_64]
38C386:  VADD.F32        S25, S25, S0
38C38A:  VADD.F32        S23, S23, S2
38C38E:  LDR.W           R0, [R11]
38C392:  VADD.F32        S21, S21, S4
38C396:  B               loc_38C39A
38C398:  MOV             R0, R1
38C39A:  MOV             R10, R11
38C39C:  ADDS            R0, #0x18
38C39E:  LDR.W           R1, [R10,#4]!
38C3A2:  STR.W           R0, [R11]
38C3A6:  CMP             R1, #0
38C3A8:  BNE             loc_38C2EA
38C3AA:  LDR             R2, [SP,#0x88+var_84]
38C3AC:  LDRB            R0, [R2]
38C3AE:  TST.W           R0, #2
38C3B2:  BNE.W           loc_38C600
38C3B6:  VMUL.F32        S0, S24, S24
38C3BA:  VMUL.F32        S2, S31, S31
38C3BE:  VMUL.F32        S4, S29, S29
38C3C2:  VADD.F32        S0, S2, S0
38C3C6:  VMUL.F32        S2, S27, S27
38C3CA:  VADD.F32        S0, S4, S0
38C3CE:  VADD.F32        S0, S2, S0
38C3D2:  VCMP.F32        S0, #0.0
38C3D6:  VMRS            APSR_nzcv, FPSCR
38C3DA:  BNE.W           loc_38C5C8
38C3DE:  MOV.W           R0, #0x3F800000
38C3E2:  B               loc_38C5F4
38C3E4:  VLDR            S16, =0.0
38C3E8:  LDR.W           R9, [R5,#0x10]
38C3EC:  MOV             R5, R1
38C3EE:  VMOV.F32        S0, S16
38C3F2:  LDR.W           R2, [R5],#4
38C3F6:  LDR             R0, [R5]; this
38C3F8:  CBZ             R2, loc_38C420
38C3FA:  VLDR            S0, =0.0
38C3FE:  ADDS            R1, #8
38C400:  MOV             R2, R0
38C402:  LDR             R3, [R2,#0x10]
38C404:  CBZ             R3, loc_38C418
38C406:  LDR             R2, [R2,#0x14]
38C408:  LDRB.W          R3, [R2,#0x2E]
38C40C:  LSLS            R3, R3, #0x1B
38C40E:  ITT MI
38C410:  VLDRMI          S2, [R2,#0x18]
38C414:  VADDMI.F32      S0, S0, S2
38C418:  LDR.W           R2, [R1],#4
38C41C:  CMP             R2, #0
38C41E:  BNE             loc_38C402
38C420:  VMOV.F32        S18, #1.0
38C424:  ADD.W           R8, SP, #0x88+var_6C
38C428:  VMOV.F32        S28, S16
38C42C:  ADD.W           R10, SP, #0x88+var_7C
38C430:  VMOV.F32        S30, S16
38C434:  MOVS            R1, #0
38C436:  VMOV.F32        S17, S16
38C43A:  MOVS            R2, #0
38C43C:  VMOV.F32        S20, S16
38C440:  MOVS            R3, #0
38C442:  VMOV.F32        S22, S16
38C446:  VMOV.F32        S26, S16
38C44A:  VSUB.F32        S0, S18, S0
38C44E:  VMOV.F32        S24, S16
38C452:  VMOV            R11, S0
38C456:  LDR             R6, [R0,#0x10]
38C458:  MOV             R4, R5
38C45A:  CBZ             R6, loc_38C4DA
38C45C:  MOV             R1, R8; CVector *
38C45E:  MOV             R2, R10; CQuaternion *
38C460:  MOV             R3, R11; float
38C462:  BLX             j__ZN14CAnimBlendNode16UpdateCompressedER7CVectorR11CQuaternionf; CAnimBlendNode::UpdateCompressed(CVector &,CQuaternion &,float)
38C466:  LDR             R6, [R4]
38C468:  LDR             R0, [R6,#0x10]
38C46A:  LDRB            R0, [R0,#4]
38C46C:  LSLS            R0, R0, #0x1E
38C46E:  BPL             loc_38C492
38C470:  LDR             R0, [R6,#0x14]
38C472:  VLDR            S4, [SP,#0x88+var_64]
38C476:  VLDR            S0, [SP,#0x88+var_6C]
38C47A:  VLDR            S2, [SP,#0x88+var_68]
38C47E:  VADD.F32        S26, S26, S4
38C482:  VLDR            S4, [R0,#0x18]
38C486:  VADD.F32        S20, S20, S0
38C48A:  VADD.F32        S22, S22, S2
38C48E:  VADD.F32        S24, S24, S4
38C492:  VLDR            S2, [SP,#0x88+var_7C]
38C496:  VLDR            S4, [SP,#0x88+var_78]
38C49A:  VMUL.F32        S10, S17, S2
38C49E:  VLDR            S6, [SP,#0x88+var_74]
38C4A2:  VMUL.F32        S8, S30, S4
38C4A6:  VLDR            S0, [SP,#0x88+var_70]
38C4AA:  VMUL.F32        S12, S28, S6
38C4AE:  VADD.F32        S8, S10, S8
38C4B2:  VMUL.F32        S10, S16, S0
38C4B6:  VADD.F32        S8, S8, S12
38C4BA:  VADD.F32        S8, S8, S10
38C4BE:  VCMPE.F32       S8, #0.0
38C4C2:  VMRS            APSR_nzcv, FPSCR
38C4C6:  BGE             loc_38C4DE
38C4C8:  VSUB.F32        S28, S28, S6
38C4CC:  VSUB.F32        S30, S30, S4
38C4D0:  VSUB.F32        S17, S17, S2
38C4D4:  VSUB.F32        S16, S16, S0
38C4D8:  B               loc_38C4EE
38C4DA:  MOV             R6, R0
38C4DC:  B               loc_38C4FA
38C4DE:  VADD.F32        S28, S28, S6
38C4E2:  VADD.F32        S30, S30, S4
38C4E6:  VADD.F32        S17, S17, S2
38C4EA:  VADD.F32        S16, S16, S0
38C4EE:  VMOV            R1, S28
38C4F2:  VMOV            R2, S30
38C4F6:  VMOV            R3, S17
38C4FA:  MOV             R5, R4
38C4FC:  ADDS            R6, #0x18
38C4FE:  LDR.W           R0, [R5,#4]!
38C502:  STR             R6, [R4]
38C504:  CMP             R0, #0
38C506:  BNE             loc_38C456
38C508:  LDR             R6, [SP,#0x88+var_84]
38C50A:  LDRB            R0, [R6]
38C50C:  TST.W           R0, #2
38C510:  BNE             loc_38C570
38C512:  VMUL.F32        S0, S17, S17
38C516:  VMUL.F32        S2, S30, S30
38C51A:  VMUL.F32        S4, S28, S28
38C51E:  VADD.F32        S0, S2, S0
38C522:  VMUL.F32        S2, S16, S16
38C526:  VADD.F32        S0, S4, S0
38C52A:  VADD.F32        S0, S2, S0
38C52E:  VCMP.F32        S0, #0.0
38C532:  VMRS            APSR_nzcv, FPSCR
38C536:  BNE             loc_38C53E
38C538:  MOV.W           R0, #0x3F800000
38C53C:  B               loc_38C566
38C53E:  VSQRT.F32       S0, S0
38C542:  VDIV.F32        S0, S18, S0
38C546:  VMUL.F32        S2, S16, S0
38C54A:  VMUL.F32        S4, S28, S0
38C54E:  VMUL.F32        S6, S30, S0
38C552:  VMUL.F32        S0, S17, S0
38C556:  VMOV            R0, S2
38C55A:  VMOV            R1, S4
38C55E:  VMOV            R2, S6
38C562:  VMOV            R3, S0
38C566:  STRD.W          R3, R2, [R9]
38C56A:  STRD.W          R1, R0, [R9,#8]
38C56E:  LDRB            R0, [R6]
38C570:  LSLS            R0, R0, #0x1D
38C572:  BMI.W           loc_38C68E
38C576:  VMUL.F32        S4, S20, S24
38C57A:  VMUL.F32        S0, S26, S24
38C57E:  VMUL.F32        S2, S22, S24
38C582:  VSUB.F32        S6, S18, S24
38C586:  VSTR            S4, [R9,#0x10]
38C58A:  VSTR            S2, [R9,#0x14]
38C58E:  VSTR            S0, [R9,#0x18]
38C592:  VLDR            S8, [R6,#4]
38C596:  VMUL.F32        S8, S6, S8
38C59A:  VADD.F32        S4, S4, S8
38C59E:  VSTR            S4, [R9,#0x10]
38C5A2:  VLDR            S4, [R6,#8]
38C5A6:  VMUL.F32        S4, S6, S4
38C5AA:  VADD.F32        S2, S2, S4
38C5AE:  VSTR            S2, [R9,#0x14]
38C5B2:  VLDR            S2, [R6,#0xC]
38C5B6:  VMUL.F32        S2, S6, S2
38C5BA:  VADD.F32        S0, S0, S2
38C5BE:  VSTR            S0, [R9,#0x18]
38C5C2:  B               loc_38C68E
38C5C4:  DCFS 0.0
38C5C8:  VSQRT.F32       S0, S0
38C5CC:  VMOV.F32        S2, #1.0
38C5D0:  VDIV.F32        S0, S2, S0
38C5D4:  VMUL.F32        S2, S27, S0
38C5D8:  VMUL.F32        S4, S29, S0
38C5DC:  VMUL.F32        S6, S31, S0
38C5E0:  VMUL.F32        S0, S24, S0
38C5E4:  VMOV            R0, S2
38C5E8:  VMOV            R4, S4
38C5EC:  VMOV            R9, S6
38C5F0:  VMOV            R8, S0
38C5F4:  LDR             R1, [SP,#0x88+var_88]
38C5F6:  STRD.W          R8, R9, [R1]
38C5FA:  STRD.W          R4, R0, [R1,#8]
38C5FE:  LDRB            R0, [R2]
38C600:  LSLS            R0, R0, #0x1D
38C602:  BMI             loc_38C68E
38C604:  LDR             R0, =(dword_932098 - 0x38C612)
38C606:  VSUB.F32        S0, S22, S20
38C60A:  VSUB.F32        S2, S28, S16
38C60E:  ADD             R0, PC; dword_932098
38C610:  VSUB.F32        S4, S26, S18
38C614:  LDR             R0, [R0]
38C616:  LDR             R1, [R0,#0xC]
38C618:  VSTR            S2, [R1]
38C61C:  VSTR            S0, [R1,#4]
38C620:  VSTR            S4, [R1,#8]
38C624:  LDR             R1, [SP,#0x88+var_80]
38C626:  LSLS            R1, R1, #0x1F
38C628:  BEQ             loc_38C650
38C62A:  LDR             R0, [R0,#0xC]
38C62C:  VLDR            S0, [R0]
38C630:  VLDR            S2, [R0,#4]
38C634:  VLDR            S4, [R0,#8]
38C638:  VADD.F32        S0, S25, S0
38C63C:  VADD.F32        S2, S23, S2
38C640:  VADD.F32        S4, S21, S4
38C644:  VSTR            S0, [R0]
38C648:  VSTR            S2, [R0,#4]
38C64C:  VSTR            S4, [R0,#8]
38C650:  VSUB.F32        S0, S30, S26
38C654:  LDR             R0, [SP,#0x88+var_88]
38C656:  VSUB.F32        S4, S19, S28
38C65A:  VSUB.F32        S2, S17, S22
38C65E:  VSTR            S4, [R0,#0x10]
38C662:  VSTR            S2, [R0,#0x14]
38C666:  VSTR            S0, [R0,#0x18]
38C66A:  VLDR            S6, [R2,#4]
38C66E:  VADD.F32        S4, S4, S6
38C672:  VSTR            S4, [R0,#0x10]
38C676:  VLDR            S4, [R2,#8]
38C67A:  VADD.F32        S2, S2, S4
38C67E:  VSTR            S2, [R0,#0x14]
38C682:  VLDR            S2, [R2,#0xC]
38C686:  VADD.F32        S0, S0, S2
38C68A:  VSTR            S0, [R0,#0x18]
38C68E:  ADD             SP, SP, #0x28 ; '('
38C690:  VPOP            {D8-D15}
38C694:  ADD             SP, SP, #4
38C696:  POP.W           {R8-R11}
38C69A:  POP             {R4-R7,PC}
