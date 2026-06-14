; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity7ServiceEv
; Address            : 0x3B9500 - 0x3B97C4
; =========================================================

3B9500:  PUSH            {R4-R7,LR}
3B9502:  ADD             R7, SP, #0xC
3B9504:  PUSH.W          {R8-R10}
3B9508:  SUB             SP, SP, #0x30
3B950A:  MOV             R4, R0
3B950C:  LDRB.W          R0, [R4,#0x7C]
3B9510:  CMP             R0, #0
3B9512:  BEQ.W           loc_3B97BC
3B9516:  LDR             R0, =(AEAudioHardware_ptr - 0x3B9522)
3B9518:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3B951A:  MOVS            R2, #0; __int16
3B951C:  LDR             R6, [R4,#4]
3B951E:  ADD             R0, PC; AEAudioHardware_ptr
3B9520:  LDR             R0, [R0]; AEAudioHardware ; this
3B9522:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B9526:  CMP             R0, #0
3B9528:  BEQ.W           loc_3B97BC
3B952C:  LDR             R0, =(AEAudioHardware_ptr - 0x3B9536)
3B952E:  MOVS            R1, #0x27 ; '''; unsigned __int16
3B9530:  MOVS            R2, #2; __int16
3B9532:  ADD             R0, PC; AEAudioHardware_ptr
3B9534:  LDR             R0, [R0]; AEAudioHardware ; this
3B9536:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B953A:  CMP             R0, #0
3B953C:  BEQ.W           loc_3B97BC
3B9540:  LDRSH.W         R1, [R6,#4]
3B9544:  ADDS            R0, R6, R1
3B9546:  LDRB.W          R0, [R0,#0x30C]
3B954A:  CBZ             R0, loc_3B955C
3B954C:  LDR             R0, [R6]
3B954E:  MOV.W           R10, #0
3B9552:  CMP             R0, #0
3B9554:  IT EQ
3B9556:  MOVEQ.W         R10, #1
3B955A:  B               loc_3B9560
3B955C:  MOV.W           R10, #1
3B9560:  LDR.W           R0, [R4,#0x90]; this
3B9564:  CMP.W           R10, #0
3B9568:  BEQ             loc_3B9574
3B956A:  CMP             R0, #0
3B956C:  IT NE
3B956E:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B9572:  B               loc_3B95FC
3B9574:  ADD.W           R1, R1, R1,LSL#1
3B9578:  CMP             R0, #0
3B957A:  ADD.W           R3, R6, R1,LSL#2
3B957E:  ADD.W           R3, R3, #0xC
3B9582:  LDM             R3, {R1-R3}
3B9584:  BEQ             loc_3B95A6
3B9586:  MOVS            R5, #0x40C00000
3B958C:  STR             R5, [R0,#0x14]
3B958E:  MOVW            R5, #0xD70A
3B9592:  LDR.W           R0, [R4,#0x90]
3B9596:  MOVT            R5, #0x3FE3
3B959A:  STR             R5, [R0,#0x1C]
3B959C:  LDR.W           R0, [R4,#0x90]
3B95A0:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3B95A4:  B               loc_3B95FC
3B95A6:  MOVW            R9, #0
3B95AA:  ADD.W           R8, R4, #8
3B95AE:  MOVS            R0, #0
3B95B0:  MOV.W           R12, #0x3F800000
3B95B4:  MOVT            R9, #0x40C0
3B95B8:  STRD.W          R0, R0, [SP,#0x48+var_28]
3B95BC:  STR             R0, [SP,#0x48+var_20]
3B95BE:  STMEA.W         SP, {R1-R3,R9,R12}
3B95C2:  MOVS            R1, #0
3B95C4:  MOVS            R2, #0
3B95C6:  STRD.W          R12, R12, [SP,#0x48+var_34]
3B95CA:  MOV             R3, R4
3B95CC:  STR             R0, [SP,#0x48+var_2C]
3B95CE:  MOV             R0, R8
3B95D0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B95D4:  LDR             R0, =(AESoundManager_ptr - 0x3B95E6)
3B95D6:  MOVW            R2, #0xD70A
3B95DA:  MOV.W           R1, #0x40000000
3B95DE:  MOVT            R2, #0x3FE3
3B95E2:  ADD             R0, PC; AESoundManager_ptr
3B95E4:  STRD.W          R9, R1, [R4,#0x1C]
3B95E8:  MOVS            R1, #4
3B95EA:  STR             R2, [R4,#0x24]
3B95EC:  LDR             R0, [R0]; AESoundManager ; this
3B95EE:  STRH.W          R1, [R4,#0x5E]
3B95F2:  MOV             R1, R8; CAESound *
3B95F4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B95F8:  STR.W           R0, [R4,#0x90]
3B95FC:  LDR.W           R0, [R4,#0x94]; this
3B9600:  CMP.W           R10, #0
3B9604:  BEQ             loc_3B9610
3B9606:  CMP             R0, #0
3B9608:  IT NE
3B960A:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B960E:  B               loc_3B9696
3B9610:  LDRSH.W         R1, [R6,#4]
3B9614:  CMP             R0, #0
3B9616:  ADD.W           R1, R1, R1,LSL#1
3B961A:  ADD.W           R3, R6, R1,LSL#2
3B961E:  ADD.W           R3, R3, #0xC
3B9622:  LDM             R3, {R1-R3}
3B9624:  BEQ             loc_3B9642
3B9626:  MOVS            R6, #0xC1100000
3B962C:  STR             R6, [R0,#0x14]
3B962E:  MOV.W           R6, #0x3F000000
3B9632:  LDR.W           R0, [R4,#0x94]
3B9636:  STR             R6, [R0,#0x1C]
3B9638:  LDR.W           R0, [R4,#0x94]
3B963C:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3B9640:  B               loc_3B9696
3B9642:  MOVW            R8, #0
3B9646:  ADD.W           R5, R4, #8
3B964A:  MOVS            R0, #0
3B964C:  MOV.W           R6, #0x3F800000
3B9650:  MOVT            R8, #0xC110
3B9654:  STRD.W          R0, R0, [SP,#0x48+var_28]
3B9658:  STR             R0, [SP,#0x48+var_20]
3B965A:  STMEA.W         SP, {R1-R3,R8}
3B965E:  MOVS            R1, #2
3B9660:  MOVS            R2, #3
3B9662:  STRD.W          R6, R6, [SP,#0x48+var_38]
3B9666:  MOV             R3, R4
3B9668:  STRD.W          R6, R0, [SP,#0x48+var_30]
3B966C:  MOV             R0, R5
3B966E:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B9672:  LDR             R0, =(AESoundManager_ptr - 0x3B9684)
3B9674:  MOV.W           R1, #0x40000000
3B9678:  STRD.W          R8, R1, [R4,#0x1C]
3B967C:  MOV.W           R2, #0x3F000000
3B9680:  ADD             R0, PC; AESoundManager_ptr
3B9682:  MOVS            R1, #4
3B9684:  STR             R2, [R4,#0x24]
3B9686:  LDR             R0, [R0]; AESoundManager ; this
3B9688:  STRH.W          R1, [R4,#0x5E]
3B968C:  MOV             R1, R5; CAESound *
3B968E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B9692:  STR.W           R0, [R4,#0x94]
3B9696:  LDRB.W          R1, [R4,#0x7D]
3B969A:  LDR.W           R0, [R4,#0x98]; this
3B969E:  CBZ             R1, loc_3B96C6
3B96A0:  ADD.W           R3, R4, #0x80
3B96A4:  CMP             R0, #0
3B96A6:  LDM             R3, {R1-R3}
3B96A8:  BEQ             loc_3B96D0
3B96AA:  MOVS            R6, #0xC0400000
3B96B0:  STR             R6, [R0,#0x14]
3B96B2:  MOV.W           R6, #0x3F800000
3B96B6:  LDR.W           R0, [R4,#0x98]
3B96BA:  STR             R6, [R0,#0x1C]
3B96BC:  LDR.W           R0, [R4,#0x98]
3B96C0:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3B96C4:  B               loc_3B9720
3B96C6:  CMP             R0, #0
3B96C8:  IT NE
3B96CA:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B96CE:  B               loc_3B9720
3B96D0:  MOVW            R8, #0
3B96D4:  ADD.W           R5, R4, #8
3B96D8:  MOVS            R0, #0
3B96DA:  MOV.W           R6, #0x3F800000
3B96DE:  MOVT            R8, #0xC040
3B96E2:  STRD.W          R0, R0, [SP,#0x48+var_28]
3B96E6:  STR             R0, [SP,#0x48+var_20]
3B96E8:  STMEA.W         SP, {R1-R3,R8}
3B96EC:  MOVS            R1, #2
3B96EE:  MOVS            R2, #3
3B96F0:  STRD.W          R6, R6, [SP,#0x48+var_38]
3B96F4:  MOV             R3, R4
3B96F6:  STRD.W          R6, R0, [SP,#0x48+var_30]
3B96FA:  MOV             R0, R5
3B96FC:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B9700:  LDR             R0, =(AESoundManager_ptr - 0x3B9710)
3B9702:  MOV.W           R1, #0x40000000
3B9706:  STRD.W          R8, R1, [R4,#0x1C]
3B970A:  MOVS            R1, #4
3B970C:  ADD             R0, PC; AESoundManager_ptr
3B970E:  STR             R6, [R4,#0x24]
3B9710:  STRH.W          R1, [R4,#0x5E]
3B9714:  MOV             R1, R5; CAESound *
3B9716:  LDR             R0, [R0]; AESoundManager ; this
3B9718:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B971C:  STR.W           R0, [R4,#0x98]
3B9720:  LDRB.W          R1, [R4,#0x7D]
3B9724:  LDR.W           R0, [R4,#0x9C]; this
3B9728:  CBZ             R1, loc_3B9758
3B972A:  ADD.W           R3, R4, #0x80
3B972E:  CMP             R0, #0
3B9730:  LDM             R3, {R1-R3}
3B9732:  BEQ             loc_3B9768
3B9734:  MOVS            R6, #0xC1100000
3B973A:  STR             R6, [R0,#0x14]
3B973C:  MOV.W           R6, #0x3F000000
3B9740:  LDR.W           R0, [R4,#0x9C]
3B9744:  STR             R6, [R0,#0x1C]
3B9746:  LDR.W           R0, [R4,#0x9C]
3B974A:  ADD             SP, SP, #0x30 ; '0'
3B974C:  POP.W           {R8-R10}
3B9750:  POP.W           {R4-R7,LR}
3B9754:  B.W             j_j__ZN8CAESound11SetPositionE7CVector; j_CAESound::SetPosition(CVector)
3B9758:  CBZ             R0, loc_3B97BC
3B975A:  ADD             SP, SP, #0x30 ; '0'
3B975C:  POP.W           {R8-R10}
3B9760:  POP.W           {R4-R7,LR}
3B9764:  B.W             sub_18EA4C
3B9768:  MOVW            R8, #0
3B976C:  ADD.W           R5, R4, #8
3B9770:  MOVS            R0, #0
3B9772:  MOV.W           R6, #0x3F800000
3B9776:  MOVT            R8, #0xC110
3B977A:  STRD.W          R0, R0, [SP,#0x48+var_28]
3B977E:  STR             R0, [SP,#0x48+var_20]
3B9780:  STMEA.W         SP, {R1-R3,R8}
3B9784:  MOVS            R1, #2
3B9786:  MOVS            R2, #3
3B9788:  STRD.W          R6, R6, [SP,#0x48+var_38]
3B978C:  MOV             R3, R4
3B978E:  STRD.W          R6, R0, [SP,#0x48+var_30]
3B9792:  MOV             R0, R5
3B9794:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B9798:  LDR             R0, =(AESoundManager_ptr - 0x3B97AA)
3B979A:  MOV.W           R1, #0x40000000
3B979E:  STRD.W          R8, R1, [R4,#0x1C]
3B97A2:  MOV.W           R2, #0x3F000000
3B97A6:  ADD             R0, PC; AESoundManager_ptr
3B97A8:  MOVS            R1, #4
3B97AA:  STR             R2, [R4,#0x24]
3B97AC:  LDR             R0, [R0]; AESoundManager ; this
3B97AE:  STRH.W          R1, [R4,#0x5E]
3B97B2:  MOV             R1, R5; CAESound *
3B97B4:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B97B8:  STR.W           R0, [R4,#0x9C]
3B97BC:  ADD             SP, SP, #0x30 ; '0'
3B97BE:  POP.W           {R8-R10}
3B97C2:  POP             {R4-R7,PC}
