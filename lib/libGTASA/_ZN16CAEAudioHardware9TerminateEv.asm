; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware9TerminateEv
; Address            : 0x3925D4 - 0x392666
; =========================================================

3925D4:  PUSH            {R4-R7,LR}
3925D6:  ADD             R7, SP, #0xC
3925D8:  PUSH.W          {R8}
3925DC:  MOV             R8, R0
3925DE:  ADDW            R5, R8, #0xB8C
3925E2:  MOVS            R4, #0
3925E4:  MOV             R0, R5; this
3925E6:  STRB.W          R4, [R8]
3925EA:  BLX             j__ZN15CAEStreamThread4StopEv; CAEStreamThread::Stop(void)
3925EE:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3925F4)
3925F0:  ADD             R0, PC; AESmoothFadeThread_ptr
3925F2:  LDR             R6, [R0]; AESmoothFadeThread
3925F4:  MOV             R0, R6; this
3925F6:  BLX             j__ZN19CAESmoothFadeThread4StopEv; CAESmoothFadeThread::Stop(void)
3925FA:  MOV             R0, R5; this
3925FC:  BLX             j__ZN15CAEStreamThread11WaitForExitEv; CAEStreamThread::WaitForExit(void)
392600:  MOV             R0, R6; this
392602:  BLX             j__ZN19CAESmoothFadeThread11WaitForExitEv; CAESmoothFadeThread::WaitForExit(void)
392606:  ADDW            R5, R8, #0xBCC
39260A:  MOVS            R6, #0
39260C:  LDR.W           R0, [R5,R6,LSL#2]
392610:  CBZ             R0, loc_39261C
392612:  LDR             R1, [R0]
392614:  LDR             R1, [R1,#4]
392616:  BLX             R1
392618:  STR.W           R4, [R5,R6,LSL#2]
39261C:  ADDS            R6, #1
39261E:  CMP             R6, #0x1E
392620:  BNE             loc_39260C
392622:  LDR.W           R0, [R8,#0xB78]
392626:  CBZ             R0, loc_392634
392628:  LDR             R1, [R0]
39262A:  LDR             R1, [R1,#4]
39262C:  BLX             R1
39262E:  MOVS            R0, #0
392630:  STR.W           R0, [R8,#0xB78]
392634:  LDR.W           R0, [R8,#0xB7C]; this
392638:  CBZ             R0, loc_392648
39263A:  BLX             j__ZN17CAEMP3TrackLoaderD2Ev; CAEMP3TrackLoader::~CAEMP3TrackLoader()
39263E:  BLX             _ZdlPv; operator delete(void *)
392642:  MOVS            R0, #0
392644:  STR.W           R0, [R8,#0xB7C]
392648:  MOVS            R0, #0
39264A:  BLX             j_alcMakeContextCurrent
39264E:  LDR.W           R0, [R8,#0xB84]
392652:  BLX             j_alcDestroyContext
392656:  LDR.W           R0, [R8,#0xB80]
39265A:  POP.W           {R8}
39265E:  POP.W           {R4-R7,LR}
392662:  B.W             sub_19B380
