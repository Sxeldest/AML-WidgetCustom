; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity7ServiceEv
; Address            : 0x3A4640 - 0x3A46A4
; =========================================================

3A4640:  PUSH            {R4,R5,R7,LR}
3A4642:  ADD             R7, SP, #8
3A4644:  SUB             SP, SP, #0x28
3A4646:  MOV             R4, R0
3A4648:  MOVS            R0, #0xC47A0000
3A464E:  STRD.W          R0, R0, [SP,#0x30+var_14]
3A4652:  STR             R0, [SP,#0x30+var_C]
3A4654:  LDR.W           R0, [R4,#0x110]
3A4658:  CBZ             R0, loc_3A4670
3A465A:  LDR             R0, =(AESoundManager_ptr - 0x3A466A)
3A465C:  MOVW            R1, #0x3FB; __int16
3A4660:  MOV             R2, R4; CAEAudioEntity *
3A4662:  MOVW            R5, #0x3FB
3A4666:  ADD             R0, PC; AESoundManager_ptr
3A4668:  LDR             R0, [R0]; AESoundManager ; this
3A466A:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3A466E:  CBZ             R0, loc_3A4674
3A4670:  ADD             SP, SP, #0x28 ; '('
3A4672:  POP             {R4,R5,R7,PC}
3A4674:  ADD             R1, SP, #0x30+var_14
3A4676:  MOVW            R12, #0
3A467A:  LDR.W           R0, [R4,#0x110]
3A467E:  MOVT            R12, #0x4020
3A4682:  STRD.W          R5, R1, [SP,#0x30+var_30]; unsigned __int16
3A4686:  MOVS            R2, #0
3A4688:  MOV.W           R3, #0x3F800000
3A468C:  ADD             R1, SP, #0x30+var_28
3A468E:  STM             R1!, {R0,R2,R3}
3A4690:  MOV             R0, R4; this
3A4692:  MOVS            R1, #0x28 ; '('; __int16
3A4694:  STRD.W          R2, R12, [SP,#0x30+var_1C]; __int16
3A4698:  MOVS            R2, #0x2C ; ','; __int16
3A469A:  MOVS            R3, #0; __int16
3A469C:  BLX             j__ZN20CAEScriptAudioEntity22PlayResidentSoundEventEssstR7CVectorP9CPhysicalffsf; CAEScriptAudioEntity::PlayResidentSoundEvent(short,short,short,ushort,CVector &,CPhysical *,float,float,short,float)
3A46A0:  ADD             SP, SP, #0x28 ; '('
3A46A2:  POP             {R4,R5,R7,PC}
