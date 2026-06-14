; =========================================================
; Game Engine Function: _ZN8CVehicle19ProcessDrivingAnimsEP4CPedh
; Address            : 0x58C1F4 - 0x58C530
; =========================================================

58C1F4:  PUSH            {R4-R7,LR}
58C1F6:  ADD             R7, SP, #0xC
58C1F8:  PUSH.W          {R8-R11}
58C1FC:  SUB             SP, SP, #4
58C1FE:  VPUSH           {D8}
58C202:  MOV             R5, R0
58C204:  MOV             R6, R2
58C206:  LDRB            R0, [R5,#0x1E]
58C208:  MOV             R4, R1
58C20A:  LSLS            R0, R0, #0x1E
58C20C:  BMI             loc_58C232
58C20E:  MOV             R0, R4; this
58C210:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
58C214:  CMP             R0, #1
58C216:  BNE             loc_58C232
58C218:  LDR             R0, [R4,#0x18]
58C21A:  MOVS            R1, #0xBD
58C21C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C220:  CBZ             R6, loc_58C230
58C222:  LDR             R0, [R4,#0x18]; int
58C224:  MOVS            R1, #0; int
58C226:  MOVS            R2, #0xBD; unsigned int
58C228:  MOV.W           R3, #0x40800000
58C22C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
58C230:  CBZ             R0, loc_58C23E
58C232:  VPOP            {D8}
58C236:  ADD             SP, SP, #4
58C238:  POP.W           {R8-R11}
58C23C:  POP             {R4-R7,PC}
58C23E:  LDRB.W          R0, [R5,#0x42D]
58C242:  LSLS            R0, R0, #0x1C
58C244:  BMI             loc_58C270
58C246:  LDR.W           R1, [R5,#0x5A0]
58C24A:  LDR.W           R0, [R5,#0x388]
58C24E:  VLDR            S0, [R5,#0x48]
58C252:  CMP             R1, #5
58C254:  VLDR            S4, [R5,#0x4C]
58C258:  VLDR            S2, [R5,#0x50]
58C25C:  BNE             loc_58C27A
58C25E:  LDRB.W          R1, [R0,#0xCD]
58C262:  LSLS            R1, R1, #0x1D
58C264:  BMI             loc_58C27A
58C266:  LDR             R0, =(aDriveAnimIdsBoat_ptr - 0x58C26C)
58C268:  ADD             R0, PC; aDriveAnimIdsBoat_ptr
58C26A:  LDR.W           R11, [R0]; aDriveAnimIdsBoat
58C26E:  B               loc_58C302
58C270:  LDR             R0, =(aDriveAnimIdsLow_ptr - 0x58C276)
58C272:  ADD             R0, PC; aDriveAnimIdsLow_ptr
58C274:  LDR.W           R11, [R0]; aDriveAnimIdsLow
58C278:  B               loc_58C302
58C27A:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x58C286)
58C27C:  MOVS            R2, #0x94
58C27E:  LDRB.W          R0, [R0,#0xDE]
58C282:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
58C284:  LDR             R1, [R1]; unsigned __int16
58C286:  SMLABB.W        R0, R0, R2, R1
58C28A:  LDR             R0, [R0,#8]
58C28C:  TST.W           R0, #4
58C290:  BNE             loc_58C2D0
58C292:  LSLS            R0, R0, #0x1C
58C294:  BMI             loc_58C2DA
58C296:  VMUL.F32        S4, S4, S4
58C29A:  MOVS            R0, #dword_A0; this
58C29C:  VMUL.F32        S0, S0, S0
58C2A0:  VMUL.F32        S2, S2, S2
58C2A4:  VADD.F32        S0, S0, S4
58C2A8:  VADD.F32        S0, S0, S2
58C2AC:  VSQRT.F32       S16, S0
58C2B0:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
58C2B4:  VLDR            S0, =50.0
58C2B8:  VMOV            S2, R0
58C2BC:  VCMPE.F32       S2, S0
58C2C0:  VMRS            APSR_nzcv, FPSCR
58C2C4:  BGE             loc_58C2E4
58C2C6:  LDR             R0, =(aDriveAnimIdsStdSlow_ptr - 0x58C2CE)
58C2C8:  LDR             R1, =(aDriveAnimIdsStd_ptr - 0x58C2D0)
58C2CA:  ADD             R0, PC; aDriveAnimIdsStdSlow_ptr
58C2CC:  ADD             R1, PC; aDriveAnimIdsStd_ptr
58C2CE:  B               loc_58C2EC
58C2D0:  LDR             R0, =(aDriveAnimIdsKart_ptr - 0x58C2D6)
58C2D2:  ADD             R0, PC; aDriveAnimIdsKart_ptr
58C2D4:  LDR.W           R11, [R0]; aDriveAnimIdsKart
58C2D8:  B               loc_58C302
58C2DA:  LDR             R0, =(aDriveAnimIdsTruck_ptr - 0x58C2E0)
58C2DC:  ADD             R0, PC; aDriveAnimIdsTruck_ptr
58C2DE:  LDR.W           R11, [R0]; aDriveAnimIdsTruck
58C2E2:  B               loc_58C302
58C2E4:  LDR             R0, =(aDriveAnimIdsProSlow_ptr - 0x58C2EC)
58C2E6:  LDR             R1, =(aDriveAnimIdsPro_ptr - 0x58C2EE)
58C2E8:  ADD             R0, PC; aDriveAnimIdsProSlow_ptr
58C2EA:  ADD             R1, PC; aDriveAnimIdsPro_ptr
58C2EC:  VLDR            S0, =0.4
58C2F0:  LDR.W           R11, [R0]
58C2F4:  VCMPE.F32       S16, S0
58C2F8:  VMRS            APSR_nzcv, FPSCR
58C2FC:  IT GT
58C2FE:  LDRGT.W         R11, [R1]
58C302:  LDR.W           R1, [R11]
58C306:  LDR             R0, [R4,#0x18]
58C308:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C30C:  MOV             R6, R0
58C30E:  LDR.W           R1, [R11,#4]
58C312:  LDR             R0, [R4,#0x18]
58C314:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C318:  MOV             R9, R0
58C31A:  LDR.W           R1, [R11,#8]
58C31E:  LDR             R0, [R4,#0x18]
58C320:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C324:  MOV             R10, R0
58C326:  LDR.W           R1, [R11,#0xC]
58C32A:  LDR             R0, [R4,#0x18]
58C32C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C330:  MOV             R8, R0
58C332:  CMP             R6, #0
58C334:  BEQ             loc_58C42E
58C336:  VMOV.F32        S16, #1.0
58C33A:  VLDR            S0, [R6,#0x18]
58C33E:  VCMPE.F32       S0, S16
58C342:  VMRS            APSR_nzcv, FPSCR
58C346:  BLT.W           loc_58C232
58C34A:  ADDW            R6, R5, #0x42C
58C34E:  CMP.W           R8, #0
58C352:  BEQ             loc_58C38A
58C354:  LDR             R0, =(TheCamera_ptr - 0x58C35A)
58C356:  ADD             R0, PC; TheCamera_ptr
58C358:  LDR             R1, [R0]; TheCamera
58C35A:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
58C35E:  ADD.W           R0, R0, R0,LSL#5
58C362:  ADD.W           R1, R1, R0,LSL#4
58C366:  LDRH.W          R1, [R1,#0x17E]
58C36A:  CMP             R1, #0x10
58C36C:  BNE             loc_58C38A
58C36E:  LDR             R1, =(TheCamera_ptr - 0x58C374)
58C370:  ADD             R1, PC; TheCamera_ptr
58C372:  LDR             R1, [R1]; TheCamera
58C374:  ADD.W           R0, R1, R0,LSL#4
58C378:  LDR.W           R0, [R0,#0x190]
58C37C:  CMP             R0, #1
58C37E:  ITTT EQ
58C380:  MOVEQ           R0, #0
58C382:  MOVTEQ          R0, #0xC47A
58C386:  STREQ.W         R0, [R8,#0x1C]
58C38A:  LDR             R0, [R4,#0x18]
58C38C:  MOVS            R1, #0x4A ; 'J'
58C38E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C392:  CBNZ            R0, loc_58C3B0
58C394:  LDR             R0, [R4,#0x18]
58C396:  MOVS            R1, #0x4B ; 'K'
58C398:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C39C:  CBNZ            R0, loc_58C3B0
58C39E:  LDR             R0, [R4,#0x18]
58C3A0:  MOVS            R1, #0x4C ; 'L'
58C3A2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C3A6:  CBNZ            R0, loc_58C3B0
58C3A8:  LDR             R0, [R4,#0x18]
58C3AA:  MOVS            R1, #0x4D ; 'M'
58C3AC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C3B0:  LDRB            R1, [R6,#1]
58C3B2:  LSLS            R1, R1, #0x1C
58C3B4:  BMI             loc_58C3DE
58C3B6:  CBNZ            R0, loc_58C3DE
58C3B8:  ADD.W           R1, R5, #0x4A0
58C3BC:  VLDR            S0, [R1]
58C3C0:  VCMPE.F32       S0, #0.0
58C3C4:  VMRS            APSR_nzcv, FPSCR
58C3C8:  BGE             loc_58C3DE
58C3CA:  LDR.W           R1, [R5,#0x388]
58C3CE:  LDRB.W          R1, [R1,#0xCF]
58C3D2:  AND.W           R1, R1, #0xF
58C3D6:  CMP             R1, #2
58C3D8:  IT NE
58C3DA:  CMPNE           R1, #4
58C3DC:  BNE             loc_58C4AE
58C3DE:  CBNZ            R0, loc_58C45A
58C3E0:  ADD.W           R0, R5, #0x498
58C3E4:  VLDR            S0, [R0]
58C3E8:  VCMP.F32        S0, #0.0
58C3EC:  VMRS            APSR_nzcv, FPSCR
58C3F0:  BEQ             loc_58C45A
58C3F2:  VCMPE.F32       S0, #0.0
58C3F6:  VMRS            APSR_nzcv, FPSCR
58C3FA:  BLE             loc_58C47C
58C3FC:  CMP.W           R10, #0
58C400:  ITT NE
58C402:  MOVNE           R0, #0
58C404:  STRDNE.W        R0, R0, [R10,#0x18]
58C408:  CMP.W           R9, #0
58C40C:  BEQ             loc_58C508
58C40E:  VLDR            S2, =0.61
58C412:  MOVS            R0, #0
58C414:  STR.W           R0, [R9,#0x1C]
58C418:  VDIV.F32        S0, S0, S2
58C41C:  VLDR            S2, =0.0
58C420:  VMAX.F32        D16, D0, D1
58C424:  VMIN.F32        D0, D16, D8
58C428:  VSTR            S0, [R9,#0x18]
58C42C:  B               loc_58C51E
58C42E:  LDR             R0, [R4,#0x18]
58C430:  MOVS            R1, #0x3C ; '<'
58C432:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
58C436:  CMP             R0, #0
58C438:  BEQ.W           loc_58C232
58C43C:  LDR.W           R2, [R11]
58C440:  LDR             R0, [R4,#0x18]
58C442:  MOVS            R1, #0
58C444:  MOV.W           R3, #0x40800000
58C448:  VPOP            {D8}
58C44C:  ADD             SP, SP, #4
58C44E:  POP.W           {R8-R11}
58C452:  POP.W           {R4-R7,LR}
58C456:  B.W             sub_197F88
58C45A:  CMP.W           R9, #0
58C45E:  ITTT NE
58C460:  MOVNE           R0, #0
58C462:  MOVTNE          R0, #0xC080
58C466:  STRNE.W         R0, [R9,#0x1C]
58C46A:  CMP.W           R10, #0
58C46E:  ITTT NE
58C470:  MOVNE           R0, #0
58C472:  MOVTNE          R0, #0xC080
58C476:  STRNE.W         R0, [R10,#0x1C]
58C47A:  B               loc_58C51E
58C47C:  CMP.W           R9, #0
58C480:  ITT NE
58C482:  MOVNE           R0, #0
58C484:  STRDNE.W        R0, R0, [R9,#0x18]
58C488:  CMP.W           R10, #0
58C48C:  BEQ             loc_58C50E
58C48E:  VLDR            S2, =-0.61
58C492:  MOVS            R0, #0
58C494:  STR.W           R0, [R10,#0x1C]
58C498:  VDIV.F32        S0, S0, S2
58C49C:  VLDR            S2, =0.0
58C4A0:  VMAX.F32        D16, D0, D1
58C4A4:  VMIN.F32        D0, D16, D8
58C4A8:  VSTR            S0, [R10,#0x18]
58C4AC:  B               loc_58C51E
58C4AE:  LDR             R0, =(TheCamera_ptr - 0x58C4B4)
58C4B0:  ADD             R0, PC; TheCamera_ptr
58C4B2:  LDR             R1, [R0]; TheCamera
58C4B4:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
58C4B8:  ADD.W           R0, R0, R0,LSL#5
58C4BC:  ADD.W           R1, R1, R0,LSL#4
58C4C0:  LDRH.W          R1, [R1,#0x17E]
58C4C4:  CMP             R1, #0x10
58C4C6:  BNE             loc_58C4DC
58C4C8:  LDR             R1, =(TheCamera_ptr - 0x58C4CE)
58C4CA:  ADD             R1, PC; TheCamera_ptr
58C4CC:  LDR             R1, [R1]; TheCamera
58C4CE:  ADD.W           R0, R1, R0,LSL#4
58C4D2:  LDR.W           R0, [R0,#0x190]
58C4D6:  CMP             R0, #1
58C4D8:  BEQ.W           loc_58C232
58C4DC:  CMP.W           R8, #0
58C4E0:  BEQ             loc_58C502
58C4E2:  VLDR            S0, [R8,#0x18]
58C4E6:  VCMPE.F32       S0, S16
58C4EA:  VMRS            APSR_nzcv, FPSCR
58C4EE:  BGE.W           loc_58C232
58C4F2:  VLDR            S0, [R8,#0x1C]
58C4F6:  VCMPE.F32       S0, #0.0
58C4FA:  VMRS            APSR_nzcv, FPSCR
58C4FE:  BGT.W           loc_58C232
58C502:  LDR.W           R2, [R11,#0xC]
58C506:  B               loc_58C440
58C508:  LDR.W           R2, [R11,#4]
58C50C:  B               loc_58C512
58C50E:  LDR.W           R2, [R11,#8]; unsigned int
58C512:  LDR             R0, [R4,#0x18]; int
58C514:  MOVS            R1, #0; int
58C516:  MOV.W           R3, #0x40800000
58C51A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
58C51E:  CMP.W           R8, #0
58C522:  ITTT NE
58C524:  MOVNE           R0, #0
58C526:  MOVTNE          R0, #0xC080
58C52A:  STRNE.W         R0, [R8,#0x1C]
58C52E:  B               loc_58C232
