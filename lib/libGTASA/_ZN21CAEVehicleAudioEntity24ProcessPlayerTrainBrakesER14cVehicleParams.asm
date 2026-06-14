; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity24ProcessPlayerTrainBrakesER14cVehicleParams
; Address            : 0x3AF46C - 0x3AF638
; =========================================================

3AF46C:  PUSH            {R4-R7,LR}
3AF46E:  ADD             R7, SP, #0xC
3AF470:  PUSH.W          {R8,R9,R11}
3AF474:  VPUSH           {D8-D10}
3AF478:  SUB             SP, SP, #0x78
3AF47A:  MOV             R9, R0
3AF47C:  MOVS            R0, #0; this
3AF47E:  MOV             R6, R1
3AF480:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3AF484:  LDR             R4, [R6,#0x10]
3AF486:  MOV             R5, R0
3AF488:  VLDR            S18, =0.0
3AF48C:  VMOV.F32        S2, #1.0
3AF490:  MOVW            R8, #0xFFFF
3AF494:  LDRH.W          R0, [R4,#0x5CC]
3AF498:  VMOV.F32        S20, S18
3AF49C:  VMOV.F32        S4, S18
3AF4A0:  TST.W           R0, #0x100
3AF4A4:  ITT EQ
3AF4A6:  ADDEQ.W         R1, R4, #0x5B8
3AF4AA:  VLDREQ          S20, [R1]
3AF4AE:  LSLS            R0, R0, #0x19
3AF4B0:  VNEG.F32        S0, S20
3AF4B4:  IT PL
3AF4B6:  VMOVPL.F32      S20, S0
3AF4BA:  VABS.F32        S0, S20
3AF4BE:  VCMPE.F32       S0, S2
3AF4C2:  VMRS            APSR_nzcv, FPSCR
3AF4C6:  VCMPE.F32       S0, #0.0
3AF4CA:  VMOV.F32        S16, S0
3AF4CE:  IT GT
3AF4D0:  VMOVGT.F32      S4, S2
3AF4D4:  VMRS            APSR_nzcv, FPSCR
3AF4D8:  VCMPE.F32       S0, S2
3AF4DC:  IT LT
3AF4DE:  VMOVLT.F32      S2, S4
3AF4E2:  VMRS            APSR_nzcv, FPSCR
3AF4E6:  VCMPE.F32       S0, #0.0
3AF4EA:  IT GT
3AF4EC:  VMOVGT.F32      S16, S2
3AF4F0:  VMRS            APSR_nzcv, FPSCR
3AF4F4:  IT LT
3AF4F6:  VMOVLT.F32      S16, S2
3AF4FA:  LDRB.W          R0, [R4,#0x3A]
3AF4FE:  CMP             R0, #7
3AF500:  BHI             loc_3AF546
3AF502:  VLDR            S2, =0.001
3AF506:  MOV             R0, R5; this
3AF508:  VCMPE.F32       S0, S2
3AF50C:  VMRS            APSR_nzcv, FPSCR
3AF510:  BGE             loc_3AF51E
3AF512:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AF516:  MOV             R0, R5; this
3AF518:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3AF51C:  B               loc_3AF546
3AF51E:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
3AF522:  VCMPE.F32       S20, #0.0
3AF526:  MOV             R6, R0
3AF528:  MOV             R0, R5; this
3AF52A:  VMRS            APSR_nzcv, FPSCR
3AF52E:  BLE             loc_3AF53A
3AF530:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AF534:  VMOV            S0, R6
3AF538:  B               loc_3AF542
3AF53A:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
3AF53E:  VMOV            S0, R0
3AF542:  VCVT.F32.S32    S18, S0
3AF546:  LDRH.W          R0, [R4,#0x5CC]
3AF54A:  TST.W           R0, #0x100
3AF54E:  BNE             loc_3AF566
3AF550:  LSLS            R0, R0, #0x1C
3AF552:  BMI             loc_3AF578
3AF554:  MOVS            R0, #0
3AF556:  STR             R0, [SP,#0xA8+var_9C]
3AF558:  LDRH.W          R1, [R9,#0xDE]
3AF55C:  CMP             R1, R8
3AF55E:  BEQ             loc_3AF5DC
3AF560:  LDR             R0, =(AEAudioHardware_ptr - 0x3AF566)
3AF562:  ADD             R0, PC; AEAudioHardware_ptr
3AF564:  B               loc_3AF5B4
3AF566:  MOVS            R0, #0
3AF568:  STR             R0, [SP,#0xA8+var_9C]
3AF56A:  LDRH.W          R1, [R9,#0xDE]
3AF56E:  CMP             R1, R8
3AF570:  BEQ             loc_3AF5DC
3AF572:  LDR             R0, =(AEAudioHardware_ptr - 0x3AF578)
3AF574:  ADD             R0, PC; AEAudioHardware_ptr
3AF576:  B               loc_3AF5B4
3AF578:  VMOV            R0, S16; this
3AF57C:  LDR             R2, =(unk_6A9D3C - 0x3AF584)
3AF57E:  MOVS            R1, #4; float
3AF580:  ADD             R2, PC; unk_6A9D3C ; __int16
3AF582:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3AF586:  VLDR            S0, =255.0
3AF58A:  VMOV            S2, R0
3AF58E:  VDIV.F32        S0, S18, S0
3AF592:  VMUL.F32        S0, S0, S2
3AF596:  VLDR            S2, =-100.0
3AF59A:  VCMPE.F32       S0, S2
3AF59E:  VMRS            APSR_nzcv, FPSCR
3AF5A2:  BGE             loc_3AF5EE
3AF5A4:  MOVS            R0, #0
3AF5A6:  STR             R0, [SP,#0xA8+var_9C]
3AF5A8:  LDRH.W          R1, [R9,#0xDE]; unsigned __int16
3AF5AC:  CMP             R1, R8
3AF5AE:  BEQ             loc_3AF5DC
3AF5B0:  LDR             R0, =(AEAudioHardware_ptr - 0x3AF5B6)
3AF5B2:  ADD             R0, PC; AEAudioHardware_ptr
3AF5B4:  LDR             R0, [R0]; AEAudioHardware ; this
3AF5B6:  MOVS            R2, #0x28 ; '('; __int16
3AF5B8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3AF5BC:  CMP             R0, #0
3AF5BE:  ITT NE
3AF5C0:  LDRHNE.W        R0, [R9,#0x156]
3AF5C4:  CMPNE           R0, R8
3AF5C6:  BEQ             loc_3AF5DC
3AF5C8:  LDRH.W          R0, [R9,#0x20C]
3AF5CC:  CMP             R0, #0
3AF5CE:  ITT NE
3AF5D0:  ADDNE.W         R0, R9, #0x184; this
3AF5D4:  BLXNE           j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3AF5D8:  STRH.W          R8, [R9,#0x156]
3AF5DC:  ADD             R0, SP, #0xA8+var_A4; this
3AF5DE:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3AF5E2:  ADD             SP, SP, #0x78 ; 'x'
3AF5E4:  VPOP            {D8-D10}
3AF5E8:  POP.W           {R8,R9,R11}
3AF5EC:  POP             {R4-R7,PC}
3AF5EE:  VMOV            R0, S0; this
3AF5F2:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AF5F6:  VMOV.F32        S0, #20.0
3AF5FA:  VLDR            S2, =0.32
3AF5FE:  VMOV            S4, R0
3AF602:  MOV             R0, R9; this
3AF604:  VMUL.F32        S2, S16, S2
3AF608:  MOVS            R1, #0; __int16
3AF60A:  VMOV.F32        S6, #9.0
3AF60E:  VMUL.F32        S0, S4, S0
3AF612:  VLDR            S4, =0.68
3AF616:  VADD.F32        S2, S2, S4
3AF61A:  VADD.F32        S0, S0, S6
3AF61E:  VMOV            R2, S2; float
3AF622:  VMOV            R3, S0; float
3AF626:  ADD             SP, SP, #0x78 ; 'x'
3AF628:  VPOP            {D8-D10}
3AF62C:  POP.W           {R8,R9,R11}
3AF630:  POP.W           {R4-R7,LR}
3AF634:  B.W             _ZN21CAEVehicleAudioEntity19PlayTrainBrakeSoundEsff; CAEVehicleAudioEntity::PlayTrainBrakeSound(short,float,float)
