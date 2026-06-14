; =========================================================
; Game Engine Function: _ZN4CCam7ProcessEv
; Address            : 0x3BF2B0 - 0x3C007E
; =========================================================

3BF2B0:  PUSH            {R4-R7,LR}
3BF2B2:  ADD             R7, SP, #0xC
3BF2B4:  PUSH.W          {R8}
3BF2B8:  VPUSH           {D8-D15}
3BF2BC:  SUB             SP, SP, #0x40; float *
3BF2BE:  MOV             R4, R0
3BF2C0:  LDR.W           R0, =(TheCamera_ptr - 0x3BF2CC)
3BF2C4:  LDR.W           R1, =(g_InterestingEvents_ptr - 0x3BF2CE)
3BF2C8:  ADD             R0, PC; TheCamera_ptr
3BF2CA:  ADD             R1, PC; g_InterestingEvents_ptr
3BF2CC:  LDR             R2, [R0]; TheCamera
3BF2CE:  LDR             R1, [R1]; g_InterestingEvents
3BF2D0:  LDRB.W          R3, [R2,#(byte_951FFF - 0x951FA8)]
3BF2D4:  LDRB.W          R0, [R1,#(byte_9EFB04 - 0x9EF9D8)]
3BF2D8:  BIC.W           R0, R0, #1
3BF2DC:  STRB.W          R0, [R1,#(byte_9EFB04 - 0x9EF9D8)]
3BF2E0:  ADD.W           R1, R3, R3,LSL#5
3BF2E4:  ADD.W           R1, R2, R1,LSL#4
3BF2E8:  LDRH.W          R1, [R1,#0x17E]
3BF2EC:  CMP             R1, #4
3BF2EE:  BEQ             loc_3BF30A
3BF2F0:  LDR.W           R1, =(gIdleCam_ptr - 0x3BF2FE)
3BF2F4:  MOVS            R3, #0
3BF2F6:  LDR.W           R2, =(g_InterestingEvents_ptr - 0x3BF300)
3BF2FA:  ADD             R1, PC; gIdleCam_ptr
3BF2FC:  ADD             R2, PC; g_InterestingEvents_ptr
3BF2FE:  LDR             R1, [R1]; gIdleCam
3BF300:  LDR             R2, [R2]; g_InterestingEvents
3BF302:  STR.W           R3, [R1,#(dword_952D50 - 0x952CBC)]
3BF306:  STRB.W          R0, [R2,#(byte_9EFB04 - 0x9EF9D8)]
3BF30A:  LDR.W           R0, [R4,#0x1F4]
3BF30E:  ADD.W           R8, R4, #0x1F4
3BF312:  CBNZ            R0, loc_3BF32A
3BF314:  LDR.W           R0, =(TheCamera_ptr - 0x3BF31E)
3BF318:  MOV             R1, R8; CEntity **
3BF31A:  ADD             R0, PC; TheCamera_ptr
3BF31C:  LDR             R0, [R0]; TheCamera
3BF31E:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]; this
3BF322:  STR.W           R0, [R8]
3BF326:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3BF32A:  LDR.W           R0, =(gCrossHair_ptr - 0x3BF332)
3BF32E:  ADD             R0, PC; gCrossHair_ptr
3BF330:  LDR             R0, [R0]; gCrossHair
3BF332:  LDRB.W          R0, [R0,#(byte_A86234 - 0xA8620C)]
3BF336:  CMP             R0, #1
3BF338:  BNE             loc_3BF35C
3BF33A:  MOV.W           R0, #0xFFFFFFFF; int
3BF33E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF342:  CMP             R0, #0
3BF344:  ITT NE
3BF346:  LDRNE.W         R0, [R0,#0x590]
3BF34A:  CMPNE           R0, #0
3BF34C:  BEQ             loc_3BF356
3BF34E:  LDRH            R0, [R0,#0x26]
3BF350:  CMP.W           R0, #0x208
3BF354:  BEQ             loc_3BF35C
3BF356:  MOVS            R0, #0; this
3BF358:  BLX             j__ZN14CWeaponEffects25ClearCrossHairImmediatelyEi; CWeaponEffects::ClearCrossHairImmediately(int)
3BF35C:  ADD.W           R3, R4, #0x14
3BF360:  LDRB            R0, [R4,#2]
3BF362:  MOVS            R6, #1
3BF364:  LDM             R3, {R1-R3}
3BF366:  CMP             R3, R2
3BF368:  MOV.W           R2, #0
3BF36C:  IT LT
3BF36E:  ADDLT           R6, R3, #1
3BF370:  CMP             R6, R1
3BF372:  STR             R6, [R4,#0x1C]
3BF374:  IT EQ
3BF376:  MOVEQ           R2, #1
3BF378:  CMP             R0, #0
3BF37A:  STRB            R2, [R4,#3]
3BF37C:  BEQ             loc_3BF396
3BF37E:  VLDR            S16, =0.0
3BF382:  VLDR            D16, [R4,#0x12C]
3BF386:  VMOV.F32        S18, S16
3BF38A:  LDR.W           R0, [R4,#0x134]
3BF38E:  STR             R0, [SP,#0x90+var_78]
3BF390:  VSTR            D16, [SP,#0x90+var_80]
3BF394:  B               loc_3BF856
3BF396:  LDR.W           R6, [R8]
3BF39A:  LDRB.W          R0, [R6,#0x3A]
3BF39E:  AND.W           R0, R0, #7
3BF3A2:  CMP             R0, #2
3BF3A4:  BNE             loc_3BF40E
3BF3A6:  LDR             R0, [R6,#0x14]
3BF3A8:  ADDS            R5, R6, #4
3BF3AA:  CMP             R0, #0
3BF3AC:  MOV             R1, R5
3BF3AE:  IT NE
3BF3B0:  ADDNE.W         R1, R0, #0x30 ; '0'
3BF3B4:  VLDR            D16, [R1]
3BF3B8:  LDR             R0, [R1,#8]
3BF3BA:  STR             R0, [SP,#0x90+var_78]
3BF3BC:  VSTR            D16, [SP,#0x90+var_80]
3BF3C0:  LDR             R0, [R6,#0x14]
3BF3C2:  CBNZ            R0, loc_3BF3D4
3BF3C4:  MOV             R0, R6; this
3BF3C6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF3CA:  LDR             R1, [R6,#0x14]; CMatrix *
3BF3CC:  MOV             R0, R5; this
3BF3CE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF3D2:  LDR             R0, [R6,#0x14]
3BF3D4:  VLDR            S0, [R0,#0x10]
3BF3D8:  VCMP.F32        S0, #0.0
3BF3DC:  VMRS            APSR_nzcv, FPSCR
3BF3E0:  BNE             loc_3BF482
3BF3E2:  LDR.W           R5, [R8]
3BF3E6:  LDR             R0, [R5,#0x14]
3BF3E8:  CBNZ            R0, loc_3BF3FA
3BF3EA:  MOV             R0, R5; this
3BF3EC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF3F0:  LDR             R1, [R5,#0x14]; CMatrix *
3BF3F2:  ADDS            R0, R5, #4; this
3BF3F4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF3F8:  LDR             R0, [R5,#0x14]
3BF3FA:  VLDR            S0, [R0,#0x14]
3BF3FE:  VCMP.F32        S0, #0.0
3BF402:  VMRS            APSR_nzcv, FPSCR
3BF406:  BNE             loc_3BF482
3BF408:  VLDR            S16, =0.0
3BF40C:  B               loc_3BF692
3BF40E:  MOV.W           R0, #0xFFFFFFFF; int
3BF412:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF416:  CMP             R6, R0
3BF418:  BEQ             loc_3BF4A6
3BF41A:  LDR.W           R6, [R8]
3BF41E:  LDR             R0, [R6,#0x14]
3BF420:  ADD.W           R1, R0, #0x30 ; '0'
3BF424:  CMP             R0, #0
3BF426:  IT EQ
3BF428:  ADDEQ           R1, R6, #4
3BF42A:  VLDR            D16, [R1]
3BF42E:  LDR             R1, [R1,#8]
3BF430:  STR             R1, [SP,#0x90+var_78]
3BF432:  VSTR            D16, [SP,#0x90+var_80]
3BF436:  CBNZ            R0, loc_3BF448
3BF438:  MOV             R0, R6; this
3BF43A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF43E:  LDR             R1, [R6,#0x14]; CMatrix *
3BF440:  ADDS            R0, R6, #4; this
3BF442:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF446:  LDR             R0, [R6,#0x14]
3BF448:  VLDR            S0, [R0,#0x10]
3BF44C:  VCMP.F32        S0, #0.0
3BF450:  VMRS            APSR_nzcv, FPSCR
3BF454:  BNE             loc_3BF494
3BF456:  LDR.W           R5, [R8]
3BF45A:  LDR             R0, [R5,#0x14]
3BF45C:  CBNZ            R0, loc_3BF46E
3BF45E:  MOV             R0, R5; this
3BF460:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF464:  LDR             R1, [R5,#0x14]; CMatrix *
3BF466:  ADDS            R0, R5, #4; this
3BF468:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF46C:  LDR             R0, [R5,#0x14]
3BF46E:  VLDR            S0, [R0,#0x14]
3BF472:  VCMP.F32        S0, #0.0
3BF476:  VMRS            APSR_nzcv, FPSCR
3BF47A:  BNE             loc_3BF494
3BF47C:  VLDR            S16, =0.0
3BF480:  B               loc_3BF84C
3BF482:  LDR.W           R5, [R8]
3BF486:  LDR             R1, [R5,#0x14]
3BF488:  CMP             R1, #0
3BF48A:  BEQ.W           loc_3BF658
3BF48E:  VLDR            S16, [R1,#0x10]
3BF492:  B               loc_3BF684
3BF494:  LDR.W           R5, [R8]
3BF498:  LDR             R1, [R5,#0x14]
3BF49A:  CMP             R1, #0
3BF49C:  BEQ.W           loc_3BF812
3BF4A0:  VLDR            S16, [R1,#0x10]
3BF4A4:  B               loc_3BF83E
3BF4A6:  MOV.W           R0, #0xFFFFFFFF; int
3BF4AA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF4AE:  LDR             R1, [R0,#0x14]
3BF4B0:  ADD.W           R2, R1, #0x30 ; '0'
3BF4B4:  CMP             R1, #0
3BF4B6:  IT EQ
3BF4B8:  ADDEQ           R2, R0, #4
3BF4BA:  VLDR            D16, [R2]
3BF4BE:  LDR             R0, [R2,#8]
3BF4C0:  STR             R0, [SP,#0x90+var_58]
3BF4C2:  MOV.W           R0, #0xFFFFFFFF; int
3BF4C6:  VSTR            D16, [SP,#0x90+var_60]
3BF4CA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF4CE:  LDR.W           R0, [R0,#0x440]; this
3BF4D2:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
3BF4D6:  CBZ             R0, loc_3BF4FC
3BF4D8:  MOV.W           R0, #0xFFFFFFFF; int
3BF4DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF4E0:  LDR.W           R0, [R0,#0x440]; this
3BF4E4:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
3BF4E8:  MOV             R5, R0
3BF4EA:  MOV.W           R0, #0xFFFFFFFF; int
3BF4EE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF4F2:  ADD             R2, SP, #0x90+var_60; CVector *
3BF4F4:  MOV             R1, R0; CPed *
3BF4F6:  MOV             R0, R5; this
3BF4F8:  BLX             j__ZN16CTaskSimpleClimb18GetCameraTargetPosEP4CPedR7CVector; CTaskSimpleClimb::GetCameraTargetPos(CPed *,CVector &)
3BF4FC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3BF508)
3BF500:  VLDR            S0, =0.2
3BF504:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3BF506:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3BF508:  VLDR            S2, [R0]
3BF50C:  VCMPE.F32       S2, S0
3BF510:  VMRS            APSR_nzcv, FPSCR
3BF514:  BLT.W           loc_3BFF4C
3BF518:  LDR.W           R0, =(dword_952D58 - 0x3BF524)
3BF51C:  VLDR            S0, [SP,#0x90+var_60]
3BF520:  ADD             R0, PC; dword_952D58 ; this
3BF522:  VLDR            D16, [SP,#0x90+var_60+4]
3BF526:  VLDR            S2, [R0]
3BF52A:  VLDR            D17, [R0,#4]
3BF52E:  VSUB.F32        S0, S2, S0
3BF532:  VSUB.F32        D16, D17, D16
3BF536:  VMUL.F32        D1, D16, D16
3BF53A:  VMUL.F32        S0, S0, S0
3BF53E:  VADD.F32        S0, S0, S2
3BF542:  VADD.F32        S0, S0, S3
3BF546:  VMOV.F32        S2, #9.0
3BF54A:  VCMPE.F32       S0, S2
3BF54E:  VMRS            APSR_nzcv, FPSCR
3BF552:  BGT.W           loc_3BFF4C
3BF556:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3BF55A:  CMP             R0, #2
3BF55C:  ITT EQ
3BF55E:  LDRHEQ          R0, [R4,#0xE]
3BF560:  CMPEQ           R0, #4
3BF562:  BEQ.W           loc_3BFF4C
3BF566:  MOV.W           R0, #0xFFFFFFFF; int
3BF56A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF56E:  CMP             R0, #0
3BF570:  BEQ.W           loc_3BFF3A
3BF574:  MOV.W           R0, #0xFFFFFFFF; int
3BF578:  MOVS            R1, #0; bool
3BF57A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3BF57E:  CMP             R0, #0
3BF580:  BEQ.W           loc_3BFF3A
3BF584:  LDR.W           R0, [R0,#0x5A4]
3BF588:  SUBS            R0, #3
3BF58A:  CMP             R0, #2
3BF58C:  BCC.W           loc_3BFF4C
3BF590:  LDR.W           R0, =(currentPad_ptr - 0x3BF598)
3BF594:  ADD             R0, PC; currentPad_ptr
3BF596:  LDR             R0, [R0]; currentPad
3BF598:  LDR             R0, [R0]
3BF59A:  CMP             R0, #0
3BF59C:  ITT EQ
3BF59E:  MOVEQ           R0, #0; this
3BF5A0:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF5A4:  BLX             j__ZN4CPad17IsFlyingRCVehicleEv; CPad::IsFlyingRCVehicle(void)
3BF5A8:  LDR.W           R1, =(TheCamera_ptr - 0x3BF5B0)
3BF5AC:  ADD             R1, PC; TheCamera_ptr
3BF5AE:  LDR             R1, [R1]; TheCamera
3BF5B0:  LDRB            R2, [R1,#(word_951FC2+1 - 0x951FA8)]
3BF5B2:  CMP             R2, #0
3BF5B4:  BNE.W           loc_3BFF4C
3BF5B8:  CMP             R0, #0
3BF5BA:  ITT EQ
3BF5BC:  LDRBEQ          R0, [R1,#(word_951FC2 - 0x951FA8)]
3BF5BE:  CMPEQ           R0, #0
3BF5C0:  BNE.W           loc_3BFF4C
3BF5C4:  MOV.W           R0, #0xFFFFFFFF; int
3BF5C8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BF5CC:  LDR.W           R0, [R0,#0x440]; this
3BF5D0:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
3BF5D4:  CMP             R0, #0
3BF5D6:  BEQ.W           loc_3BFFBC
3BF5DA:  LDRH            R0, [R4,#0xE]
3BF5DC:  CMP             R0, #0x35 ; '5'
3BF5DE:  BNE.W           loc_3BFFBC
3BF5E2:  LDR.W           R0, =(PLAYERFIGHT_LEVEL_SMOOTHING_CONST_ptr - 0x3BF5EE)
3BF5E6:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3BF5F0)
3BF5EA:  ADD             R0, PC; PLAYERFIGHT_LEVEL_SMOOTHING_CONST_ptr
3BF5EC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3BF5EE:  LDR             R0, [R0]; PLAYERFIGHT_LEVEL_SMOOTHING_CONST
3BF5F0:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3BF5F2:  LDR             R0, [R0]; x
3BF5F4:  LDR             R1, [R1]; y
3BF5F6:  BLX             powf
3BF5FA:  VMOV.F32        S0, #1.0
3BF5FE:  VLDR            S14, [SP,#0x90+var_58]
3BF602:  VMOV            S2, R0
3BF606:  LDR.W           R0, =(dword_952D58 - 0x3BF612)
3BF60A:  VLDR            S10, [SP,#0x90+var_60]
3BF60E:  ADD             R0, PC; dword_952D58
3BF610:  VLDR            S12, [SP,#0x90+var_60+4]
3BF614:  VLDR            S8, [R0,#8]
3BF618:  VLDR            S6, [R0,#4]
3BF61C:  VSUB.F32        S0, S0, S2
3BF620:  VLDR            S4, [R0]
3BF624:  VMUL.F32        S8, S2, S8
3BF628:  VMUL.F32        S6, S2, S6
3BF62C:  VMUL.F32        S2, S2, S4
3BF630:  VMUL.F32        S14, S0, S14
3BF634:  VADD.F32        S8, S8, S14
3BF638:  VMOV            R0, S8
3BF63C:  VMUL.F32        S8, S0, S12
3BF640:  VMUL.F32        S0, S0, S10
3BF644:  VADD.F32        S16, S6, S8
3BF648:  VADD.F32        S18, S2, S0
3BF64C:  VLDR            S0, =0.0
3BF650:  VMOV.F32        S2, S0
3BF654:  B.W             loc_3BFF5E
3BF658:  MOV             R0, R5; this
3BF65A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF65E:  LDR             R1, [R5,#0x14]; CMatrix *
3BF660:  ADDS            R0, R5, #4; this
3BF662:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF666:  LDR             R0, [R5,#0x14]
3BF668:  LDR.W           R5, [R8]
3BF66C:  VLDR            S16, [R0,#0x10]
3BF670:  LDR             R1, [R5,#0x14]
3BF672:  CBNZ            R1, loc_3BF684
3BF674:  MOV             R0, R5; this
3BF676:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF67A:  LDR             R1, [R5,#0x14]; CMatrix *
3BF67C:  ADDS            R0, R5, #4; this
3BF67E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF682:  LDR             R1, [R5,#0x14]
3BF684:  VMOV            R0, S16; this
3BF688:  LDR             R1, [R1,#0x14]; float
3BF68A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3BF68E:  VMOV            S16, R0
3BF692:  MOVS            R0, #0
3BF694:  STRD.W          R0, R0, [SP,#0x90+var_60]
3BF698:  STR             R0, [SP,#0x90+var_58]
3BF69A:  LDR.W           R5, [R8]
3BF69E:  LDR             R0, [R5,#0x14]
3BF6A0:  CBZ             R0, loc_3BF6C0
3BF6A2:  LDR             R1, [R0,#0x10]
3BF6A4:  STR             R1, [SP,#0x90+var_60]
3BF6A6:  B               loc_3BF6EE
3BF6A8:  DCFS 0.0
3BF6AC:  DCFS 0.2
3BF6B0:  DCFS 0.9
3BF6B4:  DCFS 1.8
3BF6B8:  DCFS 0.105
3BF6BC:  DCFS 0.895
3BF6C0:  MOV             R0, R5; this
3BF6C2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF6C6:  LDR             R1, [R5,#0x14]; CMatrix *
3BF6C8:  ADDS            R0, R5, #4; this
3BF6CA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF6CE:  LDR.W           R6, [R8]
3BF6D2:  LDR             R1, [R5,#0x14]
3BF6D4:  LDR             R0, [R6,#0x14]
3BF6D6:  LDR             R1, [R1,#0x10]
3BF6D8:  CMP             R0, #0
3BF6DA:  STR             R1, [SP,#0x90+var_60]
3BF6DC:  BNE             loc_3BF6EE
3BF6DE:  MOV             R0, R6; this
3BF6E0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF6E4:  LDR             R1, [R6,#0x14]; CMatrix *
3BF6E6:  ADDS            R0, R6, #4; this
3BF6E8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF6EC:  LDR             R0, [R6,#0x14]
3BF6EE:  LDR             R0, [R0,#0x14]
3BF6F0:  STR             R0, [SP,#0x90+var_60+4]
3BF6F2:  ADD             R0, SP, #0x90+var_60; this
3BF6F4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BF6F8:  VLDR            S0, [SP,#0x90+var_60]
3BF6FC:  VLDR            S2, [SP,#0x90+var_60+4]
3BF700:  VMUL.F32        S6, S0, S0
3BF704:  VMUL.F32        S4, S2, S2
3BF708:  VADD.F32        S4, S6, S4
3BF70C:  VSQRT.F32       S4, S4
3BF710:  VCMP.F32        S4, #0.0
3BF714:  VMRS            APSR_nzcv, FPSCR
3BF718:  BEQ             loc_3BF72A
3BF71A:  VDIV.F32        S2, S2, S4
3BF71E:  VDIV.F32        S0, S0, S4
3BF722:  VSTR            S2, [SP,#0x90+var_60+4]
3BF726:  VSTR            S0, [SP,#0x90+var_60]
3BF72A:  LDR.W           R0, [R8]
3BF72E:  VLDR            S4, [R0,#0x48]
3BF732:  VLDR            S6, [R0,#0x4C]
3BF736:  VMUL.F32        S4, S0, S4
3BF73A:  VMUL.F32        S2, S2, S6
3BF73E:  VMUL.F32        S6, S4, S4
3BF742:  VMUL.F32        S0, S2, S2
3BF746:  VADD.F32        S2, S4, S2
3BF74A:  VADD.F32        S0, S6, S0
3BF74E:  VCMPE.F32       S2, #0.0
3BF752:  VMRS            APSR_nzcv, FPSCR
3BF756:  VSQRT.F32       S0, S0
3BF75A:  BLE             loc_3BF778
3BF75C:  VLDR            S2, =0.9
3BF760:  VMOV.F32        S18, #1.0
3BF764:  VDIV.F32        S0, S0, S2
3BF768:  VCMPE.F32       S0, S18
3BF76C:  VMRS            APSR_nzcv, FPSCR
3BF770:  IT LE
3BF772:  VMOVLE.F32      S18, S0
3BF776:  B               loc_3BF78C
3BF778:  VLDR            S2, =1.8
3BF77C:  VDIV.F32        S0, S0, S2
3BF780:  VMOV.F32        S2, #0.5
3BF784:  VMIN.F32        D0, D0, D1
3BF788:  VNEG.F32        S18, S0
3BF78C:  VLDR            S2, =0.105
3BF790:  VLDR            S0, =0.895
3BF794:  VLDR            S4, [R4,#0xAC]
3BF798:  VMUL.F32        S2, S18, S2
3BF79C:  LDR             R0, [R4,#0x20]
3BF79E:  VMUL.F32        S0, S4, S0
3BF7A2:  CMP             R0, #3
3BF7A4:  VADD.F32        S0, S2, S0
3BF7A8:  VSTR            S0, [R4,#0xAC]
3BF7AC:  BEQ             loc_3BF856
3BF7AE:  LDR.W           R0, =(currentPad_ptr - 0x3BF7B6)
3BF7B2:  ADD             R0, PC; currentPad_ptr
3BF7B4:  LDR             R0, [R0]; currentPad
3BF7B6:  LDR             R0, [R0]
3BF7B8:  CMP             R0, #0
3BF7BA:  ITT EQ
3BF7BC:  MOVEQ           R0, #0; this
3BF7BE:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF7C2:  BLX             j__ZN4CPad19GetLookBehindForCarEv; CPad::GetLookBehindForCar(void)
3BF7C6:  CMP             R0, #1
3BF7C8:  BNE             loc_3BF804
3BF7CA:  LDR.W           R0, =(currentPad_ptr - 0x3BF7D2)
3BF7CE:  ADD             R0, PC; currentPad_ptr
3BF7D0:  LDR             R0, [R0]; currentPad
3BF7D2:  LDR             R0, [R0]
3BF7D4:  CMP             R0, #0
3BF7D6:  ITT EQ
3BF7D8:  MOVEQ           R0, #0; this
3BF7DA:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF7DE:  MOVS            R1, #0; bool
3BF7E0:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
3BF7E4:  CBNZ            R0, loc_3BF804
3BF7E6:  LDR.W           R0, =(currentPad_ptr - 0x3BF7EE)
3BF7EA:  ADD             R0, PC; currentPad_ptr
3BF7EC:  LDR             R0, [R0]; currentPad
3BF7EE:  LDR             R0, [R0]
3BF7F0:  CMP             R0, #0
3BF7F2:  ITT EQ
3BF7F4:  MOVEQ           R0, #0; this
3BF7F6:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF7FA:  MOVS            R1, #0; bool
3BF7FC:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
3BF800:  CMP             R0, #1
3BF802:  BNE             loc_3BF856
3BF804:  LDR.W           R0, =(TheCamera_ptr - 0x3BF80E)
3BF808:  MOVS            R1, #1
3BF80A:  ADD             R0, PC; TheCamera_ptr
3BF80C:  LDR             R0, [R0]; TheCamera
3BF80E:  STRB            R1, [R0,#(word_951FC2 - 0x951FA8)]
3BF810:  B               loc_3BF856
3BF812:  MOV             R0, R5; this
3BF814:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF818:  LDR             R1, [R5,#0x14]; CMatrix *
3BF81A:  ADDS            R0, R5, #4; this
3BF81C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF820:  LDR             R0, [R5,#0x14]
3BF822:  LDR.W           R5, [R8]
3BF826:  VLDR            S16, [R0,#0x10]
3BF82A:  LDR             R1, [R5,#0x14]
3BF82C:  CBNZ            R1, loc_3BF83E
3BF82E:  MOV             R0, R5; this
3BF830:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3BF834:  LDR             R1, [R5,#0x14]; CMatrix *
3BF836:  ADDS            R0, R5, #4; this
3BF838:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3BF83C:  LDR             R1, [R5,#0x14]
3BF83E:  VMOV            R0, S16; this
3BF842:  LDR             R1, [R1,#0x14]; float
3BF844:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3BF848:  VMOV            S16, R0
3BF84C:  MOVS            R0, #0
3BF84E:  VLDR            S18, =0.0
3BF852:  STR.W           R0, [R4,#0xAC]
3BF856:  LDR.W           R0, =(TheCamera_ptr - 0x3BF864)
3BF85A:  MOVS            R6, #3
3BF85C:  LDR.W           R2, =(dword_6A9F18 - 0x3BF866)
3BF860:  ADD             R0, PC; TheCamera_ptr
3BF862:  ADD             R2, PC; dword_6A9F18
3BF864:  LDR             R0, [R0]; TheCamera
3BF866:  LDR             R1, [R2]; int
3BF868:  STR             R1, [R4,#0x20]
3BF86A:  LDRB.W          R3, [R0,#(byte_951FFF - 0x951FA8)]
3BF86E:  STR             R6, [R2]
3BF870:  ADD.W           R2, R3, R3,LSL#5
3BF874:  ADD.W           R0, R0, R2,LSL#4
3BF878:  ADD.W           R0, R0, #0x170
3BF87C:  CMP             R0, R4
3BF87E:  BNE.W           def_3BF898; jumptable 003BF898 default case, cases 5-15,17,19-21,23-52
3BF882:  LDRH            R2, [R4,#0xE]
3BF884:  SUBS            R0, R2, #3; switch 51 cases
3BF886:  CMP             R0, #0x32 ; '2'
3BF888:  BHI.W           def_3BF898; jumptable 003BF898 default case, cases 5-15,17,19-21,23-52
3BF88C:  LDR.W           R3, =(TheCamera_ptr - 0x3BF894)
3BF890:  ADD             R3, PC; TheCamera_ptr
3BF892:  LDR             R3, [R3]; TheCamera
3BF894:  LDRB.W          R5, [R3,#(byte_951FFE - 0x951FA8)]
3BF898:  TBH.W           [PC,R0,LSL#1]; switch jump
3BF89C:  DCW 0x33; jump table for switch statement
3BF89E:  DCW 0x4F
3BF8A0:  DCW 0xF4
3BF8A2:  DCW 0xF4
3BF8A4:  DCW 0xF4
3BF8A6:  DCW 0xF4
3BF8A8:  DCW 0xF4
3BF8AA:  DCW 0xF4
3BF8AC:  DCW 0xF4
3BF8AE:  DCW 0xF4
3BF8B0:  DCW 0xF4
3BF8B2:  DCW 0xF4
3BF8B4:  DCW 0xF4
3BF8B6:  DCW 0x33
3BF8B8:  DCW 0xF4
3BF8BA:  DCW 0x33
3BF8BC:  DCW 0xF4
3BF8BE:  DCW 0xF4
3BF8C0:  DCW 0xF4
3BF8C2:  DCW 0x33
3BF8C4:  DCW 0xF4
3BF8C6:  DCW 0xF4
3BF8C8:  DCW 0xF4
3BF8CA:  DCW 0xF4
3BF8CC:  DCW 0xF4
3BF8CE:  DCW 0xF4
3BF8D0:  DCW 0xF4
3BF8D2:  DCW 0xF4
3BF8D4:  DCW 0xF4
3BF8D6:  DCW 0xF4
3BF8D8:  DCW 0xF4
3BF8DA:  DCW 0xF4
3BF8DC:  DCW 0xF4
3BF8DE:  DCW 0xF4
3BF8E0:  DCW 0xF4
3BF8E2:  DCW 0xF4
3BF8E4:  DCW 0xF4
3BF8E6:  DCW 0xF4
3BF8E8:  DCW 0xF4
3BF8EA:  DCW 0xF4
3BF8EC:  DCW 0xF4
3BF8EE:  DCW 0xF4
3BF8F0:  DCW 0xF4
3BF8F2:  DCW 0xF4
3BF8F4:  DCW 0xF4
3BF8F6:  DCW 0xF4
3BF8F8:  DCW 0xF4
3BF8FA:  DCW 0xF4
3BF8FC:  DCW 0xF4
3BF8FE:  DCW 0xF4
3BF900:  DCW 0x73
3BF902:  LDR.W           R0, [R8]; jumptable 003BF898 cases 3,16,18,22
3BF906:  LDRB.W          R3, [R0,#0x3A]
3BF90A:  AND.W           R3, R3, #7
3BF90E:  CMP             R3, #2
3BF910:  BNE             loc_3BF930
3BF912:  CMP             R0, #0
3BF914:  BEQ             loc_3BF998
3BF916:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3BF91A:  CMP             R0, #3
3BF91C:  BEQ             loc_3BF92A
3BF91E:  LDR.W           R0, [R8]; this
3BF922:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3BF926:  CMP             R0, #5
3BF928:  BNE             loc_3BF998
3BF92A:  MOVS            R5, #0
3BF92C:  MOVS            R6, #1
3BF92E:  B               loc_3BF9D4
3BF930:  CMP             R2, #0x35 ; '5'
3BF932:  BEQ             loc_3BF982; jumptable 003BF898 case 53
3BF934:  CMP             R2, #4
3BF936:  BNE.W           def_3BF898; jumptable 003BF898 default case, cases 5-15,17,19-21,23-52
3BF93A:  LDR.W           R0, [R8]; jumptable 003BF898 case 4
3BF93E:  LDRB.W          R0, [R0,#0x3A]
3BF942:  AND.W           R0, R0, #7
3BF946:  CMP             R0, #3
3BF948:  BNE.W           def_3BF898; jumptable 003BF898 default case, cases 5-15,17,19-21,23-52
3BF94C:  LDR.W           R0, =(currentPad_ptr - 0x3BF954)
3BF950:  ADD             R0, PC; currentPad_ptr
3BF952:  LDR             R0, [R0]; currentPad
3BF954:  LDR             R0, [R0]
3BF956:  CMP             R0, #0
3BF958:  ITT EQ
3BF95A:  MOVEQ           R0, #0; this
3BF95C:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF960:  BLX             j__ZN4CPad19GetLookBehindForPedEv; CPad::GetLookBehindForPed(void)
3BF964:  LDR             R1, [R4,#0x20]
3BF966:  CMP             R0, #1
3BF968:  BNE.W           loc_3BFF2E
3BF96C:  MOVS            R0, #0
3BF96E:  CMP             R5, #0
3BF970:  BNE.W           loc_3BFA7C
3BF974:  CMP             R1, #0
3BF976:  BEQ.W           loc_3BFA7C
3BF97A:  LDR.W           R0, =(TheCamera_ptr - 0x3BF982)
3BF97E:  ADD             R0, PC; TheCamera_ptr
3BF980:  B               loc_3BFA10
3BF982:  CMP             R1, #3; jumptable 003BF898 case 53
3BF984:  BEQ             loc_3BF994
3BF986:  LDR.W           R0, =(gCurDistForCam_ptr - 0x3BF98E)
3BF98A:  ADD             R0, PC; gCurDistForCam_ptr
3BF98C:  LDR             R0, [R0]; gCurDistForCam
3BF98E:  MOV.W           R1, #0x3F800000
3BF992:  STR             R1, [R0]
3BF994:  MOVS            R0, #3
3BF996:  B               loc_3BFA7C
3BF998:  LDR.W           R0, =(currentPad_ptr - 0x3BF9A0)
3BF99C:  ADD             R0, PC; currentPad_ptr
3BF99E:  LDR             R0, [R0]; currentPad
3BF9A0:  LDR             R0, [R0]
3BF9A2:  CMP             R0, #0
3BF9A4:  ITT EQ
3BF9A6:  MOVEQ           R0, #0; this
3BF9A8:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF9AC:  MOVS            R1, #1; bool
3BF9AE:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
3BF9B2:  MOV             R1, R0; int
3BF9B4:  LDR.W           R0, =(currentPad_ptr - 0x3BF9C0)
3BF9B8:  EOR.W           R6, R1, #1
3BF9BC:  ADD             R0, PC; currentPad_ptr
3BF9BE:  LDR             R0, [R0]; currentPad
3BF9C0:  LDR             R0, [R0]
3BF9C2:  CMP             R0, #0
3BF9C4:  ITT EQ
3BF9C6:  MOVEQ           R0, #0; this
3BF9C8:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF9CC:  MOVS            R1, #1; bool
3BF9CE:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
3BF9D2:  MOV             R5, R0
3BF9D4:  LDR.W           R0, =(currentPad_ptr - 0x3BF9DC)
3BF9D8:  ADD             R0, PC; currentPad_ptr
3BF9DA:  LDR             R0, [R0]; currentPad
3BF9DC:  LDR             R0, [R0]
3BF9DE:  CMP             R0, #0
3BF9E0:  ITT EQ
3BF9E2:  MOVEQ           R0, #0; this
3BF9E4:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3BF9E8:  BLX             j__ZN4CPad19GetLookBehindForCarEv; CPad::GetLookBehindForCar(void)
3BF9EC:  CMP             R0, #1
3BF9EE:  BNE             loc_3BFA1C
3BF9F0:  LDR.W           R0, =(TheCamera_ptr - 0x3BF9F8)
3BF9F4:  ADD             R0, PC; TheCamera_ptr
3BF9F6:  LDR             R1, [R0]; TheCamera
3BF9F8:  MOVS            R0, #0
3BF9FA:  STRB.W          R0, [R1,#(byte_951FF5 - 0x951FA8)]
3BF9FE:  STRB.W          R0, [R1,#(byte_951FFE - 0x951FA8)]
3BFA02:  STRB.W          R0, [R1,#(byte_951FE0 - 0x951FA8)]
3BFA06:  LDR             R1, [R4,#0x20]
3BFA08:  CBZ             R1, loc_3BFA7C
3BFA0A:  LDR.W           R0, =(TheCamera_ptr - 0x3BFA12)
3BFA0E:  ADD             R0, PC; TheCamera_ptr
3BFA10:  LDR             R0, [R0]; TheCamera
3BFA12:  MOVS            R1, #1
3BFA14:  STRB.W          R1, [R0,#(byte_951FD0 - 0x951FA8)]
3BFA18:  MOVS            R0, #0
3BFA1A:  B               loc_3BFA7C
3BFA1C:  CBZ             R6, loc_3BFA52
3BFA1E:  CMP             R5, #0
3BFA20:  BEQ.W           loc_3BFF96
3BFA24:  LDR.W           R0, =(TheCamera_ptr - 0x3BFA2E)
3BFA28:  MOVS            R1, #0
3BFA2A:  ADD             R0, PC; TheCamera_ptr
3BFA2C:  LDR             R0, [R0]; TheCamera
3BFA2E:  STRB.W          R1, [R0,#(byte_951FF5 - 0x951FA8)]
3BFA32:  STRB.W          R1, [R0,#(byte_951FFE - 0x951FA8)]
3BFA36:  STRB.W          R1, [R0,#(byte_951FE0 - 0x951FA8)]
3BFA3A:  LDR             R0, [R4,#0x20]
3BFA3C:  CMP             R0, #2
3BFA3E:  BEQ             loc_3BFA4E
3BFA40:  LDR.W           R0, =(TheCamera_ptr - 0x3BFA4A)
3BFA44:  MOVS            R1, #1
3BFA46:  ADD             R0, PC; TheCamera_ptr
3BFA48:  LDR             R0, [R0]; TheCamera
3BFA4A:  STRB.W          R1, [R0,#(byte_951FD0 - 0x951FA8)]
3BFA4E:  MOVS            R0, #2
3BFA50:  B               loc_3BFA7C
3BFA52:  LDR.W           R0, =(TheCamera_ptr - 0x3BFA5C)
3BFA56:  MOVS            R1, #0
3BFA58:  ADD             R0, PC; TheCamera_ptr
3BFA5A:  LDR             R0, [R0]; TheCamera
3BFA5C:  STRB.W          R1, [R0,#(byte_951FF5 - 0x951FA8)]
3BFA60:  STRB.W          R1, [R0,#(byte_951FFE - 0x951FA8)]
3BFA64:  STRB.W          R1, [R0,#(byte_951FE0 - 0x951FA8)]
3BFA68:  MOVS            R0, #1
3BFA6A:  LDR             R1, [R4,#0x20]
3BFA6C:  CMP             R1, #1
3BFA6E:  BEQ             loc_3BFA7C
3BFA70:  LDR.W           R1, =(TheCamera_ptr - 0x3BFA78)
3BFA74:  ADD             R1, PC; TheCamera_ptr
3BFA76:  LDR             R1, [R1]; TheCamera
3BFA78:  STRB.W          R0, [R1,#(byte_951FD0 - 0x951FA8)]
3BFA7C:  LDR.W           R1, =(dword_6A9F18 - 0x3BFA84)
3BFA80:  ADD             R1, PC; dword_6A9F18
3BFA82:  STR             R0, [R1]
3BFA84:  LDR.W           R0, =(TheCamera_ptr - 0x3BFA8C); jumptable 003BF898 default case, cases 5-15,17,19-21,23-52
3BFA88:  ADD             R0, PC; TheCamera_ptr
3BFA8A:  LDR             R0, [R0]; TheCamera
3BFA8C:  LDRB.W          R0, [R0,#(byte_951FD0 - 0x951FA8)]
3BFA90:  CBZ             R0, loc_3BFAAE
3BFA92:  LDR.W           R0, =(TheCamera_ptr - 0x3BFAA0)
3BFA96:  MOVS            R2, #1
3BFA98:  LDR.W           R1, =(gCurDistForCam_ptr - 0x3BFAA2)
3BFA9C:  ADD             R0, PC; TheCamera_ptr
3BFA9E:  ADD             R1, PC; gCurDistForCam_ptr
3BFAA0:  LDR             R0, [R0]; TheCamera
3BFAA2:  LDR             R1, [R1]; gCurDistForCam
3BFAA4:  STRB.W          R2, [R0,#(byte_95289D - 0x951FA8)]
3BFAA8:  MOV.W           R0, #0x3F800000
3BFAAC:  STR             R0, [R1]
3BFAAE:  LDRH            R1, [R4,#0xE]
3BFAB0:  SXTH            R0, R1
3BFAB2:  SUBS            R1, #3; switch 47 cases
3BFAB4:  CMP             R1, #0x2E ; '.'
3BFAB6:  BHI.W           def_3BFABA; jumptable 003BFABA default case, cases 4-15,17,19-21,23-48
3BFABA:  TBB.W           [PC,R1]; switch jump
3BFABE:  DCB 0x18; jump table for switch statement
3BFABF:  DCB 0x6B
3BFAC0:  DCB 0x6B
3BFAC1:  DCB 0x6B
3BFAC2:  DCB 0x6B
3BFAC3:  DCB 0x6B
3BFAC4:  DCB 0x6B
3BFAC5:  DCB 0x6B
3BFAC6:  DCB 0x6B
3BFAC7:  DCB 0x6B
3BFAC8:  DCB 0x6B
3BFAC9:  DCB 0x6B
3BFACA:  DCB 0x6B
3BFACB:  DCB 0x18
3BFACC:  DCB 0x6B
3BFACD:  DCB 0x18
3BFACE:  DCB 0x6B
3BFACF:  DCB 0x6B
3BFAD0:  DCB 0x6B
3BFAD1:  DCB 0x18
3BFAD2:  DCB 0x6B
3BFAD3:  DCB 0x6B
3BFAD4:  DCB 0x6B
3BFAD5:  DCB 0x6B
3BFAD6:  DCB 0x6B
3BFAD7:  DCB 0x6B
3BFAD8:  DCB 0x6B
3BFAD9:  DCB 0x6B
3BFADA:  DCB 0x6B
3BFADB:  DCB 0x6B
3BFADC:  DCB 0x6B
3BFADD:  DCB 0x6B
3BFADE:  DCB 0x6B
3BFADF:  DCB 0x6B
3BFAE0:  DCB 0x6B
3BFAE1:  DCB 0x6B
3BFAE2:  DCB 0x6B
3BFAE3:  DCB 0x6B
3BFAE4:  DCB 0x6B
3BFAE5:  DCB 0x6B
3BFAE6:  DCB 0x6B
3BFAE7:  DCB 0x6B
3BFAE8:  DCB 0x6B
3BFAE9:  DCB 0x6B
3BFAEA:  DCB 0x6B
3BFAEB:  DCB 0x6B
3BFAEC:  DCB 0x18
3BFAED:  ALIGN 2
3BFAEE:  LDR.W           R1, =(gbFirstPersonRunThisFrame_ptr - 0x3BFAFA); jumptable 003BFABA cases 3,16,18,22,49
3BFAF2:  SUBS            R0, #3; switch 63 cases
3BFAF4:  CMP             R0, #0x3E ; '>'
3BFAF6:  ADD             R1, PC; gbFirstPersonRunThisFrame_ptr
3BFAF8:  LDR             R2, [R1]; gbFirstPersonRunThisFrame ; float
3BFAFA:  MOV.W           R1, #0; CVector *
3BFAFE:  STRB            R1, [R2]
3BFB00:  BHI.W           def_3BFB04; jumptable 003BFB04 default case, cases 5,6,9-13,19-21,23-28,30,31,36-38
3BFB04:  TBH.W           [PC,R0,LSL#1]; switch jump
3BFB08:  DCW 0x52; jump table for switch statement
3BFB0A:  DCW 0x5E
3BFB0C:  DCW 0x67
3BFB0E:  DCW 0x67
3BFB10:  DCW 0x4D
3BFB12:  DCW 0x78
3BFB14:  DCW 0x67
3BFB16:  DCW 0x67
3BFB18:  DCW 0x67
3BFB1A:  DCW 0x67
3BFB1C:  DCW 0x67
3BFB1E:  DCW 0x7A
3BFB20:  DCW 0x7E
3BFB22:  DCW 0x83
3BFB24:  DCW 0x8A
3BFB26:  DCW 0x52
3BFB28:  DCW 0x67
3BFB2A:  DCW 0x67
3BFB2C:  DCW 0x67
3BFB2E:  DCW 0x52
3BFB30:  DCW 0x67
3BFB32:  DCW 0x67
3BFB34:  DCW 0x67
3BFB36:  DCW 0x67
3BFB38:  DCW 0x67
3BFB3A:  DCW 0x67
3BFB3C:  DCW 0x95
3BFB3E:  DCW 0x67
3BFB40:  DCW 0x67
3BFB42:  DCW 0xA2
3BFB44:  DCW 0xF7
3BFB46:  DCW 0x4D
3BFB48:  DCW 0xA6
3BFB4A:  DCW 0x67
3BFB4C:  DCW 0x67
3BFB4E:  DCW 0x67
3BFB50:  DCW 0x3F
3BFB52:  DCW 0x3F
3BFB54:  DCW 0x3F
3BFB56:  DCW 0x3F
3BFB58:  DCW 0x3F
3BFB5A:  DCW 0xAB
3BFB5C:  DCW 0x4D
3BFB5E:  DCW 0x4D
3BFB60:  DCW 0xAF
3BFB62:  DCW 0xB3
3BFB64:  DCW 0xB7
3BFB66:  DCW 0xBB
3BFB68:  DCW 0xBF
3BFB6A:  DCW 0x3F
3BFB6C:  DCW 0x59
3BFB6E:  DCW 0xC5
3BFB70:  DCW 0x59
3BFB72:  DCW 0xC9
3BFB74:  DCW 0xCE
3BFB76:  DCW 0xD3
3BFB78:  DCW 0xD8
3BFB7A:  DCW 0xDD
3BFB7C:  DCW 0xE1
3BFB7E:  DCW 0xE9
3BFB80:  DCW 0xEE
3BFB82:  DCW 0xF3
3BFB84:  DCW 0x59
3BFB86:  VMOV            R2, S16; jumptable 003BFB04 cases 39-43,52
3BFB8A:  ADD             R1, SP, #0x90+var_80; CVector *
3BFB8C:  MOV             R0, R4; this
3BFB8E:  BLX             j__ZN4CCam25Process_1rstPersonPedOnPCERK7CVectorfff; CCam::Process_1rstPersonPedOnPC(CVector const&,float,float,float)
3BFB92:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFB94:  LDR.W           R1, =(_ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr - 0x3BFB9E); jumptable 003BFABA default case, cases 4-15,17,19-21,23-48
3BFB98:  MOVS            R2, #0
3BFB9A:  ADD             R1, PC; _ZN12CPostEffects30m_bSpeedFXUserFlagCurrentFrameE_ptr
3BFB9C:  LDR             R1, [R1]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame ...
3BFB9E:  STRB            R2, [R1]; CPostEffects::m_bSpeedFXUserFlagCurrentFrame
3BFBA0:  B               loc_3BFAEE; jumptable 003BFABA cases 3,16,18,22,49
3BFBA2:  ADD             R1, SP, #0x90+var_80; jumptable 003BFB04 cases 7,34,45,46
3BFBA4:  MOV             R0, R4; this
3BFBA6:  BLX             j__ZN4CCam21Process_M16_1stPersonERK7CVectorfff; CCam::Process_M16_1stPerson(CVector const&,float,float,float)
3BFBAA:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFBAC:  MOVS            R0, #0; jumptable 003BFB04 cases 3,18,22
3BFBAE:  ADD             R1, SP, #0x90+var_80; CVector *
3BFBB0:  STR             R0, [SP,#0x90+var_8C]; bool
3BFBB2:  MOV             R0, R4; this
3BFBB4:  BLX             j__ZN4CCam20Process_FollowCar_SAERK7CVectorfffb; CCam::Process_FollowCar_SA(CVector const&,float,float,float,bool)
3BFBB8:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFBBA:  ADD             R1, SP, #0x90+var_80; jumptable 003BFB04 cases 53,55,65
3BFBBC:  MOV             R0, R4; this
3BFBBE:  BLX             j__ZN4CCam17Process_AimWeaponERK7CVectorfff; CCam::Process_AimWeapon(CVector const&,float,float,float)
3BFBC2:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFBC4:  BLX             j__ZN4CHID12GetInputTypeEv; jumptable 003BFB04 case 4
3BFBC8:  MOVS            R0, #0
3BFBCA:  ADD             R1, SP, #0x90+var_80; CVector *
3BFBCC:  STR             R0, [SP,#0x90+var_8C]; bool
3BFBCE:  MOV             R0, R4; this
3BFBD0:  BLX             j__ZN4CCam20Process_FollowPed_SAERK7CVectorfffb; CCam::Process_FollowPed_SA(CVector const&,float,float,float,bool)
3BFBD4:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFBD6:  ADR.W           R0, dword_3C0090; jumptable 003BFB04 default case, cases 5,6,9-13,19-21,23-28,30,31,36-38
3BFBDA:  STRD.W          R1, R1, [R4,#0x178]
3BFBDE:  VLD1.64         {D16-D17}, [R0@128]
3BFBE2:  MOV.W           R0, #0x3F800000
3BFBE6:  STRD.W          R1, R1, [R4,#0x18C]
3BFBEA:  STR.W           R0, [R4,#0x194]
3BFBEE:  ADD.W           R0, R4, #0x168
3BFBF2:  VST1.32         {D16-D17}, [R0]
3BFBF6:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFBF8:  MOVS            R0, #0; jumptable 003BFB04 case 8
3BFBFA:  B               loc_3BFC88
3BFBFC:  MOV             R0, R4; jumptable 003BFB04 case 14
3BFBFE:  BLX             j__ZN4CCam16Process_WheelCamERK7CVectorfff; CCam::Process_WheelCam(CVector const&,float,float,float)
3BFC02:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC04:  ADD             R1, SP, #0x90+var_80; jumptable 003BFB04 case 15
3BFC06:  MOV             R0, R4; this
3BFC08:  BLX             j__ZN4CCam13Process_FixedERK7CVectorfff; CCam::Process_Fixed(CVector const&,float,float,float)
3BFC0C:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC0E:  VMOV            R2, S16; jumptable 003BFB04 case 16
3BFC12:  ADD             R1, SP, #0x90+var_80; CVector *
3BFC14:  MOV             R0, R4; this
3BFC16:  BLX             j__ZN4CCam17Process_1stPersonERK7CVectorfff; CCam::Process_1stPerson(CVector const&,float,float,float)
3BFC1A:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC1C:  VMOV            R2, S16; jumptable 003BFB04 case 17
3BFC20:  LDR.W           R3, [R4,#0xAC]; float
3BFC24:  ADD             R1, SP, #0x90+var_80; CVector *
3BFC26:  MOV             R0, R4; this
3BFC28:  VSTR            S18, [SP,#0x90+var_90]
3BFC2C:  BLX             j__ZN4CCam13Process_FlyByERK7CVectorfff; CCam::Process_FlyBy(CVector const&,float,float,float)
3BFC30:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC32:  MOV             R0, R4; jumptable 003BFB04 case 29
3BFC34:  BLX             j__ZN4CCam19ProcessPedsDeadBabyEv; CCam::ProcessPedsDeadBaby(void)
3BFC38:  LDR.W           R0, =(TheCamera_ptr - 0x3BFC42)
3BFC3C:  MOVS            R1, #0
3BFC3E:  ADD             R0, PC; TheCamera_ptr
3BFC40:  LDR             R0, [R0]; TheCamera
3BFC42:  STRB.W          R1, [R0,#(byte_951FCE - 0x951FA8)]
3BFC46:  STRB.W          R1, [R0,#(byte_951FCC - 0x951FA8)]
3BFC4A:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC4C:  MOV             R0, R4; jumptable 003BFB04 case 32
3BFC4E:  BLX             j__ZN4CCam19ProcessArrestCamOneEv; CCam::ProcessArrestCamOne(void)
3BFC52:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC54:  ADD             R1, SP, #0x90+var_80; jumptable 003BFB04 case 35
3BFC56:  MOV             R0, R4; this
3BFC58:  BLX             j__ZN4CCam29Process_SpecialFixedForSyphonERK7CVectorfff; CCam::Process_SpecialFixedForSyphon(CVector const&,float,float,float)
3BFC5C:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC5E:  MOV             R0, R4; jumptable 003BFB04 case 44
3BFC60:  BLX             j__ZN4CCam14Process_EditorERK7CVectorfff; CCam::Process_Editor(CVector const&,float,float,float)
3BFC64:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC66:  MOV             R0, R4; jumptable 003BFB04 case 47
3BFC68:  BLX             j__ZN4CCam19Process_AttachedCamEv; CCam::Process_AttachedCam(void)
3BFC6C:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC6E:  MOV             R0, R4; jumptable 003BFB04 case 48
3BFC70:  BLX             j__ZN4CCam21Process_Cam_TwoPlayerEv; CCam::Process_Cam_TwoPlayer(void)
3BFC74:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC76:  MOV             R0, R4; jumptable 003BFB04 case 49
3BFC78:  BLX             j__ZN4CCam38Process_Cam_TwoPlayer_InCarAndShootingEv; CCam::Process_Cam_TwoPlayer_InCarAndShooting(void)
3BFC7C:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC7E:  MOV             R0, R4; jumptable 003BFB04 case 50
3BFC80:  BLX             j__ZN4CCam35Process_Cam_TwoPlayer_Separate_CarsEv; CCam::Process_Cam_TwoPlayer_Separate_Cars(void)
3BFC84:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC86:  MOVS            R0, #1; jumptable 003BFB04 case 51
3BFC88:  STR             R0, [SP,#0x90+var_8C]; bool
3BFC8A:  MOV             R0, R4; this
3BFC8C:  BLX             j__ZN4CCam14Process_RocketERK7CVectorfffb; CCam::Process_Rocket(CVector const&,float,float,float,bool)
3BFC90:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC92:  MOV             R0, R4; jumptable 003BFB04 case 54
3BFC94:  BLX             j__ZN4CCam43Process_Cam_TwoPlayer_Separate_Cars_TopDownEv; CCam::Process_Cam_TwoPlayer_Separate_Cars_TopDown(void)
3BFC98:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFC9A:  MOV             R0, R4; jumptable 003BFB04 case 56
3BFC9C:  MOVS            R1, #0; bool
3BFC9E:  BLX             j__ZN4CCam23Process_DW_HeliChaseCamEb; CCam::Process_DW_HeliChaseCam(bool)
3BFCA2:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCA4:  MOV             R0, R4; jumptable 003BFB04 case 57
3BFCA6:  MOVS            R1, #0; bool
3BFCA8:  BLX             j__ZN4CCam20Process_DW_CamManCamEb; CCam::Process_DW_CamManCam(bool)
3BFCAC:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCAE:  MOV             R0, R4; jumptable 003BFB04 case 58
3BFCB0:  MOVS            R1, #0; bool
3BFCB2:  BLX             j__ZN4CCam19Process_DW_BirdyCamEb; CCam::Process_DW_BirdyCam(bool)
3BFCB6:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCB8:  MOV             R0, R4; jumptable 003BFB04 case 59
3BFCBA:  MOVS            R1, #0; bool
3BFCBC:  BLX             j__ZN4CCam26Process_DW_PlaneSpotterCamEb; CCam::Process_DW_PlaneSpotterCam(bool)
3BFCC0:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCC2:  LDR.W           R0, =(TheCamera_ptr - 0x3BFCCA); jumptable 003BFB04 case 60
3BFCC6:  ADD             R0, PC; TheCamera_ptr
3BFCC8:  B               loc_3BFCD0
3BFCCA:  LDR.W           R0, =(TheCamera_ptr - 0x3BFCD2); jumptable 003BFB04 case 61
3BFCCE:  ADD             R0, PC; TheCamera_ptr
3BFCD0:  LDR             R0, [R0]; TheCamera
3BFCD2:  MOVS            R1, #0
3BFCD4:  STRB.W          R1, [R0,#(byte_951FD7 - 0x951FA8)]
3BFCD8:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCDA:  MOV             R0, R4; jumptable 003BFB04 case 62
3BFCDC:  MOVS            R1, #0; bool
3BFCDE:  BLX             j__ZN4CCam20Process_DW_PlaneCam1Eb; CCam::Process_DW_PlaneCam1(bool)
3BFCE2:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCE4:  MOV             R0, R4; jumptable 003BFB04 case 63
3BFCE6:  MOVS            R1, #0; bool
3BFCE8:  BLX             j__ZN4CCam20Process_DW_PlaneCam2Eb; CCam::Process_DW_PlaneCam2(bool)
3BFCEC:  B               loc_3BFCF6; jumptable 003BFB04 case 33
3BFCEE:  MOV             R0, R4; jumptable 003BFB04 case 64
3BFCF0:  MOVS            R1, #0; bool
3BFCF2:  BLX             j__ZN4CCam20Process_DW_PlaneCam3Eb; CCam::Process_DW_PlaneCam3(bool)
3BFCF6:  LDRSH.W         R0, [R4,#0xE]; jumptable 003BFB04 case 33
3BFCFA:  SUB.W           R1, R0, #0x38 ; '8'
3BFCFE:  UXTH            R1, R1
3BFD00:  CMP             R1, #9
3BFD02:  BCC             loc_3BFD12
3BFD04:  LDR.W           R1, =(gDWLastModeForCineyCam_ptr - 0x3BFD10)
3BFD08:  MOV.W           R2, #0xFFFFFFFF; float
3BFD0C:  ADD             R1, PC; gDWLastModeForCineyCam_ptr
3BFD0E:  LDR             R1, [R1]; gDWLastModeForCineyCam
3BFD10:  STR             R2, [R1]
3BFD12:  LDR.W           R1, =(dword_6A9F20 - 0x3BFD1A)
3BFD16:  ADD             R1, PC; dword_6A9F20
3BFD18:  STR             R0, [R1]
3BFD1A:  VLDR            S0, [R4,#0x120]
3BFD1E:  VLDR            S6, [R4,#0x174]
3BFD22:  VLDR            S2, [R4,#0x124]
3BFD26:  VLDR            S8, [R4,#0x178]
3BFD2A:  VSUB.F32        S0, S6, S0
3BFD2E:  VLDR            S4, [R4,#0x128]
3BFD32:  VSUB.F32        S2, S8, S2
3BFD36:  VLDR            S10, [R4,#0x17C]
3BFD3A:  VSUB.F32        S18, S10, S4
3BFD3E:  VMOV            R0, S0; this
3BFD42:  VMUL.F32        S8, S0, S0
3BFD46:  VMOV            R1, S2; float
3BFD4A:  VMUL.F32        S6, S2, S2
3BFD4E:  VADD.F32        S6, S8, S6
3BFD52:  VSQRT.F32       S16, S6
3BFD56:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3BFD5A:  VMOV            R2, S16; float
3BFD5E:  STR             R0, [R4,#0x78]
3BFD60:  VMOV            R1, S18; float
3BFD64:  MOV             R0, R2; this
3BFD66:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3BFD6A:  LDR.W           R1, =(TheCamera_ptr - 0x3BFD78)
3BFD6E:  ADD.W           R5, R4, #0x174
3BFD72:  STR             R0, [R4,#0x7C]
3BFD74:  ADD             R1, PC; TheCamera_ptr
3BFD76:  LDR             R1, [R1]; TheCamera
3BFD78:  LDRB.W          R0, [R1,#(byte_951FFE - 0x951FA8)]
3BFD7C:  CBNZ            R0, loc_3BFD9E
3BFD7E:  ADD.W           R0, R4, #0x7C ; '|'
3BFD82:  ADD.W           R1, R4, #0x78 ; 'x'
3BFD86:  ADD.W           R3, R4, #0x8C
3BFD8A:  ADD.W           R2, R4, #0x120; CVector *
3BFD8E:  STMEA.W         SP, {R0,R1,R3}
3BFD92:  ADD.W           R3, R4, #0x18C; CVector *
3BFD96:  MOV             R0, R4; this
3BFD98:  MOV             R1, R5; CVector *
3BFD9A:  BLX             j__ZN4CCam19KeepTrackOfTheSpeedERK7CVectorS2_S2_RKfS4_S4_; CCam::KeepTrackOfTheSpeed(CVector const&,CVector const&,CVector const&,float const&,float const&,float const&)
3BFD9E:  LDR.W           R0, =(TheCamera_ptr - 0x3BFDAA)
3BFDA2:  MOVS            R1, #0
3BFDA4:  STRB            R1, [R4,#9]
3BFDA6:  ADD             R0, PC; TheCamera_ptr
3BFDA8:  STRH.W          R1, [R4,#7]
3BFDAC:  VLDR            D16, [R5]
3BFDB0:  LDR             R0, [R0]; TheCamera
3BFDB2:  LDR             R1, [R5,#8]
3BFDB4:  STR.W           R1, [R4,#0x188]
3BFDB8:  VSTR            D16, [R4,#0x180]
3BFDBC:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3BFDC0:  ADD.W           R1, R1, R1,LSL#5
3BFDC4:  ADD.W           R0, R0, R1,LSL#4
3BFDC8:  ADD.W           R0, R0, #0x170
3BFDCC:  CMP             R0, R4
3BFDCE:  BNE             loc_3BFDFE
3BFDD0:  LDR             R0, =(dword_6A9F18 - 0x3BFDD6)
3BFDD2:  ADD             R0, PC; dword_6A9F18
3BFDD4:  LDR             R0, [R0]
3BFDD6:  CMP             R0, #2
3BFDD8:  BEQ             loc_3BFDE8
3BFDDA:  CMP             R0, #1
3BFDDC:  BEQ             loc_3BFDEE
3BFDDE:  CBNZ            R0, loc_3BFDF6
3BFDE0:  MOV             R0, R4; this
3BFDE2:  BLX             j__ZN4CCam10LookBehindEv; CCam::LookBehind(void)
3BFDE6:  B               loc_3BFDF6
3BFDE8:  MOV             R0, R4
3BFDEA:  MOVS            R1, #1
3BFDEC:  B               loc_3BFDF2
3BFDEE:  MOV             R0, R4; this
3BFDF0:  MOVS            R1, #0; bool
3BFDF2:  BLX             j__ZN4CCam9LookRightEb; CCam::LookRight(bool)
3BFDF6:  LDR             R0, =(dword_6A9F18 - 0x3BFDFC)
3BFDF8:  ADD             R0, PC; dword_6A9F18
3BFDFA:  LDR             R0, [R0]
3BFDFC:  STR             R0, [R4,#0x20]
3BFDFE:  LDR             R0, =(TheCamera_ptr - 0x3BFE04)
3BFE00:  ADD             R0, PC; TheCamera_ptr
3BFE02:  LDR             R0, [R0]; TheCamera
3BFE04:  LDRB.W          R0, [R0,#(byte_952BE5 - 0x951FA8)]
3BFE08:  CBZ             R0, loc_3BFE1E
3BFE0A:  LDR             R0, =(TheCamera_ptr - 0x3BFE10)
3BFE0C:  ADD             R0, PC; TheCamera_ptr
3BFE0E:  LDR             R0, [R0]; TheCamera
3BFE10:  LDR.W           R1, [R0,#(dword_952BE8 - 0x951FA8)]
3BFE14:  STR.W           R1, [R4,#0x8C]
3BFE18:  MOVS            R1, #0
3BFE1A:  STRB.W          R1, [R0,#(byte_952BE5 - 0x951FA8)]
3BFE1E:  LDR             R0, =(TheCamera_ptr - 0x3BFE24)
3BFE20:  ADD             R0, PC; TheCamera_ptr
3BFE22:  LDR             R0, [R0]; TheCamera
3BFE24:  LDRB.W          R0, [R0,#(byte_952C1C - 0x951FA8)]
3BFE28:  CBZ             R0, loc_3BFE48
3BFE2A:  LDR             R0, =(TheCamera_ptr - 0x3BFE30)
3BFE2C:  ADD             R0, PC; TheCamera_ptr
3BFE2E:  LDR             R0, [R0]; TheCamera
3BFE30:  ADDW            R2, R0, #0xC68
3BFE34:  LDR.W           R1, [R0,#(dword_952C18 - 0x951FA8)]
3BFE38:  VLDR            D16, [R2]
3BFE3C:  STR             R1, [R5,#8]
3BFE3E:  MOVS            R1, #0
3BFE40:  VSTR            D16, [R5]
3BFE44:  STRB.W          R1, [R0,#(byte_952C1C - 0x951FA8)]
3BFE48:  LDR             R0, =(TheCamera_ptr - 0x3BFE4E)
3BFE4A:  ADD             R0, PC; TheCamera_ptr
3BFE4C:  LDR             R0, [R0]; TheCamera
3BFE4E:  LDRB.W          R0, [R0,#(byte_952BBC - 0x951FA8)]
3BFE52:  CMP             R0, #0
3BFE54:  BEQ             loc_3BFF22
3BFE56:  LDR             R0, =(TheCamera_ptr - 0x3BFE64)
3BFE58:  ADD.W           R5, R4, #0x168
3BFE5C:  VLDR            S0, [R4,#0x174]
3BFE60:  ADD             R0, PC; TheCamera_ptr
3BFE62:  VLDR            S2, [R4,#0x178]
3BFE66:  VLDR            S4, [R4,#0x17C]
3BFE6A:  LDR             R0, [R0]; TheCamera
3BFE6C:  ADDW            R1, R0, #0xC0C
3BFE70:  ADDW            R2, R0, #0xC08
3BFE74:  ADD.W           R0, R0, #0xC10
3BFE78:  VLDR            S6, [R2]
3BFE7C:  VLDR            S8, [R0]
3BFE80:  MOV             R0, R5; this
3BFE82:  VLDR            S10, [R1]
3BFE86:  VSUB.F32        S0, S6, S0
3BFE8A:  VSUB.F32        S4, S8, S4
3BFE8E:  VSUB.F32        S2, S10, S2
3BFE92:  VSTR            S0, [R4,#0x168]
3BFE96:  VSTR            S2, [R4,#0x16C]
3BFE9A:  VSTR            S4, [R4,#0x170]
3BFE9E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BFEA2:  MOV.W           R8, #0
3BFEA6:  MOV.W           R0, #0x3F800000
3BFEAA:  STRD.W          R8, R8, [R4,#0x18C]
3BFEAE:  STR.W           R0, [R4,#0x194]
3BFEB2:  MOV             R0, R5; this
3BFEB4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BFEB8:  VLDR            S0, [R4,#0x168]
3BFEBC:  ADD.W           R6, R4, #0x18C
3BFEC0:  VCMP.F32        S0, #0.0
3BFEC4:  VMRS            APSR_nzcv, FPSCR
3BFEC8:  BNE             loc_3BFEE4
3BFECA:  VLDR            S0, [R4,#0x16C]
3BFECE:  VCMP.F32        S0, #0.0
3BFED2:  VMRS            APSR_nzcv, FPSCR
3BFED6:  ITTT EQ
3BFED8:  MOVWEQ          R0, #0xB717
3BFEDC:  MOVTEQ          R0, #0x38D1
3BFEE0:  STRDEQ.W        R0, R0, [R4,#0x168]
3BFEE4:  ADD             R0, SP, #0x90+var_70; CVector *
3BFEE6:  MOV             R1, R5; CVector *
3BFEE8:  MOV             R2, R6
3BFEEA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3BFEEE:  ADD             R4, SP, #0x90+var_60
3BFEF0:  LDR             R0, [SP,#0x90+var_68]
3BFEF2:  VLDR            D16, [SP,#0x90+var_70]
3BFEF6:  STR             R0, [SP,#0x90+var_58]
3BFEF8:  MOV             R0, R4; this
3BFEFA:  VSTR            D16, [SP,#0x90+var_60]
3BFEFE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BFF02:  ADD             R0, SP, #0x90+var_70; CVector *
3BFF04:  MOV             R1, R4; CVector *
3BFF06:  MOV             R2, R5
3BFF08:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3BFF0C:  LDR             R0, =(TheCamera_ptr - 0x3BFF16)
3BFF0E:  VLDR            D16, [SP,#0x90+var_70]
3BFF12:  ADD             R0, PC; TheCamera_ptr
3BFF14:  LDR             R1, [SP,#0x90+var_68]
3BFF16:  STR             R1, [R6,#8]
3BFF18:  LDR             R0, [R0]; TheCamera
3BFF1A:  VSTR            D16, [R6]
3BFF1E:  STRB.W          R8, [R0,#(byte_952BBC - 0x951FA8)]
3BFF22:  ADD             SP, SP, #0x40 ; '@'
3BFF24:  VPOP            {D8-D15}
3BFF28:  POP.W           {R8}
3BFF2C:  POP             {R4-R7,PC}
3BFF2E:  CMP             R1, #3
3BFF30:  BEQ.W           loc_3BF994
3BFF34:  LDR             R0, =(gCurDistForCam_ptr - 0x3BFF3A)
3BFF36:  ADD             R0, PC; gCurDistForCam_ptr
3BFF38:  B               loc_3BF98C
3BFF3A:  LDR             R0, =(TheCamera_ptr - 0x3BFF40)
3BFF3C:  ADD             R0, PC; TheCamera_ptr
3BFF3E:  LDR             R0, [R0]; TheCamera
3BFF40:  LDRB            R1, [R0,#(word_951FC2 - 0x951FA8)]
3BFF42:  LDRB            R0, [R0,#(word_951FC2+1 - 0x951FA8)]
3BFF44:  ORRS            R0, R1
3BFF46:  LSLS            R0, R0, #0x18
3BFF48:  BEQ.W           loc_3BF5C4
3BFF4C:  VLDR            S0, =0.0
3BFF50:  VLDR            S18, [SP,#0x90+var_60]
3BFF54:  VLDR            S16, [SP,#0x90+var_60+4]
3BFF58:  VMOV.F32        S2, S0
3BFF5C:  LDR             R0, [SP,#0x90+var_58]
3BFF5E:  LDR             R1, =(dword_952D58 - 0x3BFF66)
3BFF60:  LDR             R2, =(dword_952D64 - 0x3BFF6C)
3BFF62:  ADD             R1, PC; dword_952D58
3BFF64:  VSTR            S16, [SP,#0x90+var_80+4]
3BFF68:  ADD             R2, PC; dword_952D64
3BFF6A:  VSTR            S18, [SP,#0x90+var_80]
3BFF6E:  VSTR            S18, [R1]
3BFF72:  VSTR            S16, [R1,#4]
3BFF76:  STR             R0, [R1,#(dword_952D60 - 0x952D58)]
3BFF78:  MOVS            R1, #0
3BFF7A:  VSTR            S0, [R2]
3BFF7E:  VSTR            S2, [R2,#4]
3BFF82:  STR             R1, [R2,#(dword_952D6C - 0x952D64)]
3BFF84:  STR             R0, [SP,#0x90+var_78]
3BFF86:  LDR.W           R6, [R8]
3BFF8A:  LDR             R0, [R6,#0x14]
3BFF8C:  CMP             R0, #0
3BFF8E:  BNE.W           loc_3BF448
3BFF92:  B.W             loc_3BF438
3BFF96:  LDR             R0, [R4,#0x20]
3BFF98:  CMP             R0, #3
3BFF9A:  BEQ.W           loc_3BF994
3BFF9E:  LDR             R0, =(TheCamera_ptr - 0x3BFFA6)
3BFFA0:  MOVS            R1, #1
3BFFA2:  ADD             R0, PC; TheCamera_ptr
3BFFA4:  LDR             R0, [R0]; TheCamera
3BFFA6:  STRB.W          R1, [R0,#(byte_951FD0 - 0x951FA8)]
3BFFAA:  B               loc_3BF994
3BFFAC:  DCD TheCamera_ptr - 0x3BF2CC
3BFFB0:  DCD g_InterestingEvents_ptr - 0x3BF2CE
3BFFB4:  DCD gIdleCam_ptr - 0x3BF2FE
3BFFB8:  DCD g_InterestingEvents_ptr - 0x3BF300
3BFFBC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3BFFC2)
3BFFBE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3BFFC0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3BFFC2:  VLDR            S16, [R0]
3BFFC6:  LDR             R0, =(PLAYERPED_LEVEL_SMOOTHING_CONST_INV_ptr - 0x3BFFD0)
3BFFC8:  VMOV            R6, S16
3BFFCC:  ADD             R0, PC; PLAYERPED_LEVEL_SMOOTHING_CONST_INV_ptr
3BFFCE:  LDR             R0, [R0]; PLAYERPED_LEVEL_SMOOTHING_CONST_INV
3BFFD0:  LDR             R0, [R0]; x
3BFFD2:  MOV             R1, R6; y
3BFFD4:  BLX             powf
3BFFD8:  VMOV.F32        S20, #1.0
3BFFDC:  LDR             R1, =(dword_952D64 - 0x3BFFE8)
3BFFDE:  VMOV            S0, R0
3BFFE2:  LDR             R0, =(dword_952D58 - 0x3BFFEE)
3BFFE4:  ADD             R1, PC; dword_952D64
3BFFE6:  VLDR            S8, [SP,#0x90+var_60]
3BFFEA:  ADD             R0, PC; dword_952D58
3BFFEC:  VLDR            S10, [SP,#0x90+var_60+4]
3BFFF0:  VLDR            S22, [R1]
3BFFF4:  VLDR            S24, [R1,#4]
3BFFF8:  MOV             R1, R6; y
3BFFFA:  VMUL.F32        S4, S16, S22
3BFFFE:  VLDR            S26, [R0]
3C0002:  VSUB.F32        S0, S20, S0
3C0006:  VLDR            S28, [R0,#4]
3C000A:  VMUL.F32        S2, S16, S24
3C000E:  LDR             R0, =(PLAYERPED_TREND_SMOOTHING_CONST_INV_ptr - 0x3C0018)
3C0010:  VMAX.F32        D6, D8, D10
3C0014:  ADD             R0, PC; PLAYERPED_TREND_SMOOTHING_CONST_INV_ptr
3C0016:  LDR             R0, [R0]; PLAYERPED_TREND_SMOOTHING_CONST_INV
3C0018:  VADD.F32        S4, S4, S26
3C001C:  VSUB.F32        S6, S20, S0
3C0020:  VADD.F32        S2, S2, S28
3C0024:  LDR             R0, [R0]; x
3C0026:  VMUL.F32        S10, S0, S10
3C002A:  VMUL.F32        S0, S0, S8
3C002E:  VDIV.F32        S30, S20, S12
3C0032:  VMUL.F32        S2, S6, S2
3C0036:  VMUL.F32        S4, S6, S4
3C003A:  VADD.F32        S16, S10, S2
3C003E:  VADD.F32        S18, S0, S4
3C0042:  BLX             powf
3C0046:  VMOV            S0, R0
3C004A:  LDR             R0, [SP,#0x90+var_58]
3C004C:  VSUB.F32        S2, S16, S28
3C0050:  VSUB.F32        S0, S20, S0
3C0054:  VSUB.F32        S4, S18, S26
3C0058:  VMUL.F32        S2, S0, S2
3C005C:  VSUB.F32        S6, S20, S0
3C0060:  VMUL.F32        S0, S0, S4
3C0064:  VMUL.F32        S2, S30, S2
3C0068:  VMUL.F32        S4, S6, S24
3C006C:  VMUL.F32        S6, S6, S22
3C0070:  VMUL.F32        S0, S30, S0
3C0074:  VADD.F32        S2, S4, S2
3C0078:  VADD.F32        S0, S6, S0
3C007C:  B               loc_3BFF5E
