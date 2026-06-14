; =========================================================
; Game Engine Function: _ZN12CAudioEngine11RetuneRadioEa
; Address            : 0x3BD360 - 0x3BD386
; =========================================================

3BD360:  PUSH            {R4,R6,R7,LR}
3BD362:  ADD             R7, SP, #8
3BD364:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x3BD36C)
3BD366:  MOV             R4, R1
3BD368:  ADD             R0, PC; AECutsceneTrackManager_ptr
3BD36A:  LDR             R0, [R0]; AECutsceneTrackManager ; this
3BD36C:  BLX             j__ZN23CAECutsceneTrackManager22GetCutsceneTrackStatusEv; CAECutsceneTrackManager::GetCutsceneTrackStatus(void)
3BD370:  CMP             R0, #0
3BD372:  IT NE
3BD374:  POPNE           {R4,R6,R7,PC}
3BD376:  LDR             R0, =(AERadioTrackManager_ptr - 0x3BD37E)
3BD378:  MOV             R1, R4; signed __int8
3BD37A:  ADD             R0, PC; AERadioTrackManager_ptr
3BD37C:  LDR             R0, [R0]; AERadioTrackManager ; this
3BD37E:  POP.W           {R4,R6,R7,LR}
3BD382:  B.W             sub_19C2DC
