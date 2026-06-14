; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager7ServiceEi
; Address            : 0x395034 - 0x395170
; =========================================================

395034:  PUSH            {R4-R7,LR}
395036:  ADD             R7, SP, #0xC
395038:  PUSH.W          {R11}
39503C:  SUB             SP, SP, #0x10
39503E:  MOV             R4, R0
395040:  LDR             R0, =(AEAudioHardware_ptr - 0x395048)
395042:  STR             R1, [R4,#0x28]
395044:  ADD             R0, PC; AEAudioHardware_ptr
395046:  LDR             R5, [R0]; AEAudioHardware
395048:  MOV             R0, R5; this
39504A:  BLX             j__ZN16CAEAudioHardware16GetTrackLengthMsEv; CAEAudioHardware::GetTrackLengthMs(void)
39504E:  STR             R0, [R4,#0x2C]
395050:  MOV             R0, R5; this
395052:  BLX             j__ZN16CAEAudioHardware17GetPlayingTrackIDEv; CAEAudioHardware::GetPlayingTrackID(void)
395056:  LDR             R1, [R4,#8]
395058:  STR             R0, [R4,#0x24]
39505A:  CMP             R1, #7; switch 8 cases
39505C:  BHI.W           def_395060; jumptable 00395060 default case
395060:  TBB.W           [PC,R1]; switch jump
395064:  DCB 4; jump table for switch statement
395065:  DCB 0x14
395066:  DCB 0x19
395067:  DCB 0x3A
395068:  DCB 0x5A
395069:  DCB 0x5D
39506A:  DCB 0x67
39506B:  DCB 0x6E
39506C:  LDR             R2, =(AEAudioHardware_ptr - 0x395076); jumptable 00395060 case 0
39506E:  MOVS            R5, #0
395070:  LDRB            R0, [R4,#0x1C]
395072:  ADD             R2, PC; AEAudioHardware_ptr
395074:  LDR             R1, [R4,#0xC]; unsigned int
395076:  LDR             R3, [R4,#0x14]; unsigned int
395078:  STRD.W          R0, R5, [SP,#0x20+var_20]; char
39507C:  LDR             R0, [R2]; AEAudioHardware ; this
39507E:  MOV.W           R2, #0xFFFFFFFF; int
395082:  STR             R5, [SP,#0x20+var_18]; bool
395084:  BLX             j__ZN16CAEAudioHardware9PlayTrackEjijcbb; CAEAudioHardware::PlayTrack(uint,int,uint,char,bool,bool)
395088:  MOVS            R0, #1
39508A:  B               loc_395166
39508C:  LDR             R0, [R4,#0x28]; jumptable 00395060 case 1
39508E:  ADDS            R0, #2
395090:  BNE             def_395060; jumptable 00395060 default case
395092:  MOVS            R0, #2
395094:  B               loc_395166
395096:  LDRB            R0, [R4]; jumptable 00395060 case 2
395098:  CMP             R0, #0
39509A:  BEQ             def_395060; jumptable 00395060 default case
39509C:  LDR             R0, =(AEAudioHardware_ptr - 0x3950A2)
39509E:  ADD             R0, PC; AEAudioHardware_ptr
3950A0:  LDR             R5, [R0]; AEAudioHardware
3950A2:  MOV             R0, R5; this
3950A4:  BLX             j__ZN16CAEAudioHardware13DisableBassEqEv; CAEAudioHardware::DisableBassEq(void)
3950A8:  LDRSH.W         R1, [R4,#4]; __int16
3950AC:  MOV             R0, R5; this
3950AE:  MOVS            R2, #0; unsigned __int16
3950B0:  MOVS            R3, #0x27 ; '''; __int16
3950B2:  MOVS            R6, #0
3950B4:  BLX             j__ZN16CAEAudioHardware15SetChannelFlagsEsts; CAEAudioHardware::SetChannelFlags(short,ushort,short)
3950B8:  LDRSH.W         R1, [R4,#4]; __int16
3950BC:  MOVS            R3, #0xC0400000; float
3950C2:  MOV             R0, R5; this
3950C4:  MOVS            R2, #0; unsigned __int16
3950C6:  STR             R6, [SP,#0x20+var_20]; unsigned __int8
3950C8:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
3950CC:  MOV             R0, R5; this
3950CE:  BLX             j__ZN16CAEAudioHardware18StartTrackPlaybackEv; CAEAudioHardware::StartTrackPlayback(void)
3950D2:  STRB            R6, [R4]
3950D4:  MOVS            R0, #3
3950D6:  B               loc_395166
3950D8:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x3950E0); jumptable 00395060 case 3
3950DA:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x3950E6)
3950DC:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
3950DE:  VLDR            S0, =0.0
3950E2:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
3950E4:  LDR             R0, [R0]; CTimer::m_UserPause ...
3950E6:  LDR             R1, [R1]; CTimer::m_CodePause ...
3950E8:  LDRB            R0, [R0]; CTimer::m_UserPause
3950EA:  LDRB            R1, [R1]; CTimer::m_CodePause
3950EC:  ORRS            R0, R1
3950EE:  LSLS            R0, R0, #0x18
3950F0:  BNE             loc_395100
3950F2:  VMOV.F32        S2, #1.0
3950F6:  LDRB            R0, [R4,#1]
3950F8:  CMP             R0, #0
3950FA:  IT EQ
3950FC:  VMOVEQ.F32      S0, S2
395100:  VMOV            R3, S0; float
395104:  LDR             R0, =(AEAudioHardware_ptr - 0x395110)
395106:  LDRSH.W         R1, [R4,#4]; __int16
39510A:  MOVS            R2, #0; unsigned __int16
39510C:  ADD             R0, PC; AEAudioHardware_ptr
39510E:  LDR             R0, [R0]; AEAudioHardware ; this
395110:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
395114:  LDR             R0, [R4,#0x28]
395116:  B               loc_395160
395118:  LDR             R0, =(AEAudioHardware_ptr - 0x39511E); jumptable 00395060 case 4
39511A:  ADD             R0, PC; AEAudioHardware_ptr
39511C:  B               loc_395136
39511E:  LDR             R0, =(AEAudioHardware_ptr - 0x39512A); jumptable 00395060 case 5
395120:  MOVS            R2, #0; unsigned __int16
395122:  LDRSH.W         R1, [R4,#4]; __int16
395126:  ADD             R0, PC; AEAudioHardware_ptr
395128:  LDR             R0, [R0]; AEAudioHardware ; this
39512A:  BLX             j__ZN16CAEAudioHardware9StopSoundEst; CAEAudioHardware::StopSound(short,ushort)
39512E:  MOVS            R0, #6
395130:  B               loc_395166
395132:  LDR             R0, =(AEAudioHardware_ptr - 0x395138); jumptable 00395060 case 6
395134:  ADD             R0, PC; AEAudioHardware_ptr
395136:  LDR             R0, [R0]; AEAudioHardware ; this
395138:  BLX             j__ZN16CAEAudioHardware9StopTrackEv; CAEAudioHardware::StopTrack(void)
39513C:  MOVS            R0, #7
39513E:  B               loc_395166
395140:  LDR             R0, [R4,#0x28]; jumptable 00395060 case 7
395142:  ADDS            R1, R0, #7
395144:  IT NE
395146:  ADDSNE.W        R1, R0, #2
39514A:  BNE             loc_395160
39514C:  LDR             R0, =(AEAudioHardware_ptr - 0x395152)
39514E:  ADD             R0, PC; AEAudioHardware_ptr
395150:  LDR             R0, [R0]; AEAudioHardware ; this
395152:  ADD             SP, SP, #0x10
395154:  POP.W           {R11}
395158:  POP.W           {R4-R7,LR}
39515C:  B.W             j_j__ZN16CAEAudioHardware9StopTrackEv; j_CAEAudioHardware::StopTrack(void)
395160:  ADDS            R0, #6
395162:  BNE             def_395060; jumptable 00395060 default case
395164:  MOVS            R0, #8
395166:  STR             R0, [R4,#8]
395168:  ADD             SP, SP, #0x10; jumptable 00395060 default case
39516A:  POP.W           {R11}
39516E:  POP             {R4-R7,PC}
