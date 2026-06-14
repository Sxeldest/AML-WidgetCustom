; =========================================================
; Game Engine Function: _ZN17CVehicleRecording21StopPlaybackWithIndexEi
; Address            : 0x3224F8 - 0x32259E
; =========================================================

3224F8:  PUSH            {R4-R7,LR}
3224FA:  ADD             R7, SP, #0xC
3224FC:  PUSH.W          {R11}
322500:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322506)
322502:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322504:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322506:  LDR.W           R1, [R1,R0,LSL#2]
32250A:  CBZ             R1, loc_322524
32250C:  LDR             R2, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x322518)
32250E:  MOVS            R3, #0xFF
322510:  STRB.W          R3, [R1,#0x428]
322514:  ADD             R2, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322516:  LDR             R2, [R2]; CVehicleRecording::pVehicleForPlayback ...
322518:  LDR.W           R1, [R2,R0,LSL#2]
32251C:  LDR             R2, [R1,#0x44]
32251E:  BIC.W           R2, R2, #4
322522:  STR             R2, [R1,#0x44]
322524:  LDR             R3, =(_ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr - 0x322530)
322526:  MOVS            R6, #0
322528:  LDR             R5, =(_ZN17CVehicleRecording18PlaybackBufferSizeE_ptr - 0x322534)
32252A:  LDR             R1, =(_ZN17CVehicleRecording19pVehicleForPlaybackE_ptr - 0x32253A)
32252C:  ADD             R3, PC; _ZN17CVehicleRecording22PlayBackStreamingIndexE_ptr
32252E:  LDR             R2, =(_ZN17CVehicleRecording16bPlaybackGoingOnE_ptr - 0x32253C)
322530:  ADD             R5, PC; _ZN17CVehicleRecording18PlaybackBufferSizeE_ptr
322532:  LDR.W           R12, =(_ZN17CVehicleRecording15pPlaybackBufferE_ptr - 0x322542)
322536:  ADD             R1, PC; _ZN17CVehicleRecording19pVehicleForPlaybackE_ptr
322538:  ADD             R2, PC; _ZN17CVehicleRecording16bPlaybackGoingOnE_ptr
32253A:  LDR.W           LR, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x322548)
32253E:  ADD             R12, PC; _ZN17CVehicleRecording15pPlaybackBufferE_ptr
322540:  LDR             R5, [R5]; CVehicleRecording::PlaybackBufferSize ...
322542:  LDR             R3, [R3]; CVehicleRecording::PlayBackStreamingIndex ...
322544:  ADD             LR, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
322546:  LDR             R1, [R1]; CVehicleRecording::pVehicleForPlayback ...
322548:  LDR             R2, [R2]; CVehicleRecording::bPlaybackGoingOn ...
32254A:  LDR.W           R4, [R12]; CVehicleRecording::pPlaybackBuffer ...
32254E:  STR.W           R6, [R5,R0,LSL#2]
322552:  LDR.W           R5, [R3,R0,LSL#2]
322556:  STR.W           R6, [R1,R0,LSL#2]
32255A:  STR.W           R6, [R4,R0,LSL#2]
32255E:  STRB            R6, [R2,R0]
322560:  LDR.W           R0, [LR]; CVehicleRecording::StreamingArray ...
322564:  ADD.W           R0, R0, R5,LSL#4
322568:  LDRB            R1, [R0,#0xC]
32256A:  SUBS            R1, #1; void *
32256C:  STRB            R1, [R0,#0xC]
32256E:  TST.W           R1, #0xFF
322572:  ITT NE
322574:  POPNE.W         {R11}
322578:  POPNE           {R4-R7,PC}
32257A:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x322580)
32257C:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
32257E:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
322580:  ADD.W           R4, R0, R5,LSL#4
322584:  LDR             R0, [R4,#4]; this
322586:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
32258A:  MOVW            R0, #0x649B
32258E:  STR             R6, [R4,#4]
322590:  ADD             R0, R5; this
322592:  POP.W           {R11}
322596:  POP.W           {R4-R7,LR}
32259A:  B.W             sub_18CCA8
