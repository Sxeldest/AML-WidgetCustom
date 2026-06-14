; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel25SetFrequencyScalingFactorEf
; Address            : 0x3AA0F8 - 0x3AA1DA
; =========================================================

3AA0F8:  PUSH            {R4-R7,LR}
3AA0FA:  ADD             R7, SP, #0xC
3AA0FC:  PUSH.W          {R8}
3AA100:  SUB             SP, SP, #8
3AA102:  VMOV            S0, R1
3AA106:  MOV             R4, R0
3AA108:  VCMP.F32        S0, #0.0
3AA10C:  VMRS            APSR_nzcv, FPSCR
3AA110:  BNE             loc_3AA15E
3AA112:  LDR             R0, [R4,#4]
3AA114:  CMP             R0, #0
3AA116:  ITTTT NE
3AA118:  MOVWNE          R5, #:lower16:(elf_hash_chain+0x13ED8)
3AA11C:  MOVTNE          R5, #:upper16:(elf_hash_chain+0x13ED8)
3AA120:  LDRNE           R0, [R4,R5]
3AA122:  ADDSNE.W        R0, R0, #7
3AA126:  BEQ             loc_3AA1D2
3AA128:  MOV             R0, R4; this
3AA12A:  BLX             j__ZN15CAEAudioChannel15IsBufferPlayingEv; CAEAudioChannel::IsBufferPlaying(void)
3AA12E:  CMP             R0, #0
3AA130:  BEQ             loc_3AA1D2
3AA132:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3AA13E)
3AA134:  MOVS            R2, #1
3AA136:  LDR             R1, [R4,#4]; OALSource *
3AA138:  MOVS            R3, #0x23 ; '#'; __int16
3AA13A:  ADD             R0, PC; AESmoothFadeThread_ptr
3AA13C:  STR             R2, [SP,#0x18+var_18]; bool
3AA13E:  MOVS            R2, #0
3AA140:  ADD             R5, R4
3AA142:  LDR             R0, [R0]; AESmoothFadeThread ; this
3AA144:  MOVT            R2, #0xC2C8; float
3AA148:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3AA14C:  CMP             R0, #0
3AA14E:  ITT EQ
3AA150:  LDREQ           R0, [R4,#4]; this
3AA152:  BLXEQ           j__ZN9OALSource5PauseEv; OALSource::Pause(void)
3AA156:  MOV             R0, #0xFFFFFFF9
3AA15A:  STR             R0, [R5]
3AA15C:  B               loc_3AA1D2
3AA15E:  LDR             R0, [R4,#0x24]
3AA160:  VMOV            S2, R0
3AA164:  MOV             R0, R4; this
3AA166:  VCVT.F32.U32    S2, S2
3AA16A:  VMUL.F32        S0, S2, S0
3AA16E:  VCVT.U32.F32    S0, S0
3AA172:  VMOV            R1, S0; unsigned int
3AA176:  BLX             j__ZN15CAEAudioChannel12SetFrequencyEj; CAEAudioChannel::SetFrequency(uint)
3AA17A:  MOV             R0, #0x24040
3AA182:  LDR             R1, [R4,R0]
3AA184:  ADDS            R1, #7
3AA186:  BNE             loc_3AA1D2
3AA188:  ADD.W           R8, R4, R0
3AA18C:  LDR             R0, [R4,#4]; this
3AA18E:  CBZ             R0, loc_3AA1C0
3AA190:  LDR             R1, [R4,#0x18]; float
3AA192:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3AA196:  LDR             R6, [R4,#4]
3AA198:  LDRB.W          R5, [R4,#0x28]
3AA19C:  MOV             R0, R6; this
3AA19E:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3AA1A2:  LDR             R0, [R6,#0xC]
3AA1A4:  CMP             R0, #2
3AA1A6:  BEQ             loc_3AA1BA
3AA1A8:  CMP             R5, #0
3AA1AA:  MOVW            R1, #0x1007
3AA1AE:  IT NE
3AA1B0:  MOVNE           R5, #1
3AA1B2:  LDR             R0, [R6,#8]
3AA1B4:  MOV             R2, R5
3AA1B6:  BLX             j_alSourcei
3AA1BA:  LDR             R0, [R4,#4]; this
3AA1BC:  BLX             j__ZN9OALSource4PlayEv; OALSource::Play(void)
3AA1C0:  LDR             R0, =(wasPlaylistPlaying_ptr - 0x3AA1C8)
3AA1C2:  MOVS            R1, #0
3AA1C4:  ADD             R0, PC; wasPlaylistPlaying_ptr
3AA1C6:  LDR             R0, [R0]; wasPlaylistPlaying
3AA1C8:  STRB            R1, [R0]
3AA1CA:  MOV.W           R0, #0xFFFFFFFF
3AA1CE:  STR.W           R0, [R8]
3AA1D2:  ADD             SP, SP, #8
3AA1D4:  POP.W           {R8}
3AA1D8:  POP             {R4-R7,PC}
