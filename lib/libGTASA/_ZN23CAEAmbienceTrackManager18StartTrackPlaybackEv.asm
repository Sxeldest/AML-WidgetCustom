; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager18StartTrackPlaybackEv
; Address            : 0x391748 - 0x391788
; =========================================================

391748:  PUSH            {R4,R5,R7,LR}
39174A:  ADD             R7, SP, #8
39174C:  SUB             SP, SP, #8
39174E:  MOV             R4, R0
391750:  LDR             R0, =(AEAudioHardware_ptr - 0x391756)
391752:  ADD             R0, PC; AEAudioHardware_ptr
391754:  LDR             R5, [R0]; AEAudioHardware
391756:  MOV             R0, R5; this
391758:  BLX             j__ZN16CAEAudioHardware13DisableBassEqEv; CAEAudioHardware::DisableBassEq(void)
39175C:  LDR             R3, [R4,#0x18]; float
39175E:  MOVS            R0, #0
391760:  LDRSH.W         R1, [R4,#4]; __int16
391764:  MOVS            R2, #0; unsigned __int16
391766:  STR             R0, [SP,#0x10+var_10]; unsigned __int8
391768:  MOV             R0, R5; this
39176A:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
39176E:  LDRSH.W         R1, [R4,#4]; __int16
391772:  MOV             R0, R5; this
391774:  MOVS            R2, #0; unsigned __int16
391776:  MOVS            R3, #0x21 ; '!'; __int16
391778:  BLX             j__ZN16CAEAudioHardware15SetChannelFlagsEsts; CAEAudioHardware::SetChannelFlags(short,ushort,short)
39177C:  MOV             R0, R5; this
39177E:  ADD             SP, SP, #8
391780:  POP.W           {R4,R5,R7,LR}
391784:  B.W             sub_1952A0
