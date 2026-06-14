; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity16UpdateTrainSoundEsssff
; Address            : 0x3B83F4 - 0x3B8588
; =========================================================

3B83F4:  PUSH            {R4-R7,LR}
3B83F6:  ADD             R7, SP, #0xC
3B83F8:  PUSH.W          {R8,R9,R11}
3B83FC:  VPUSH           {D8-D9}
3B8400:  SUB             SP, SP, #0x30
3B8402:  MOV             R4, R0
3B8404:  MOV             R6, R2
3B8406:  LDRH.W          R2, [R4,#0xE0]
3B840A:  MOVW            R0, #0xFFFF
3B840E:  MOV             R9, R3
3B8410:  CMP             R2, R0
3B8412:  BEQ.W           loc_3B857C
3B8416:  VLDR            S0, [R7,#arg_4]
3B841A:  ADD.W           R5, R4, R1,LSL#3
3B841E:  VLDR            S2, [R4,#0xD8]
3B8422:  LDR.W           R0, [R5,#0xE8]!
3B8426:  VADD.F32        S18, S2, S0
3B842A:  VLDR            S16, [R7,#arg_0]
3B842E:  CBZ             R0, loc_3B843C
3B8430:  VSTR            S18, [R0,#0x14]
3B8434:  LDR             R0, [R5]
3B8436:  VSTR            S16, [R0,#0x1C]
3B843A:  B               loc_3B857C
3B843C:  CMP             R1, #3
3B843E:  BEQ             loc_3B84B0
3B8440:  CMP             R1, #2
3B8442:  BEQ             loc_3B84F4
3B8444:  CMP             R1, #1
3B8446:  BNE.W           loc_3B857C
3B844A:  LDR             R0, =(AEAudioHardware_ptr - 0x3B8456)
3B844C:  SXTH            R2, R2; __int16
3B844E:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3B8452:  ADD             R0, PC; AEAudioHardware_ptr
3B8454:  LDR             R0, [R0]; AEAudioHardware ; this
3B8456:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B845A:  CMP             R0, #0
3B845C:  BEQ.W           loc_3B857C
3B8460:  LDR             R0, [R4,#4]
3B8462:  ADD.W           R8, R4, #8
3B8466:  MOVS            R3, #0
3B8468:  LDR             R1, [R0,#0x14]
3B846A:  ADD.W           R2, R1, #0x30 ; '0'
3B846E:  CMP             R1, #0
3B8470:  IT EQ
3B8472:  ADDEQ           R2, R0, #4
3B8474:  MOV.W           R0, #0x3F800000
3B8478:  LDRD.W          R12, R1, [R2]
3B847C:  LDR             R2, [R2,#8]
3B847E:  STRD.W          R0, R0, [SP,#0x58+var_48]
3B8482:  STRD.W          R0, R3, [SP,#0x58+var_40]
3B8486:  MOV             R0, R8
3B8488:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B848C:  STR             R3, [SP,#0x58+var_30]
3B848E:  MOV             R3, R4
3B8490:  VSTR            S18, [SP,#0x58+var_4C]
3B8494:  STRD.W          R12, R1, [SP,#0x58+var_58]
3B8498:  MOV             R1, R6
3B849A:  STR             R2, [SP,#0x58+var_50]
3B849C:  MOV             R2, R9
3B849E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B84A2:  LDRH.W          R0, [R4,#0xDC]
3B84A6:  CMP             R0, #0x85
3B84A8:  BNE             loc_3B8558
3B84AA:  MOV.W           R0, #0x40800000
3B84AE:  B               loc_3B855E
3B84B0:  LDR             R0, [R4,#4]
3B84B2:  ADD.W           R8, R4, #8
3B84B6:  MOVS            R3, #0
3B84B8:  LDR             R1, [R0,#0x14]
3B84BA:  ADD.W           R2, R1, #0x30 ; '0'
3B84BE:  CMP             R1, #0
3B84C0:  IT EQ
3B84C2:  ADDEQ           R2, R0, #4
3B84C4:  MOV.W           R0, #0x3F800000
3B84C8:  LDRD.W          R12, R1, [R2]
3B84CC:  LDR             R2, [R2,#8]
3B84CE:  STRD.W          R0, R0, [SP,#0x58+var_48]
3B84D2:  STRD.W          R0, R3, [SP,#0x58+var_40]
3B84D6:  MOV             R0, R8
3B84D8:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B84DC:  STR             R3, [SP,#0x58+var_30]
3B84DE:  MOV             R3, R4
3B84E0:  VSTR            S18, [SP,#0x58+var_4C]
3B84E4:  STRD.W          R12, R1, [SP,#0x58+var_58]
3B84E8:  MOV             R1, R6
3B84EA:  STR             R2, [SP,#0x58+var_50]
3B84EC:  MOV             R2, R9
3B84EE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B84F2:  B               loc_3B8558
3B84F4:  LDR             R0, =(AEAudioHardware_ptr - 0x3B8500)
3B84F6:  SXTH            R2, R2; __int16
3B84F8:  LDRH.W          R1, [R4,#0xDC]; unsigned __int16
3B84FC:  ADD             R0, PC; AEAudioHardware_ptr
3B84FE:  LDR             R0, [R0]; AEAudioHardware ; this
3B8500:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B8504:  CBZ             R0, loc_3B857C
3B8506:  LDR             R0, [R4,#4]
3B8508:  ADD.W           R8, R4, #8
3B850C:  MOVS            R3, #0
3B850E:  LDR             R1, [R0,#0x14]
3B8510:  ADD.W           R2, R1, #0x30 ; '0'
3B8514:  CMP             R1, #0
3B8516:  IT EQ
3B8518:  ADDEQ           R2, R0, #4
3B851A:  MOV.W           R0, #0x3F800000
3B851E:  LDRD.W          R12, R1, [R2]
3B8522:  LDR             R2, [R2,#8]
3B8524:  STRD.W          R0, R0, [SP,#0x58+var_48]
3B8528:  STRD.W          R0, R3, [SP,#0x58+var_40]
3B852C:  MOV             R0, R8
3B852E:  STRD.W          R3, R3, [SP,#0x58+var_38]
3B8532:  STR             R3, [SP,#0x58+var_30]
3B8534:  MOV             R3, R4
3B8536:  VSTR            S18, [SP,#0x58+var_4C]
3B853A:  STRD.W          R12, R1, [SP,#0x58+var_58]
3B853E:  MOV             R1, R6
3B8540:  STR             R2, [SP,#0x58+var_50]
3B8542:  MOV             R2, R9
3B8544:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B8548:  LDRH.W          R0, [R4,#0xDC]
3B854C:  CMP             R0, #0x85
3B854E:  BNE             loc_3B8558
3B8550:  MOVS            R0, #0x40A00000
3B8556:  B               loc_3B855E
3B8558:  MOVS            R0, #0x40900000
3B855E:  STR             R0, [R4,#0x20]
3B8560:  MOVS            R1, #4
3B8562:  LDR             R0, =(AESoundManager_ptr - 0x3B856C)
3B8564:  VSTR            S16, [R4,#0x24]
3B8568:  ADD             R0, PC; AESoundManager_ptr
3B856A:  VSTR            S18, [R4,#0x1C]
3B856E:  STRH.W          R1, [R4,#0x5E]
3B8572:  MOV             R1, R8; CAESound *
3B8574:  LDR             R0, [R0]; AESoundManager ; this
3B8576:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B857A:  STR             R0, [R5]
3B857C:  ADD             SP, SP, #0x30 ; '0'
3B857E:  VPOP            {D8-D9}
3B8582:  POP.W           {R8,R9,R11}
3B8586:  POP             {R4-R7,PC}
