; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel11GetPlayTimeEv
; Address            : 0x3A9508 - 0x3A952E
; =========================================================

3A9508:  PUSH            {R4,R6,R7,LR}
3A950A:  ADD             R7, SP, #8
3A950C:  MOV             R4, R0
3A950E:  LDR             R0, [R4]
3A9510:  LDR             R1, [R0,#0xC]
3A9512:  MOV             R0, R4
3A9514:  BLX             R1
3A9516:  CBZ             R0, loc_3A9528
3A9518:  MOV             R0, R4; this
3A951A:  BLX             j__ZN15CAEAudioChannel26GetCurrentPlaybackPositionEv; CAEAudioChannel::GetCurrentPlaybackPosition(void)
3A951E:  MOV             R1, R0; CAEAudioUtility *
3A9520:  MOV             R0, R4; this
3A9522:  BLX             j__ZN15CAEAudioChannel20ConvertFromBytesToMSEj; CAEAudioChannel::ConvertFromBytesToMS(uint)
3A9526:  POP             {R4,R6,R7,PC}
3A9528:  MOV.W           R0, #0xFFFFFFFF
3A952C:  POP             {R4,R6,R7,PC}
