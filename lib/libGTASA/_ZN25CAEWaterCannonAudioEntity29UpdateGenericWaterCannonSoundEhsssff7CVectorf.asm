; =========================================================
; Game Engine Function: _ZN25CAEWaterCannonAudioEntity29UpdateGenericWaterCannonSoundEhsssff7CVectorf
; Address            : 0x3B93F4 - 0x3B94B8
; =========================================================

3B93F4:  PUSH            {R4-R7,LR}
3B93F6:  ADD             R7, SP, #0xC
3B93F8:  PUSH.W          {R11}
3B93FC:  VPUSH           {D8-D10}
3B9400:  SUB             SP, SP, #0x30
3B9402:  MOV             R4, R0
3B9404:  ADD.W           R6, R4, R2,LSL#2
3B9408:  CMP             R1, #0
3B940A:  LDR.W           R0, [R6,#0x90]!; this
3B940E:  BEQ             loc_3B9444
3B9410:  ADD.W           R12, R7, #0x14
3B9414:  CMP             R0, #0
3B9416:  LDM.W           R12, {R1,R2,R12}
3B941A:  VLDR            S18, [R7,#arg_8]
3B941E:  VLDR            S16, [R7,#arg_4]
3B9422:  BEQ             loc_3B9458
3B9424:  VSTR            S18, [R0,#0x14]
3B9428:  MOV             R3, R12
3B942A:  LDR             R0, [R6]
3B942C:  VSTR            S16, [R0,#0x1C]
3B9430:  LDR             R0, [R6]
3B9432:  ADD             SP, SP, #0x30 ; '0'
3B9434:  VPOP            {D8-D10}
3B9438:  POP.W           {R11}
3B943C:  POP.W           {R4-R7,LR}
3B9440:  B.W             j_j__ZN8CAESound11SetPositionE7CVector; j_CAESound::SetPosition(CVector)
3B9444:  CBZ             R0, loc_3B94AC
3B9446:  ADD             SP, SP, #0x30 ; '0'
3B9448:  VPOP            {D8-D10}
3B944C:  POP.W           {R11}
3B9450:  POP.W           {R4-R7,LR}
3B9454:  B.W             sub_18EA4C
3B9458:  LDR.W           LR, [R7,#arg_0]
3B945C:  MOVS            R0, #0
3B945E:  MOV.W           R5, #0x3F800000
3B9462:  VLDR            S20, [R7,#arg_18]
3B9466:  STRD.W          R5, R5, [SP,#0x58+var_48]
3B946A:  STRD.W          R5, R0, [SP,#0x58+var_40]
3B946E:  ADD.W           R5, R4, #8
3B9472:  STRD.W          R0, R0, [SP,#0x58+var_38]
3B9476:  STR             R0, [SP,#0x58+var_30]
3B9478:  MOV             R0, R5
3B947A:  VSTR            S18, [SP,#0x58+var_4C]
3B947E:  STMEA.W         SP, {R1,R2,R12}
3B9482:  MOV             R1, R3
3B9484:  MOV             R2, LR
3B9486:  MOV             R3, R4
3B9488:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B948C:  LDR             R0, =(AESoundManager_ptr - 0x3B9498)
3B948E:  MOVS            R1, #4
3B9490:  VSTR            S18, [R4,#0x1C]
3B9494:  ADD             R0, PC; AESoundManager_ptr
3B9496:  VSTR            S20, [R4,#0x20]
3B949A:  VSTR            S16, [R4,#0x24]
3B949E:  LDR             R0, [R0]; AESoundManager ; this
3B94A0:  STRH.W          R1, [R4,#0x5E]
3B94A4:  MOV             R1, R5; CAESound *
3B94A6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B94AA:  STR             R0, [R6]
3B94AC:  ADD             SP, SP, #0x30 ; '0'
3B94AE:  VPOP            {D8-D10}
3B94B2:  POP.W           {R11}
3B94B6:  POP             {R4-R7,PC}
