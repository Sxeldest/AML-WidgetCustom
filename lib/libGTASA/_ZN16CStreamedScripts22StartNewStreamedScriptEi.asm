; =========================================================
; Game Engine Function: _ZN16CStreamedScripts22StartNewStreamedScriptEi
; Address            : 0x33544C - 0x3354B2
; =========================================================

33544C:  PUSH            {R4-R7,LR}
33544E:  ADD             R7, SP, #0xC
335450:  PUSH.W          {R8}
335454:  MOV             R4, R1
335456:  LSLS            R1, R4, #5
335458:  ADD.W           R8, R0, R4,LSL#5
33545C:  LDR             R5, [R0,R1]
33545E:  CBNZ            R5, loc_335480
335460:  LDR             R0, =(IsMissionSave_ptr - 0x335466)
335462:  ADD             R0, PC; IsMissionSave_ptr
335464:  LDR             R0, [R0]; IsMissionSave
335466:  LDRB            R0, [R0]
335468:  CBZ             R0, loc_335480
33546A:  MOVW            R0, #0x6676
33546E:  MOVS            R1, #0xC; int
335470:  ADD             R0, R4; this
335472:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
335476:  MOVS            R0, #0; this
335478:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
33547C:  LDR.W           R5, [R8]
335480:  CBZ             R5, loc_3354A8
335482:  MOV             R0, R5; this
335484:  BLX             j__ZN11CTheScripts14StartNewScriptEPh; CTheScripts::StartNewScript(uchar *)
335488:  MOV             R6, R0
33548A:  MOVS            R0, #1
33548C:  STRB.W          R0, [R6,#0xE7]
335490:  STR             R5, [R6,#0x10]
335492:  LDRB.W          R0, [R8,#4]
335496:  ADDS            R0, #1
335498:  STRB.W          R0, [R8,#4]
33549C:  MOVW            R0, #0x6676
3354A0:  ADD             R0, R4; this
3354A2:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
3354A6:  B               loc_3354AA
3354A8:  MOVS            R6, #0
3354AA:  MOV             R0, R6
3354AC:  POP.W           {R8}
3354B0:  POP             {R4-R7,PC}
