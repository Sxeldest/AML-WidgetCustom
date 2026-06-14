; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager18StartTrackPlaybackEv
; Address            : 0x39519C - 0x3951E8
; =========================================================

39519C:  PUSH            {R4-R7,LR}
39519E:  ADD             R7, SP, #0xC
3951A0:  PUSH.W          {R11}
3951A4:  SUB             SP, SP, #8
3951A6:  MOV             R4, R0
3951A8:  LDR             R0, =(AEAudioHardware_ptr - 0x3951AE)
3951AA:  ADD             R0, PC; AEAudioHardware_ptr
3951AC:  LDR             R5, [R0]; AEAudioHardware
3951AE:  MOV             R0, R5; this
3951B0:  BLX             j__ZN16CAEAudioHardware13DisableBassEqEv; CAEAudioHardware::DisableBassEq(void)
3951B4:  LDRSH.W         R1, [R4,#4]; __int16
3951B8:  MOV             R0, R5; this
3951BA:  MOVS            R2, #0; unsigned __int16
3951BC:  MOVS            R3, #0x27 ; '''; __int16
3951BE:  MOVS            R6, #0
3951C0:  BLX             j__ZN16CAEAudioHardware15SetChannelFlagsEsts; CAEAudioHardware::SetChannelFlags(short,ushort,short)
3951C4:  LDRSH.W         R1, [R4,#4]; __int16
3951C8:  MOVS            R3, #0xC0400000; float
3951CE:  MOV             R0, R5; this
3951D0:  MOVS            R2, #0; unsigned __int16
3951D2:  STR             R6, [SP,#0x18+var_18]; unsigned __int8
3951D4:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3951D8:  MOV             R0, R5; this
3951DA:  ADD             SP, SP, #8
3951DC:  POP.W           {R11}
3951E0:  POP.W           {R4-R7,LR}
3951E4:  B.W             sub_1952A0
