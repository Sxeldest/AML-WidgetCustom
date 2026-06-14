; =========================================================
; Game Engine Function: _ZN12CAudioEngine22PlayPreloadedBeatTrackEh
; Address            : 0x3BD798 - 0x3BD7AE
; =========================================================

3BD798:  PUSH            {R4,R5,R7,LR}
3BD79A:  ADD             R7, SP, #8
3BD79C:  MOV             R5, R0
3BD79E:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD7A6)
3BD7A0:  MOV             R4, R1
3BD7A2:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD7A4:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD7A6:  BLX             j__ZN23CAECutsceneTrackManager26PlayPreloadedCutsceneTrackEv; CAECutsceneTrackManager::PlayPreloadedCutsceneTrack(void)
3BD7AA:  STRB            R4, [R5]
3BD7AC:  POP             {R4,R5,R7,PC}
