; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager20PreloadCutsceneTrackEsh
; Address            : 0x395238 - 0x3952A8
; =========================================================

395238:  PUSH            {R4-R7,LR}
39523A:  ADD             R7, SP, #0xC
39523C:  PUSH.W          {R11}
395240:  MOV             R4, R0
395242:  MOVS            R0, #0
395244:  STRD.W          R0, R1, [R4,#8]
395248:  MOV             R5, R2
39524A:  STR             R0, [R4,#0x14]
39524C:  MOVW            R0, #0x7530; int
395250:  BLX             j__Z19SetPostLoadingTimeri; SetPostLoadingTimer(int)
395254:  LDR             R0, =(AEAudioHardware_ptr - 0x39525A)
395256:  ADD             R0, PC; AEAudioHardware_ptr
395258:  LDR             R6, [R0]; AEAudioHardware
39525A:  MOV             R0, R6; this
39525C:  BLX             j__ZN16CAEAudioHardware9StopTrackEv; CAEAudioHardware::StopTrack(void)
395260:  MOV             R0, R6; this
395262:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
395266:  CMP             R5, #0
395268:  ITT NE
39526A:  LDRNE           R0, [R4,#8]
39526C:  CMPNE           R0, #2
39526E:  BEQ             loc_395298
395270:  LDR             R0, =(AEAudioHardware_ptr - 0x395276)
395272:  ADD             R0, PC; AEAudioHardware_ptr
395274:  LDR             R5, [R0]; AEAudioHardware
395276:  MOV             R0, R5; this
395278:  BLX             j__ZN16CAEAudioHardware16GetTrackPlayTimeEv; CAEAudioHardware::GetTrackPlayTime(void)
39527C:  MOV             R1, R0; int
39527E:  MOV             R0, R4; this
395280:  BLX             j__ZN23CAECutsceneTrackManager7ServiceEi; CAECutsceneTrackManager::Service(int)
395284:  MOV             R0, R5; this
395286:  BLX             j__ZN16CAEAudioHardware7ServiceEv; CAEAudioHardware::Service(void)
39528A:  MOV.W           R0, #0x3E8; useconds
39528E:  BLX             j__Z14OS_ThreadSleepi; OS_ThreadSleep(int)
395292:  LDR             R0, [R4,#8]
395294:  CMP             R0, #2
395296:  BNE             loc_395276
395298:  MOVW            R0, #0x7530; int
39529C:  POP.W           {R11}
3952A0:  POP.W           {R4-R7,LR}
3952A4:  B.W             sub_19F5C4
