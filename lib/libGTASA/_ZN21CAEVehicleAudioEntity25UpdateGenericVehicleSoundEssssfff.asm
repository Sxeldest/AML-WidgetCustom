; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff
; Address            : 0x3B92C0 - 0x3B937A
; =========================================================

3B92C0:  PUSH            {R4-R7,LR}
3B92C2:  ADD             R7, SP, #0xC
3B92C4:  PUSH.W          {R8}
3B92C8:  VPUSH           {D8-D10}
3B92CC:  SUB             SP, SP, #0x30
3B92CE:  MOV             R4, R0
3B92D0:  VLDR            S0, [R7,#arg_8]
3B92D4:  VLDR            S2, [R4,#0xD8]
3B92D8:  ADD.W           R6, R4, R1,LSL#3
3B92DC:  VLDR            S16, [R7,#arg_4]
3B92E0:  MOV             R5, R2
3B92E2:  VADD.F32        S18, S2, S0
3B92E6:  LDR.W           R0, [R6,#0xE8]!
3B92EA:  CBZ             R0, loc_3B92F8
3B92EC:  VSTR            S18, [R0,#0x14]
3B92F0:  LDR             R0, [R6]
3B92F2:  VSTR            S16, [R0,#0x1C]
3B92F6:  B               loc_3B936E
3B92F8:  LDR             R0, =(AEAudioHardware_ptr - 0x3B9302)
3B92FA:  UXTH            R1, R3; unsigned __int16
3B92FC:  MOV             R2, R5; __int16
3B92FE:  ADD             R0, PC; AEAudioHardware_ptr
3B9300:  LDR             R0, [R0]; AEAudioHardware ; this
3B9302:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B9306:  CBZ             R0, loc_3B936E
3B9308:  LDR             R0, [R4,#4]
3B930A:  ADD.W           R8, R4, #8
3B930E:  LDR             R2, [R7,#arg_0]
3B9310:  VLDR            S20, [R7,#arg_C]
3B9314:  LDR             R1, [R0,#0x14]
3B9316:  ADD.W           R3, R1, #0x30 ; '0'
3B931A:  CMP             R1, #0
3B931C:  IT EQ
3B931E:  ADDEQ           R3, R0, #4
3B9320:  MOVS            R0, #0
3B9322:  LDRD.W          R12, LR, [R3]
3B9326:  MOV.W           R1, #0x3F800000
3B932A:  LDR             R3, [R3,#8]
3B932C:  STRD.W          R1, R1, [SP,#0x58+var_48]
3B9330:  STRD.W          R1, R0, [SP,#0x58+var_40]
3B9334:  MOV             R1, R5
3B9336:  STRD.W          R0, R0, [SP,#0x58+var_38]
3B933A:  STR             R0, [SP,#0x58+var_30]
3B933C:  MOV             R0, R8
3B933E:  VSTR            S18, [SP,#0x58+var_4C]
3B9342:  STRD.W          R12, LR, [SP,#0x58+var_58]
3B9346:  STR             R3, [SP,#0x58+var_50]
3B9348:  MOV             R3, R4
3B934A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B934E:  LDR             R0, =(AESoundManager_ptr - 0x3B935A)
3B9350:  MOVS            R1, #4
3B9352:  VSTR            S18, [R4,#0x1C]
3B9356:  ADD             R0, PC; AESoundManager_ptr
3B9358:  VSTR            S20, [R4,#0x20]
3B935C:  VSTR            S16, [R4,#0x24]
3B9360:  LDR             R0, [R0]; AESoundManager ; this
3B9362:  STRH.W          R1, [R4,#0x5E]
3B9366:  MOV             R1, R8; CAESound *
3B9368:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B936C:  STR             R0, [R6]
3B936E:  ADD             SP, SP, #0x30 ; '0'
3B9370:  VPOP            {D8-D10}
3B9374:  POP.W           {R8}
3B9378:  POP             {R4-R7,PC}
