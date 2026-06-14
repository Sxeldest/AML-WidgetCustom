; =========================================================
; Game Engine Function: _ZN10CStreaming39DeleteRwObjectsBehindCameraInSectorListER8CPtrListi
; Address            : 0x2D65A0 - 0x2D6646
; =========================================================

2D65A0:  PUSH            {R4-R7,LR}
2D65A2:  ADD             R7, SP, #0xC
2D65A4:  PUSH.W          {R8-R11}
2D65A8:  SUB             SP, SP, #0xC
2D65AA:  LDR             R4, [R0]
2D65AC:  CMP             R4, #0
2D65AE:  BEQ             loc_2D663C
2D65B0:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2D65BC)
2D65B2:  MOVW            R11, #0xFFFF
2D65B6:  STR             R1, [SP,#0x28+var_20]
2D65B8:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2D65BA:  LDR             R6, [R0]; CWorld::ms_nCurrentScanCode ...
2D65BC:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D65C2)
2D65BE:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D65C0:  LDR.W           R10, [R0]; CStreaming::ms_aInfoForModel ...
2D65C4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D65CA)
2D65C6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D65C8:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D65CC:  LDR             R0, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D65D2)
2D65CE:  ADD             R0, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D65D0:  LDR             R0, [R0]; CStreaming::ms_memoryUsed ...
2D65D2:  STR             R0, [SP,#0x28+var_24]
2D65D4:  LDRD.W          R5, R4, [R4]
2D65D8:  LDRH            R0, [R6]; CWorld::ms_nCurrentScanCode
2D65DA:  LDRH            R1, [R5,#0x30]
2D65DC:  CMP             R1, R0
2D65DE:  BEQ             loc_2D65EA
2D65E0:  LDRB            R1, [R5,#0x1D]
2D65E2:  STRH            R0, [R5,#0x30]
2D65E4:  TST.W           R1, #0x24
2D65E8:  BEQ             loc_2D65F0
2D65EA:  CMP             R4, #0
2D65EC:  BNE             loc_2D65D4
2D65EE:  B               loc_2D663C
2D65F0:  LDR             R0, [R5,#0x18]
2D65F2:  CMP             R0, #0
2D65F4:  BEQ             loc_2D65EA
2D65F6:  LDRSH.W         R9, [R5,#0x26]
2D65FA:  ADD.W           R0, R9, R9,LSL#2
2D65FE:  LDRH.W          R0, [R10,R0,LSL#2]
2D6602:  CMP             R0, R11
2D6604:  BEQ             loc_2D65EA
2D6606:  MOV.W           R0, #0xFFFFFFFF; int
2D660A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2D660E:  LDR.W           R0, [R0,#0x588]
2D6612:  CMP             R0, R5
2D6614:  BEQ             loc_2D65EA
2D6616:  LDR             R0, [R5]
2D6618:  LDR             R1, [R0,#0x24]
2D661A:  MOV             R0, R5
2D661C:  BLX             R1
2D661E:  LDR.W           R0, [R8,R9,LSL#2]
2D6622:  LDRH            R0, [R0,#0x1E]
2D6624:  CMP             R0, #0
2D6626:  BNE             loc_2D65EA
2D6628:  MOV             R0, R9; this
2D662A:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D662E:  LDR             R0, [SP,#0x28+var_24]
2D6630:  LDR             R1, [SP,#0x28+var_20]
2D6632:  LDR             R0, [R0]
2D6634:  CMP             R0, R1
2D6636:  BGE             loc_2D65EA
2D6638:  MOVS            R0, #1
2D663A:  B               loc_2D663E
2D663C:  MOVS            R0, #0
2D663E:  ADD             SP, SP, #0xC
2D6640:  POP.W           {R8-R11}
2D6644:  POP             {R4-R7,PC}
