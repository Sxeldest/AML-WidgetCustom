; =========================================================
; Game Engine Function: _ZN10CStreaming30RemoveDodgyPedsFromRandomSlotsEv
; Address            : 0x2D9430 - 0x2D9554
; =========================================================

2D9430:  PUSH            {R4-R7,LR}
2D9432:  ADD             R7, SP, #0xC
2D9434:  PUSH.W          {R8-R11}
2D9438:  SUB             SP, SP, #0x14
2D943A:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9448)
2D943C:  MOVS            R4, #0
2D943E:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D944E)
2D9440:  MOV.W           R10, #0xFFFFFFFF
2D9444:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9446:  MOV.W           LR, #1
2D944A:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D944C:  LDR.W           R8, [R0]; CStreaming::ms_pedsLoaded ...
2D9450:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9456)
2D9452:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9454:  LDR.W           R9, [R0]; CStreaming::ms_aInfoForModel ...
2D9458:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D945E)
2D945A:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D945C:  LDR.W           R12, [R0]; CStreaming::ms_aInfoForModel ...
2D9460:  LDR             R0, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x2D9466)
2D9462:  ADD             R0, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
2D9464:  LDR             R0, [R0]; CStreaming::ms_pStartLoadedList ...
2D9466:  STR             R0, [SP,#0x30+var_24]
2D9468:  LDR             R0, [R1]; CStreamingInfo::ms_pArrayBase ...
2D946A:  STR             R0, [SP,#0x30+var_28]
2D946C:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D9474)
2D946E:  LDR             R1, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x2D9476)
2D9470:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D9472:  ADD             R1, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
2D9474:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2D9476:  STR             R0, [SP,#0x30+var_2C]
2D9478:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D9482)
2D947A:  LDR.W           R11, [R1]; CStreaming::ms_numPedsLoaded ...
2D947E:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D9480:  LDR             R5, [R0]; CStreaming::ms_pedsLoaded ...
2D9482:  STR             R5, [SP,#0x30+var_20]
2D9484:  LDR.W           R0, [R8,R4,LSL#2]; this
2D9488:  SUB.W           R1, R0, #0xF4
2D948C:  CMP             R1, #0xD
2D948E:  BHI             loc_2D949C
2D9490:  LSL.W           R1, LR, R1
2D9494:  MOVW            R2, #0x3005
2D9498:  TST             R1, R2
2D949A:  BNE             loc_2D94A0
2D949C:  CMP             R0, #0x57 ; 'W'
2D949E:  BNE             loc_2D9546
2D94A0:  ADD.W           R2, R0, R0,LSL#2
2D94A4:  ADD.W           R1, R9, R2,LSL#2
2D94A8:  LDRB            R6, [R1,#6]
2D94AA:  AND.W           R3, R6, #0xFD
2D94AE:  TST.W           R6, #4
2D94B2:  STRB            R3, [R1,#6]
2D94B4:  BNE             loc_2D9538
2D94B6:  ADD.W           R6, R12, R2,LSL#2
2D94BA:  LDRB            R6, [R6,#0x10]
2D94BC:  CMP             R6, #1
2D94BE:  BNE             loc_2D9526
2D94C0:  LDRH            R0, [R1]
2D94C2:  MOVW            R3, #0xFFFF
2D94C6:  CMP             R0, R3
2D94C8:  BNE             loc_2D9538
2D94CA:  LDR             R0, [SP,#0x30+var_24]
2D94CC:  MOVW            R3, #0xCCCD
2D94D0:  LDR.W           LR, [SP,#0x30+var_28]
2D94D4:  MOV             R5, R9
2D94D6:  MOVT            R3, #0xCCCC
2D94DA:  LDR             R0, [R0]
2D94DC:  MOV             R10, R3
2D94DE:  LDR.W           R9, [LR]
2D94E2:  LDRH            R6, [R0]
2D94E4:  SUB.W           R3, R0, R9
2D94E8:  STRH            R6, [R1]
2D94EA:  SUB.W           R6, R1, R9
2D94EE:  LSRS            R3, R3, #2
2D94F0:  LDR.W           R9, [SP,#0x30+var_2C]
2D94F4:  LSRS            R6, R6, #2
2D94F6:  MUL.W           R3, R3, R10
2D94FA:  ADD.W           R2, R9, R2,LSL#2
2D94FE:  MUL.W           R6, R6, R10
2D9502:  MOV             R9, R5
2D9504:  MOV.W           R10, #0xFFFFFFFF
2D9508:  STRH            R3, [R2,#2]
2D950A:  STRH            R6, [R0]
2D950C:  LDRSH.W         R0, [R1]
2D9510:  LDR.W           R1, [LR]
2D9514:  MOV.W           LR, #1
2D9518:  LDR             R5, [SP,#0x30+var_20]
2D951A:  ADD.W           R0, R0, R0,LSL#2
2D951E:  ADD.W           R0, R1, R0,LSL#2
2D9522:  STRH            R6, [R0,#2]
2D9524:  B               loc_2D9538
2D9526:  LSLS            R1, R3, #0x1C; int
2D9528:  BMI             loc_2D9538
2D952A:  MOV             R6, R12
2D952C:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D9530:  LDR             R5, [SP,#0x30+var_20]
2D9532:  MOV.W           LR, #1
2D9536:  MOV             R12, R6
2D9538:  LDR.W           R0, [R11]; CStreaming::ms_numPedsLoaded
2D953C:  STR.W           R10, [R5,R4,LSL#2]
2D9540:  SUBS            R0, #1
2D9542:  STR.W           R0, [R11]; CStreaming::ms_numPedsLoaded
2D9546:  ADDS            R4, #1
2D9548:  CMP             R4, #8
2D954A:  BNE             loc_2D9484
2D954C:  ADD             SP, SP, #0x14
2D954E:  POP.W           {R8-R11}
2D9552:  POP             {R4-R7,PC}
