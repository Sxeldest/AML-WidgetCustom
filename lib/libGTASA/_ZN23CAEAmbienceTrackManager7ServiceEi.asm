; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager7ServiceEi
; Address            : 0x390D8C - 0x390F82
; =========================================================

390D8C:  PUSH            {R4-R7,LR}
390D8E:  ADD             R7, SP, #0xC
390D90:  PUSH.W          {R8}
390D94:  SUB             SP, SP, #0x10
390D96:  MOV             R4, R0
390D98:  LDR             R0, =(AudioEngine_ptr - 0x390DA0)
390D9A:  MOV             R5, R1
390D9C:  ADD             R0, PC; AudioEngine_ptr
390D9E:  LDR             R0, [R0]; AudioEngine ; this
390DA0:  BLX             j__ZN12CAudioEngine21IsCutsceneTrackActiveEv; CAudioEngine::IsCutsceneTrackActive(void)
390DA4:  LDR             R1, =(_ZN6CTimer11m_UserPauseE_ptr - 0x390DAA)
390DA6:  ADD             R1, PC; _ZN6CTimer11m_UserPauseE_ptr
390DA8:  LDR             R1, [R1]; CTimer::m_UserPause ...
390DAA:  LDRB            R1, [R1]; CTimer::m_UserPause
390DAC:  ORRS            R0, R1
390DAE:  LSLS            R0, R0, #0x18
390DB0:  BNE             loc_390DDC
390DB2:  LDR             R0, =(_ZN6CTimer11m_CodePauseE_ptr - 0x390DBA)
390DB4:  LDR             R1, =(FrontEndMenuManager_ptr - 0x390DBC)
390DB6:  ADD             R0, PC; _ZN6CTimer11m_CodePauseE_ptr
390DB8:  ADD             R1, PC; FrontEndMenuManager_ptr
390DBA:  LDR             R0, [R0]; CTimer::m_CodePause ...
390DBC:  LDR             R1, [R1]; FrontEndMenuManager
390DBE:  LDRB            R0, [R0]; CTimer::m_CodePause
390DC0:  LDRB.W          R1, [R1,#(byte_98F1A5 - 0x98F0F8)]
390DC4:  ORRS            R0, R1
390DC6:  LSLS            R0, R0, #0x18
390DC8:  BNE             loc_390DDC
390DCA:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x390DD0)
390DCC:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
390DCE:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
390DD0:  LDRB            R0, [R0]; CLoadingScreen::m_bActive
390DD2:  CMP             R0, #0
390DD4:  ITT EQ
390DD6:  MOVEQ           R0, R4; this
390DD8:  BLXEQ           j__ZN23CAEAmbienceTrackManager28UpdateAmbienceTrackAndVolumeEv; CAEAmbienceTrackManager::UpdateAmbienceTrackAndVolume(void)
390DDC:  LDR             R0, [R4,#8]
390DDE:  CMP             R0, #7; switch 8 cases
390DE0:  BHI.W           def_390DE4; jumptable 00390DE4 default case
390DE4:  TBB.W           [PC,R0]; switch jump
390DE8:  DCB 4; jump table for switch statement
390DE9:  DCB 0x23
390DEA:  DCB 0x28
390DEB:  DCB 0x43
390DEC:  DCB 0x77
390DED:  DCB 0x80
390DEE:  DCB 0x8A
390DEF:  DCB 0x8E
390DF0:  BLX             j__Z13IsPostLoadingv; jumptable 00390DE4 case 0
390DF4:  CMP             R0, #0
390DF6:  BNE.W           def_390DE4; jumptable 00390DE4 default case
390DFA:  LDRB            R0, [R4,#2]
390DFC:  MOVS            R5, #0
390DFE:  MOVS            R3, #0
390E00:  CMP             R0, #0
390E02:  BNE.W           loc_390F64
390E06:  LDR             R0, [R4,#0x10]
390E08:  CMP             R0, #0
390E0A:  BLT.W           loc_390F54
390E0E:  LDR             R2, [R4,#0x14]
390E10:  MOV             R1, R0
390E12:  CBZ             R2, loc_390E20
390E14:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x390E1C)
390E16:  SUBS            R2, R0, R2
390E18:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
390E1A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
390E1C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
390E1E:  ADD             R1, R2
390E20:  MOVW            R2, #0x1B58
390E24:  ADDS            R3, R0, R2
390E26:  CMP             R1, R3
390E28:  IT GT
390E2A:  MOVGT           R3, R1
390E2C:  B               loc_390F64
390E2E:  ADDS            R0, R5, #2; jumptable 00390DE4 case 1
390E30:  BNE.W           def_390DE4; jumptable 00390DE4 default case
390E34:  MOVS            R0, #2
390E36:  B               loc_390F36
390E38:  LDR             R0, =(AEAudioHardware_ptr - 0x390E3E); jumptable 00390DE4 case 2
390E3A:  ADD             R0, PC; AEAudioHardware_ptr
390E3C:  LDR             R5, [R0]; AEAudioHardware
390E3E:  MOV             R0, R5; this
390E40:  BLX             j__ZN16CAEAudioHardware13DisableBassEqEv; CAEAudioHardware::DisableBassEq(void)
390E44:  LDR             R3, [R4,#0x18]; float
390E46:  MOVS            R0, #0
390E48:  LDRSH.W         R1, [R4,#4]; __int16
390E4C:  MOVS            R2, #0; unsigned __int16
390E4E:  STR             R0, [SP,#0x20+var_20]; unsigned __int8
390E50:  MOV             R0, R5; this
390E52:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
390E56:  LDRSH.W         R1, [R4,#4]; __int16
390E5A:  MOV             R0, R5; this
390E5C:  MOVS            R2, #0; unsigned __int16
390E5E:  MOVS            R3, #0x21 ; '!'; __int16
390E60:  BLX             j__ZN16CAEAudioHardware15SetChannelFlagsEsts; CAEAudioHardware::SetChannelFlags(short,ushort,short)
390E64:  MOV             R0, R5; this
390E66:  BLX             j__ZN16CAEAudioHardware18StartTrackPlaybackEv; CAEAudioHardware::StartTrackPlayback(void)
390E6A:  MOVS            R0, #3
390E6C:  B               loc_390F36
390E6E:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x390E78); jumptable 00390DE4 case 3
390E70:  VLDR            S0, =0.0
390E74:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
390E76:  LDR             R0, [R0]; CTimer::m_UserPause ...
390E78:  LDRB            R0, [R0]; CTimer::m_UserPause
390E7A:  CBNZ            R0, loc_390E98
390E7C:  LDR             R0, =(_ZN6CTimer11m_CodePauseE_ptr - 0x390E84)
390E7E:  LDR             R1, =(FrontEndMenuManager_ptr - 0x390E86)
390E80:  ADD             R0, PC; _ZN6CTimer11m_CodePauseE_ptr
390E82:  ADD             R1, PC; FrontEndMenuManager_ptr
390E84:  LDR             R0, [R0]; CTimer::m_CodePause ...
390E86:  LDR             R1, [R1]; FrontEndMenuManager
390E88:  LDRB            R0, [R0]; CTimer::m_CodePause
390E8A:  LDRB.W          R1, [R1,#(byte_98F1A5 - 0x98F0F8)]
390E8E:  ORRS            R0, R1
390E90:  LSLS            R0, R0, #0x18
390E92:  IT EQ
390E94:  VLDREQ          S0, [R4,#0x1C]
390E98:  VMOV            R5, S0
390E9C:  LDR             R0, =(AEAudioHardware_ptr - 0x390EA8)
390E9E:  LDRSH.W         R1, [R4,#4]; __int16
390EA2:  MOVS            R2, #0; unsigned __int16
390EA4:  ADD             R0, PC; AEAudioHardware_ptr
390EA6:  MOV.W           R8, #0
390EAA:  LDR             R6, [R0]; AEAudioHardware
390EAC:  MOV             R0, R6; this
390EAE:  MOV             R3, R5; float
390EB0:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
390EB4:  LDRSH.W         R1, [R4,#4]; __int16
390EB8:  MOV             R0, R6; this
390EBA:  MOVS            R2, #0; unsigned __int16
390EBC:  MOV             R3, R5; float
390EBE:  BLX             j__ZN16CAEAudioHardware32SetChannelFrequencyScalingFactorEstf; CAEAudioHardware::SetChannelFrequencyScalingFactor(short,ushort,float)
390EC2:  LDR             R3, [R4,#0x18]; float
390EC4:  MOV             R0, R6; this
390EC6:  LDRSH.W         R1, [R4,#4]; __int16
390ECA:  MOVS            R2, #0; unsigned __int16
390ECC:  STR.W           R8, [SP,#0x20+var_20]; unsigned __int8
390ED0:  BLX             j__ZN16CAEAudioHardware16SetChannelVolumeEstfh; CAEAudioHardware::SetChannelVolume(short,ushort,float,uchar)
390ED4:  B               def_390DE4; jumptable 00390DE4 default case
390ED6:  LDR             R0, [R4,#0xC]; jumptable 00390DE4 case 4
390ED8:  LDR             R1, [R4,#0x20]
390EDA:  CMP             R1, R0
390EDC:  BNE             loc_390F16
390EDE:  MOV.W           R0, #0xFFFFFFFF
390EE2:  STR             R0, [R4,#0x10]
390EE4:  MOVS            R0, #0
390EE6:  B               loc_390F20
390EE8:  LDR             R0, =(AEAudioHardware_ptr - 0x390EF4); jumptable 00390DE4 case 5
390EEA:  MOVS            R2, #0; unsigned __int16
390EEC:  LDRSH.W         R1, [R4,#4]; __int16
390EF0:  ADD             R0, PC; AEAudioHardware_ptr
390EF2:  LDR             R0, [R0]; AEAudioHardware ; this
390EF4:  BLX             j__ZN16CAEAudioHardware9StopSoundEst; CAEAudioHardware::StopSound(short,ushort)
390EF8:  MOVS            R0, #6
390EFA:  B               loc_390F36
390EFC:  LDR             R0, =(AEAudioHardware_ptr - 0x390F02); jumptable 00390DE4 case 6
390EFE:  ADD             R0, PC; AEAudioHardware_ptr
390F00:  LDR             R0, [R0]; AEAudioHardware
390F02:  B               loc_390F30
390F04:  ADDS            R0, R5, #7; jumptable 00390DE4 case 7
390F06:  IT NE
390F08:  ADDSNE.W        R0, R5, #2
390F0C:  BEQ             loc_390F40
390F0E:  ADDS            R0, R5, #6
390F10:  BNE             def_390DE4; jumptable 00390DE4 default case
390F12:  MOVS            R0, #8
390F14:  B               loc_390F36
390F16:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x390F1E)
390F18:  STR             R5, [R4,#0x10]
390F1A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
390F1C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
390F1E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
390F20:  LDR             R1, =(AEAudioHardware_ptr - 0x390F2C)
390F22:  MOVS            R2, #0xC2C80000
390F28:  ADD             R1, PC; AEAudioHardware_ptr
390F2A:  STRD.W          R0, R2, [R4,#0x14]
390F2E:  LDR             R0, [R1]; AEAudioHardware ; this
390F30:  BLX             j__ZN16CAEAudioHardware9StopTrackEv; CAEAudioHardware::StopTrack(void)
390F34:  MOVS            R0, #7
390F36:  STR             R0, [R4,#8]
390F38:  ADD             SP, SP, #0x10; jumptable 00390DE4 default case
390F3A:  POP.W           {R8}
390F3E:  POP             {R4-R7,PC}
390F40:  LDR             R0, =(AEAudioHardware_ptr - 0x390F46)
390F42:  ADD             R0, PC; AEAudioHardware_ptr
390F44:  LDR             R0, [R0]; AEAudioHardware ; this
390F46:  ADD             SP, SP, #0x10
390F48:  POP.W           {R8}
390F4C:  POP.W           {R4-R7,LR}
390F50:  B.W             j_j__ZN16CAEAudioHardware9StopTrackEv; j_CAEAudioHardware::StopTrack(void)
390F54:  MOVW            R1, #:lower16:(aZ16setandroidp+0x10); "usedi"
390F58:  MOVS            R0, #0; this
390F5A:  MOVT            R1, #:upper16:(aZ16setandroidp+0x10); int
390F5E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
390F62:  MOV             R3, R0; unsigned int
390F64:  LDR             R2, =(AEAudioHardware_ptr - 0x390F6E)
390F66:  LDRB.W          R0, [R4,#0x28]
390F6A:  ADD             R2, PC; AEAudioHardware_ptr
390F6C:  LDR             R1, [R4,#0x20]; unsigned int
390F6E:  STRD.W          R0, R5, [SP,#0x20+var_20]; char
390F72:  LDR             R0, [R2]; AEAudioHardware ; this
390F74:  MOV.W           R2, #0xFFFFFFFF; int
390F78:  STR             R5, [SP,#0x20+var_18]; bool
390F7A:  BLX             j__ZN16CAEAudioHardware9PlayTrackEjijcbb; CAEAudioHardware::PlayTrack(uint,int,uint,char,bool,bool)
390F7E:  MOVS            R0, #1
390F80:  B               loc_390F36
