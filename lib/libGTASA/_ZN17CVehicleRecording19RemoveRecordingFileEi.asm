; =========================================================
; Game Engine Function: _ZN17CVehicleRecording19RemoveRecordingFileEi
; Address            : 0x3242C4 - 0x324314
; =========================================================

3242C4:  PUSH            {R4-R7,LR}
3242C6:  ADD             R7, SP, #0xC
3242C8:  PUSH.W          {R8,R9,R11}
3242CC:  MOV             R8, R0
3242CE:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3242DC)
3242D0:  MOVW            R5, #0x649B
3242D4:  MOVW            R4, #0x1DB
3242D8:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3242DA:  MOV.W           R9, #0
3242DE:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
3242E0:  ADD.W           R6, R0, #0xC
3242E4:  LDR.W           R0, [R6,#-0xC]; CVehicleRecording::StreamingArray
3242E8:  CMP             R0, R8
3242EA:  BNE             loc_324304
3242EC:  LDR.W           R0, [R6,#-8]; this
3242F0:  CBZ             R0, loc_324304
3242F2:  LDRB            R1, [R6]; void *
3242F4:  CBNZ            R1, loc_324304
3242F6:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
3242FA:  MOV             R0, R5; this
3242FC:  STR.W           R9, [R6,#-8]
324300:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
324304:  ADDS            R6, #0x10
324306:  SUBS            R4, #1
324308:  ADD.W           R5, R5, #1
32430C:  BNE             loc_3242E4
32430E:  POP.W           {R8,R9,R11}
324312:  POP             {R4-R7,PC}
