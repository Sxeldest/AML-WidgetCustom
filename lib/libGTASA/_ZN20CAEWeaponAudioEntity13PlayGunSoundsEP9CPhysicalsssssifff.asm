; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity13PlayGunSoundsEP9CPhysicalsssssifff
; Address            : 0x3BA1BC - 0x3BA7F6
; =========================================================

3BA1BC:  PUSH            {R4-R7,LR}
3BA1BE:  ADD             R7, SP, #0xC
3BA1C0:  PUSH.W          {R8-R11}
3BA1C4:  SUB             SP, SP, #4
3BA1C6:  VPUSH           {D8-D13}
3BA1CA:  SUB             SP, SP, #0x38
3BA1CC:  MOV             R10, R0
3BA1CE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BA1DA)
3BA1D2:  MOV             R5, R2
3BA1D4:  MOV             R9, R1
3BA1D6:  ADD             R0, PC; AEAudioHardware_ptr
3BA1D8:  MOVS            R1, #0x8F; unsigned __int16
3BA1DA:  MOVS            R2, #5; __int16
3BA1DC:  MOV             R6, R3
3BA1DE:  LDR             R0, [R0]; AEAudioHardware ; this
3BA1E0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BA1E4:  CBZ             R0, loc_3BA262
3BA1E6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BA1F2)
3BA1EA:  LDR.W           R1, [R10,#0x98]
3BA1EE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BA1F0:  ADDS            R1, #0x19
3BA1F2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BA1F4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3BA1F6:  CMP             R0, R1
3BA1F8:  BCC.W           loc_3BA700
3BA1FC:  LDR.W           R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BA20C)
3BA200:  MOVW            R8, #0xFFFF
3BA204:  STR.W           R0, [R10,#0x98]
3BA208:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BA20A:  LDR.W           R11, [R7,#arg_C]
3BA20E:  VLDR            S20, [R7,#arg_14]
3BA212:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3BA214:  CMP.W           R11, #0x95
3BA218:  VLDR            S0, [R7,#arg_10]
3BA21C:  LDR             R0, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3BA21E:  LDRSB.W         R0, [R0,R11]
3BA222:  VMOV            S2, R0
3BA226:  VCVT.F32.S32    S2, S2
3BA22A:  BNE             loc_3BA2A0
3BA22C:  LDRSB.W         R1, [R10,#0x7E]
3BA230:  LDR.W           R0, =(gfWeaponPlaneFrequencyVariations_ptr - 0x3BA23E)
3BA234:  ADDS            R1, #1
3BA236:  VLDR            S4, =0.7937
3BA23A:  ADD             R0, PC; gfWeaponPlaneFrequencyVariations_ptr
3BA23C:  VLDR            S16, =1.6
3BA240:  ADD.W           R2, R1, R1,LSR#31
3BA244:  BIC.W           R2, R2, #1
3BA248:  LDR             R0, [R0]; gfWeaponPlaneFrequencyVariations
3BA24A:  SUBS            R1, R1, R2
3BA24C:  STRB.W          R1, [R10,#0x7E]
3BA250:  ADD.W           R0, R0, R1,LSL#2
3BA254:  VLDR            S6, [R0]
3BA258:  VMUL.F32        S4, S6, S4
3BA25C:  VMUL.F32        S20, S4, S20
3BA260:  B               loc_3BA2BE
3BA262:  LDR.W           R0, =(AudioEngine_ptr - 0x3BA26A)
3BA266:  ADD             R0, PC; AudioEngine_ptr
3BA268:  LDR             R0, [R0]; AudioEngine ; this
3BA26A:  BLX             j__ZN12CAudioEngine19IsLoadingTuneActiveEv; CAudioEngine::IsLoadingTuneActive(void)
3BA26E:  CMP             R0, #0
3BA270:  BNE.W           loc_3BA700
3BA274:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BA280)
3BA278:  MOVS            R1, #0x8F; unsigned __int16
3BA27A:  MOVS            R2, #5; __int16
3BA27C:  ADD             R0, PC; AEAudioHardware_ptr
3BA27E:  LDR             R0, [R0]; AEAudioHardware ; this
3BA280:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3BA284:  B               loc_3BA700
3BA286:  ALIGN 4
3BA288:  DCFS 0.7937
3BA28C:  DCFS 1.6
3BA290:  DCFS 1.8
3BA294:  DCFS 0.66
3BA298:  DCFS 0.9
3BA29C:  DCFS -100.0
3BA2A0:  VLDR            S4, =0.7937
3BA2A4:  VMOV.F32        S16, #1.0
3BA2A8:  VLDR            S6, =1.8
3BA2AC:  CMP.W           R11, #0x98
3BA2B0:  VMUL.F32        S4, S20, S4
3BA2B4:  ITT EQ
3BA2B6:  VMOVEQ.F32      S20, S4
3BA2BA:  VMOVEQ.F32      S16, S6
3BA2BE:  VADD.F32        S18, S2, S0
3BA2C2:  UXTH            R0, R5
3BA2C4:  CMP             R0, R8
3BA2C6:  BEQ             loc_3BA344
3BA2C8:  VLDR            S0, =0.66
3BA2CC:  MOVS            R1, #0
3BA2CE:  LDR.W           R0, [R9,#0x14]
3BA2D2:  MOV.W           R4, #0x3F800000
3BA2D6:  VMUL.F32        S0, S16, S0
3BA2DA:  MOV.W           R12, #0x84
3BA2DE:  ADD.W           R2, R0, #0x30 ; '0'
3BA2E2:  CMP             R0, #0
3BA2E4:  IT EQ
3BA2E6:  ADDEQ.W         R2, R9, #4
3BA2EA:  LDRD.W          R0, R3, [R2]
3BA2EE:  LDR             R2, [R2,#8]
3BA2F0:  STRD.W          R4, R1, [SP,#0x88+var_70]
3BA2F4:  ADD.W           R4, R10, #8
3BA2F8:  STRD.W          R12, R1, [SP,#0x88+var_68]
3BA2FC:  STR             R1, [SP,#0x88+var_60]
3BA2FE:  MOVS            R1, #5
3BA300:  VSTR            S18, [SP,#0x88+var_7C]
3BA304:  VSTR            S0, [SP,#0x88+var_78]
3BA308:  VSTR            S20, [SP,#0x88+var_74]
3BA30C:  STRD.W          R0, R3, [SP,#0x88+var_88]
3BA310:  MOV             R0, R4
3BA312:  STR             R2, [SP,#0x88+var_80]
3BA314:  MOV             R2, R5
3BA316:  MOV             R3, R10
3BA318:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA31C:  MOV             R0, R4; this
3BA31E:  MOV             R1, R9; CEntity *
3BA320:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA324:  CMP.W           R11, #0x98
3BA328:  IT NE
3BA32A:  CMPNE.W         R11, #0x96
3BA32E:  BNE             loc_3BA336
3BA330:  MOVS            R0, #6
3BA332:  STR.W           R0, [R10,#0x14]
3BA336:  LDR.W           R0, =(AESoundManager_ptr - 0x3BA340)
3BA33A:  MOV             R1, R4; CAESound *
3BA33C:  ADD             R0, PC; AESoundManager_ptr
3BA33E:  LDR             R0, [R0]; AESoundManager ; this
3BA340:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA344:  UXTH            R0, R6
3BA346:  CMP             R0, R8
3BA348:  BEQ             loc_3BA3C4
3BA34A:  VLDR            S0, =0.9
3BA34E:  MOVS            R1, #0
3BA350:  LDR.W           R0, [R9,#0x14]
3BA354:  MOV.W           R4, #0x3F800000
3BA358:  VMUL.F32        S0, S16, S0
3BA35C:  MOVS            R5, #0x84
3BA35E:  ADD.W           R2, R0, #0x30 ; '0'
3BA362:  CMP             R0, #0
3BA364:  IT EQ
3BA366:  ADDEQ.W         R2, R9, #4
3BA36A:  LDRD.W          R0, R3, [R2]
3BA36E:  LDR             R2, [R2,#8]
3BA370:  STRD.W          R4, R1, [SP,#0x88+var_70]
3BA374:  ADD.W           R4, R10, #8
3BA378:  STRD.W          R5, R1, [SP,#0x88+var_68]
3BA37C:  STR             R1, [SP,#0x88+var_60]
3BA37E:  MOVS            R1, #5
3BA380:  VSTR            S18, [SP,#0x88+var_7C]
3BA384:  VSTR            S0, [SP,#0x88+var_78]
3BA388:  VSTR            S20, [SP,#0x88+var_74]
3BA38C:  STRD.W          R0, R3, [SP,#0x88+var_88]
3BA390:  MOV             R0, R4
3BA392:  STR             R2, [SP,#0x88+var_80]
3BA394:  MOV             R2, R6
3BA396:  MOV             R3, R10
3BA398:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA39C:  MOV             R0, R4; this
3BA39E:  MOV             R1, R9; CEntity *
3BA3A0:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA3A4:  CMP.W           R11, #0x98
3BA3A8:  IT NE
3BA3AA:  CMPNE.W         R11, #0x96
3BA3AE:  BNE             loc_3BA3B6
3BA3B0:  MOVS            R0, #6
3BA3B2:  STR.W           R0, [R10,#0x14]
3BA3B6:  LDR.W           R0, =(AESoundManager_ptr - 0x3BA3C0)
3BA3BA:  MOV             R1, R4; CAESound *
3BA3BC:  ADD             R0, PC; AESoundManager_ptr
3BA3BE:  LDR             R0, [R0]; AESoundManager ; this
3BA3C0:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA3C4:  LDR             R5, [R7,#arg_0]
3BA3C6:  CMP.W           R11, #0x95
3BA3CA:  VLDR            S24, =-100.0
3BA3CE:  BEQ             loc_3BA3D8
3BA3D0:  CMP.W           R11, #0x98
3BA3D4:  BNE.W           loc_3BA70E
3BA3D8:  VMOV.F32        S22, S18
3BA3DC:  MOVW            R0, #0xD70A
3BA3E0:  MOVW            R1, #0xD70A
3BA3E4:  MOVT            R0, #0xBCA3; this
3BA3E8:  MOVT            R1, #0x3CA3; float
3BA3EC:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3BA3F0:  VMOV.F32        S0, #1.0
3BA3F4:  UXTH            R6, R5
3BA3F6:  VMOV            S2, R0
3BA3FA:  CMP             R6, R8
3BA3FC:  VADD.F32        S0, S2, S0
3BA400:  VMUL.F32        S20, S20, S0
3BA404:  BEQ             loc_3BA468
3BA406:  VMOV.F32        S0, #1.25
3BA40A:  MOVS            R0, #0
3BA40C:  MOV.W           R2, #0x3F800000
3BA410:  MOVW            R1, #0x1005
3BA414:  STRD.W          R2, R0, [SP,#0x88+var_70]
3BA418:  ADD.W           R4, R10, #8
3BA41C:  STRD.W          R1, R0, [SP,#0x88+var_68]
3BA420:  MOVS            R1, #0xBF800000
3BA426:  STR             R0, [SP,#0x88+var_60]
3BA428:  VSTR            S20, [SP,#0x88+var_74]
3BA42C:  MOV             R2, R5
3BA42E:  VSTR            S24, [SP,#0x88+var_7C]
3BA432:  MOV             R3, R10
3BA434:  VMUL.F32        S0, S16, S0
3BA438:  STRD.W          R1, R0, [SP,#0x88+var_88]
3BA43C:  STR             R0, [SP,#0x88+var_80]
3BA43E:  MOV             R0, R4
3BA440:  MOVS            R1, #5
3BA442:  VSTR            S0, [SP,#0x88+var_78]
3BA446:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA44A:  CMP.W           R11, #0x98
3BA44E:  IT NE
3BA450:  CMPNE.W         R11, #0x96
3BA454:  BNE             loc_3BA45C
3BA456:  MOVS            R0, #6
3BA458:  STR.W           R0, [R10,#0x14]
3BA45C:  LDR             R0, =(AESoundManager_ptr - 0x3BA464)
3BA45E:  MOV             R1, R4; CAESound *
3BA460:  ADD             R0, PC; AESoundManager_ptr
3BA462:  LDR             R0, [R0]; AESoundManager ; this
3BA464:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA468:  LDR             R0, [R7,#arg_4]
3BA46A:  UXTH            R5, R0
3BA46C:  CMP             R5, R8
3BA46E:  BEQ             loc_3BA4CC
3BA470:  VMOV.F32        S0, #1.25
3BA474:  MOVS            R0, #0
3BA476:  MOV.W           R2, #0x3F800000
3BA47A:  MOVW            R1, #0x1005
3BA47E:  STRD.W          R2, R0, [SP,#0x88+var_70]
3BA482:  ADD.W           R4, R10, #8
3BA486:  STRD.W          R1, R0, [SP,#0x88+var_68]
3BA48A:  MOVS            R1, #5
3BA48C:  STR             R0, [SP,#0x88+var_60]
3BA48E:  MOV             R3, R10
3BA490:  VSTR            S20, [SP,#0x88+var_74]
3BA494:  VSTR            S24, [SP,#0x88+var_7C]
3BA498:  VMUL.F32        S0, S16, S0
3BA49C:  STRD.W          R2, R0, [SP,#0x88+var_88]
3BA4A0:  LDR             R2, [R7,#arg_4]
3BA4A2:  STR             R0, [SP,#0x88+var_80]
3BA4A4:  MOV             R0, R4
3BA4A6:  VSTR            S0, [SP,#0x88+var_78]
3BA4AA:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA4AE:  CMP.W           R11, #0x98
3BA4B2:  IT NE
3BA4B4:  CMPNE.W         R11, #0x96
3BA4B8:  BNE             loc_3BA4C0
3BA4BA:  MOVS            R0, #6
3BA4BC:  STR.W           R0, [R10,#0x14]
3BA4C0:  LDR             R0, =(AESoundManager_ptr - 0x3BA4C8)
3BA4C2:  MOV             R1, R4; CAESound *
3BA4C4:  ADD             R0, PC; AESoundManager_ptr
3BA4C6:  LDR             R0, [R0]; AESoundManager ; this
3BA4C8:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA4CC:  CMP             R6, R8
3BA4CE:  BEQ             loc_3BA548
3BA4D0:  VMOV.F32        S0, #1.25
3BA4D4:  LDR.W           R0, [R9,#0x14]
3BA4D8:  MOVS            R1, #0
3BA4DA:  MOVS            R6, #0x84
3BA4DC:  ADD.W           R2, R0, #0x30 ; '0'
3BA4E0:  CMP             R0, #0
3BA4E2:  IT EQ
3BA4E4:  ADDEQ.W         R2, R9, #4
3BA4E8:  MOV.W           R4, #0x3F800000
3BA4EC:  LDRD.W          R0, R3, [R2]
3BA4F0:  LDR             R2, [R2,#8]
3BA4F2:  STRD.W          R4, R1, [SP,#0x88+var_70]
3BA4F6:  ADD.W           R4, R10, #8
3BA4FA:  VMUL.F32        S0, S16, S0
3BA4FE:  STRD.W          R6, R1, [SP,#0x88+var_68]
3BA502:  STR             R1, [SP,#0x88+var_60]
3BA504:  MOVS            R1, #5
3BA506:  VSTR            S20, [SP,#0x88+var_74]
3BA50A:  VSTR            S22, [SP,#0x88+var_7C]
3BA50E:  STRD.W          R0, R3, [SP,#0x88+var_88]
3BA512:  MOV             R0, R4
3BA514:  STR             R2, [SP,#0x88+var_80]
3BA516:  MOV             R3, R10
3BA518:  LDR             R2, [R7,#arg_0]
3BA51A:  VSTR            S0, [SP,#0x88+var_78]
3BA51E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA522:  MOV             R0, R4; this
3BA524:  MOV             R1, R9; CEntity *
3BA526:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA52A:  CMP.W           R11, #0x98
3BA52E:  IT NE
3BA530:  CMPNE.W         R11, #0x96
3BA534:  BNE             loc_3BA53C
3BA536:  MOVS            R0, #6
3BA538:  STR.W           R0, [R10,#0x14]
3BA53C:  LDR             R0, =(AESoundManager_ptr - 0x3BA544)
3BA53E:  MOV             R1, R4; CAESound *
3BA540:  ADD             R0, PC; AESoundManager_ptr
3BA542:  LDR             R0, [R0]; AESoundManager ; this
3BA544:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA548:  LDR             R4, [R7,#arg_8]
3BA54A:  CMP             R5, R8
3BA54C:  BEQ             loc_3BA5C8
3BA54E:  VMOV.F32        S0, #1.25
3BA552:  LDR.W           R0, [R9,#0x14]
3BA556:  MOVS            R1, #0
3BA558:  MOVS            R6, #0x84
3BA55A:  ADD.W           R2, R0, #0x30 ; '0'
3BA55E:  CMP             R0, #0
3BA560:  IT EQ
3BA562:  ADDEQ.W         R2, R9, #4
3BA566:  MOV.W           R5, #0x3F800000
3BA56A:  LDRD.W          R0, R3, [R2]
3BA56E:  ADD.W           R4, R10, #8
3BA572:  LDR             R2, [R2,#8]
3BA574:  STRD.W          R5, R1, [SP,#0x88+var_70]
3BA578:  VMUL.F32        S0, S16, S0
3BA57C:  STRD.W          R6, R1, [SP,#0x88+var_68]
3BA580:  STR             R1, [SP,#0x88+var_60]
3BA582:  MOVS            R1, #5
3BA584:  VSTR            S20, [SP,#0x88+var_74]
3BA588:  VSTR            S22, [SP,#0x88+var_7C]
3BA58C:  STRD.W          R0, R3, [SP,#0x88+var_88]
3BA590:  MOV             R0, R4
3BA592:  STR             R2, [SP,#0x88+var_80]
3BA594:  MOV             R3, R10
3BA596:  LDR             R2, [R7,#arg_4]
3BA598:  VSTR            S0, [SP,#0x88+var_78]
3BA59C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA5A0:  MOV             R0, R4; this
3BA5A2:  MOV             R1, R9; CEntity *
3BA5A4:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
3BA5A8:  CMP.W           R11, #0x98
3BA5AC:  IT NE
3BA5AE:  CMPNE.W         R11, #0x96
3BA5B2:  BNE             loc_3BA5BA
3BA5B4:  MOVS            R0, #6
3BA5B6:  STR.W           R0, [R10,#0x14]
3BA5BA:  LDR             R0, =(AESoundManager_ptr - 0x3BA5C2)
3BA5BC:  MOV             R1, R4; CAESound *
3BA5BE:  ADD             R0, PC; AESoundManager_ptr
3BA5C0:  LDR             R0, [R0]; AESoundManager ; this
3BA5C2:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA5C6:  LDR             R4, [R7,#arg_8]
3BA5C8:  UXTH            R0, R4
3BA5CA:  CMP             R0, R8
3BA5CC:  BEQ.W           loc_3BA700
3BA5D0:  CMP.W           R11, #0x95
3BA5D4:  IT NE
3BA5D6:  CMPNE.W         R11, #0x98
3BA5DA:  BEQ.W           loc_3BA700
3BA5DE:  MOV.W           R0, #0x3F000000; this
3BA5E2:  VLDR            S20, [R7,#arg_18]
3BA5E6:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3BA5EA:  MOV             R8, R0
3BA5EC:  ADD             R0, SP, #0x88+var_5C; this
3BA5EE:  MOV             R1, R9; CVector *
3BA5F0:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorP10CPlaceable; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CPlaceable *)
3BA5F4:  VLDR            S0, [SP,#0x88+var_5C]
3BA5F8:  VLDR            S2, [SP,#0x88+var_58]
3BA5FC:  VMUL.F32        S0, S0, S0
3BA600:  VLDR            S4, [SP,#0x88+var_54]
3BA604:  VMUL.F32        S2, S2, S2
3BA608:  VMUL.F32        S4, S4, S4
3BA60C:  VADD.F32        S0, S0, S2
3BA610:  VMOV.F32        S2, #3.5
3BA614:  VADD.F32        S0, S0, S4
3BA618:  VMUL.F32        S16, S16, S2
3BA61C:  VSQRT.F32       S0, S0
3BA620:  VDIV.F32        S0, S0, S16
3BA624:  VMOV            R0, S0; this
3BA628:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
3BA62C:  VMOV.F32        S2, #-20.0
3BA630:  VLDR            S0, =1.1892
3BA634:  VMOV            S6, R0
3BA638:  MOVS            R5, #0
3BA63A:  VMUL.F32        S22, S20, S0
3BA63E:  VLDR            S0, =0.0
3BA642:  CMP.W           R8, #0
3BA646:  MOV.W           R0, #0x3F800000
3BA64A:  ADD.W           R6, R10, #8
3BA64E:  MOVW            R1, #0x1405
3BA652:  MOV             R2, R4
3BA654:  MOV             R3, R10
3BA656:  VADD.F32        S2, S18, S2
3BA65A:  VMOV.F32        S4, S22
3BA65E:  IT EQ
3BA660:  VMOVEQ.F32      S4, S20
3BA664:  STRD.W          R0, R5, [SP,#0x88+var_70]
3BA668:  MOVS            R0, #0
3BA66A:  STRD.W          R1, R5, [SP,#0x88+var_68]
3BA66E:  MOVT            R0, #0xBF80
3BA672:  STR             R5, [SP,#0x88+var_60]
3BA674:  VSTR            S4, [SP,#0x88+var_74]
3BA678:  MOVS            R1, #5
3BA67A:  VADD.F32        S2, S2, S6
3BA67E:  VSTR            S16, [SP,#0x88+var_78]
3BA682:  STRD.W          R0, R5, [SP,#0x88+var_88]
3BA686:  MOV             R0, R6
3BA688:  STR             R5, [SP,#0x88+var_80]
3BA68A:  VMIN.F32        D9, D1, D0
3BA68E:  VSTR            S18, [SP,#0x88+var_7C]
3BA692:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA696:  LDR             R0, =(AESoundManager_ptr - 0x3BA6A6)
3BA698:  CMP.W           R11, #0x96
3BA69C:  MOV             R11, R4
3BA69E:  MOV.W           R9, #1
3BA6A2:  ADD             R0, PC; AESoundManager_ptr
3BA6A4:  IT EQ
3BA6A6:  MOVEQ.W         R9, #7
3BA6AA:  MOV             R1, R6; CAESound *
3BA6AC:  STR.W           R9, [R10,#0x14]
3BA6B0:  LDR             R4, [R0]; AESoundManager
3BA6B2:  MOV             R0, R4; this
3BA6B4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA6B8:  MOVW            R0, #0x1405
3BA6BC:  CMP.W           R8, #0
3BA6C0:  STRD.W          R5, R5, [SP,#0x88+var_64]
3BA6C4:  MOV.W           R1, #5
3BA6C8:  STRD.W          R5, R0, [SP,#0x88+var_6C]
3BA6CC:  MOV.W           R0, #0x3F800000
3BA6D0:  STRD.W          R5, R5, [SP,#0x88+var_84]
3BA6D4:  IT EQ
3BA6D6:  VMOVEQ.F32      S20, S22
3BA6DA:  STR             R0, [SP,#0x88+var_70]
3BA6DC:  MOV             R2, R11
3BA6DE:  VSTR            S18, [SP,#0x88+var_7C]
3BA6E2:  MOV             R3, R10
3BA6E4:  VSTR            S16, [SP,#0x88+var_78]
3BA6E8:  VSTR            S20, [SP,#0x88+var_74]
3BA6EC:  STR             R0, [SP,#0x88+var_88]
3BA6EE:  MOV             R0, R6
3BA6F0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BA6F4:  MOV             R0, R4; this
3BA6F6:  MOV             R1, R6; CAESound *
3BA6F8:  STR.W           R9, [R10,#0x14]
3BA6FC:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BA700:  ADD             SP, SP, #0x38 ; '8'
3BA702:  VPOP            {D8-D13}
3BA706:  ADD             SP, SP, #4
3BA708:  POP.W           {R8-R11}
3BA70C:  POP             {R4-R7,PC}
3BA70E:  ADD             R0, SP, #0x88+var_5C; this
3BA710:  MOV             R1, R9; CVector *
3BA712:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorP10CPlaceable; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CPlaceable *)
3BA716:  VLDR            S0, [SP,#0x88+var_5C]
3BA71A:  VLDR            S2, [SP,#0x88+var_58]
3BA71E:  VMUL.F32        S0, S0, S0
3BA722:  VLDR            S4, [SP,#0x88+var_54]
3BA726:  VMUL.F32        S2, S2, S2
3BA72A:  VMUL.F32        S4, S4, S4
3BA72E:  VADD.F32        S0, S0, S2
3BA732:  VMOV.F32        S2, #1.25
3BA736:  VADD.F32        S0, S0, S4
3BA73A:  VMOV.F32        S4, #5.0
3BA73E:  VMUL.F32        S2, S16, S2
3BA742:  VSQRT.F32       S6, S0
3BA746:  VDIV.F32        S0, S4, S16
3BA74A:  VDIV.F32        S26, S6, S2
3BA74E:  VCMPE.F32       S26, S0
3BA752:  VMRS            APSR_nzcv, FPSCR
3BA756:  BLE             loc_3BA7DC
3BA758:  VMOV.F32        S2, #12.0
3BA75C:  VMOV.F32        S22, S18
3BA760:  VDIV.F32        S2, S2, S16
3BA764:  VCMPE.F32       S26, S2
3BA768:  VMRS            APSR_nzcv, FPSCR
3BA76C:  BGE.W           loc_3BA3DC
3BA770:  VSUB.F32        S0, S2, S0
3BA774:  VSUB.F32        S2, S2, S26
3BA778:  VMOV.F32        S4, #1.0
3BA77C:  VDIV.F32        S0, S2, S0
3BA780:  VLDR            S2, =0.7071
3BA784:  VMUL.F32        S6, S0, S2
3BA788:  VSUB.F32        S0, S4, S0
3BA78C:  VLDR            S4, =0.2929
3BA790:  VMOV            R0, S6; x
3BA794:  VMUL.F32        S0, S0, S4
3BA798:  VADD.F32        S22, S0, S2
3BA79C:  BLX             log10f
3BA7A0:  VMOV            R1, S26; float
3BA7A4:  VMOV            R4, S22
3BA7A8:  VMOV.F32        S22, #20.0
3BA7AC:  VMOV            S0, R0
3BA7B0:  VMUL.F32        S24, S0, S22
3BA7B4:  MOV             R0, R1; this
3BA7B6:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
3BA7BA:  MOV             R6, R0
3BA7BC:  MOV             R0, R4; x
3BA7BE:  BLX             log10f
3BA7C2:  VMOV            S0, R0
3BA7C6:  VADD.F32        S2, S18, S24
3BA7CA:  VMUL.F32        S0, S0, S22
3BA7CE:  VMOV            S4, R6
3BA7D2:  VADD.F32        S24, S4, S2
3BA7D6:  VADD.F32        S22, S18, S0
3BA7DA:  B               loc_3BA3DC
3BA7DC:  VMOV            R0, S26; this
3BA7E0:  VMOV.F32        S0, #-3.0
3BA7E4:  VADD.F32        S22, S18, S0
3BA7E8:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
3BA7EC:  VMOV            S0, R0
3BA7F0:  VADD.F32        S24, S22, S0
3BA7F4:  B               loc_3BA3DC
