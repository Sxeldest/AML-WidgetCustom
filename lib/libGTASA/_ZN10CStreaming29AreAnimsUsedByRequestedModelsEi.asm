; =========================================================
; Game Engine Function: _ZN10CStreaming29AreAnimsUsedByRequestedModelsEi
; Address            : 0x2D3534 - 0x2D361C
; =========================================================

2D3534:  PUSH            {R4-R7,LR}
2D3536:  ADD             R7, SP, #0xC
2D3538:  PUSH.W          {R8-R11}
2D353C:  SUB             SP, SP, #4
2D353E:  MOV             R11, R0
2D3540:  LDR             R0, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2D354A)
2D3542:  MOVW            R8, #:lower16:(stru_61A78.st_value+3)
2D3546:  ADD             R0, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2D3548:  MOVT            R8, #:upper16:(stru_61A78.st_value+3)
2D354C:  LDR             R0, [R0]; CStreaming::ms_pStartRequestedList ...
2D354E:  LDR             R4, [R0]; CStreaming::ms_pStartRequestedList
2D3550:  LDR             R0, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2D3556)
2D3552:  ADD             R0, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2D3554:  LDR             R5, [R0]; CStreaming::ms_pEndRequestedList ...
2D3556:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D355C)
2D3558:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D355A:  LDR             R6, [R0]; CStreaming::ms_aInfoForModel ...
2D355C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D3562)
2D355E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D3560:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D3564:  LDR             R0, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D356A)
2D3566:  ADD             R0, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D3568:  LDR.W           R9, [R0]; CStreamingInfo::ms_pArrayBase ...
2D356C:  LDRSH.W         R0, [R4]
2D3570:  ADDS            R1, R0, #1
2D3572:  BEQ             loc_2D3582
2D3574:  LDR.W           R1, [R9]; CStreamingInfo::ms_pArrayBase
2D3578:  ADD.W           R0, R0, R0,LSL#2
2D357C:  ADD.W           R4, R1, R0,LSL#2
2D3580:  B               loc_2D3584
2D3582:  MOVS            R4, #0
2D3584:  LDR             R0, [R5]; CStreaming::ms_pEndRequestedList
2D3586:  CMP             R4, R0
2D3588:  BEQ             loc_2D35AC
2D358A:  SUBS            R0, R4, R6
2D358C:  CMP             R0, R8
2D358E:  BGT             loc_2D356C
2D3590:  MOVW            R1, #0x3334
2D3594:  LSRS            R0, R0, #2
2D3596:  MOVT            R1, #0x3333
2D359A:  MULS            R0, R1
2D359C:  LDR.W           R0, [R10,R0]
2D35A0:  LDR             R1, [R0]
2D35A2:  LDR             R1, [R1,#0x3C]
2D35A4:  BLX             R1
2D35A6:  CMP             R0, R11
2D35A8:  BNE             loc_2D356C
2D35AA:  B               loc_2D3612
2D35AC:  LDR             R1, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D35B8)
2D35AE:  MOVS            R0, #0
2D35B0:  MOVW            R9, #0x4E1F
2D35B4:  ADD             R1, PC; _ZN10CStreaming10ms_channelE_ptr
2D35B6:  LDR             R5, [R1]; CStreaming::ms_channel ...
2D35B8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D35BE)
2D35BA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D35BC:  LDR.W           R8, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D35C0:  LDR             R1, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D35C6)
2D35C2:  ADD             R1, PC; _ZN10CStreaming10ms_channelE_ptr
2D35C4:  LDR             R6, [R1]; CStreaming::ms_channel ...
2D35C6:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D35CC)
2D35C8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D35CA:  LDR.W           R10, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D35CE:  MOV             R4, R0
2D35D0:  LDR.W           R0, [R5,R4,LSL#2]
2D35D4:  ADDS            R1, R0, #1
2D35D6:  BEQ             loc_2D35EA
2D35D8:  CMP             R0, R9
2D35DA:  BGT             loc_2D35EA
2D35DC:  LDR.W           R0, [R8,R0,LSL#2]
2D35E0:  LDR             R1, [R0]
2D35E2:  LDR             R1, [R1,#0x3C]
2D35E4:  BLX             R1
2D35E6:  CMP             R0, R11
2D35E8:  BEQ             loc_2D3612
2D35EA:  ADD.W           R0, R6, R4,LSL#2
2D35EE:  LDR.W           R0, [R0,#0x98]
2D35F2:  ADDS            R1, R0, #1
2D35F4:  BEQ             loc_2D3608
2D35F6:  CMP             R0, R9
2D35F8:  BGT             loc_2D3608
2D35FA:  LDR.W           R0, [R10,R0,LSL#2]
2D35FE:  LDR             R1, [R0]
2D3600:  LDR             R1, [R1,#0x3C]
2D3602:  BLX             R1
2D3604:  CMP             R0, R11
2D3606:  BEQ             loc_2D3612
2D3608:  ADDS            R0, R4, #1
2D360A:  CMP             R4, #0xF
2D360C:  BLT             loc_2D35CE
2D360E:  MOVS            R0, #0
2D3610:  B               loc_2D3614
2D3612:  MOVS            R0, #1
2D3614:  ADD             SP, SP, #4
2D3616:  POP.W           {R8-R11}
2D361A:  POP             {R4-R7,PC}
