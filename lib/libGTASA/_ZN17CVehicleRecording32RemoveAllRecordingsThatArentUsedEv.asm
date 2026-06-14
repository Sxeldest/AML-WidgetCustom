; =========================================================
; Game Engine Function: _ZN17CVehicleRecording32RemoveAllRecordingsThatArentUsedEv
; Address            : 0x324410 - 0x324456
; =========================================================

324410:  PUSH            {R4-R7,LR}
324412:  ADD             R7, SP, #0xC
324414:  PUSH.W          {R8}
324418:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x32442A)
32441A:  MOVW            R4, #0x649B
32441E:  MOVW            R6, #0x1DB
324422:  MOV.W           R8, #0
324426:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
324428:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
32442A:  ADD.W           R5, R0, #0xC
32442E:  LDR.W           R0, [R5,#-8]; this
324432:  CBZ             R0, loc_324446
324434:  LDRB            R1, [R5]; void *
324436:  CBNZ            R1, loc_324446
324438:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
32443C:  MOV             R0, R4; this
32443E:  STR.W           R8, [R5,#-8]
324442:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
324446:  ADDS            R5, #0x10
324448:  SUBS            R6, #1
32444A:  ADD.W           R4, R4, #1
32444E:  BNE             loc_32442E
324450:  POP.W           {R8}
324454:  POP             {R4-R7,PC}
