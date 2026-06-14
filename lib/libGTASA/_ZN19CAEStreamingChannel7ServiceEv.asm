; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel7ServiceEv
; Address            : 0x3A9D44 - 0x3AA056
; =========================================================

3A9D44:  PUSH            {R4-R7,LR}
3A9D46:  ADD             R7, SP, #0xC
3A9D48:  PUSH.W          {R8-R10}
3A9D4C:  SUB             SP, SP, #8
3A9D4E:  MOV             R4, R0
3A9D50:  BLX             j__ZN15CAEAudioChannel12UpdateStatusEv; CAEAudioChannel::UpdateStatus(void)
3A9D54:  LDR             R5, [R4,#4]
3A9D56:  CBZ             R5, loc_3A9DA0
3A9D58:  MOV             R0, R5; this
3A9D5A:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A9D5E:  MOVW            R0, #0x1014
3A9D62:  MOVW            R1, #0x1010
3A9D66:  STR.W           R0, [R5,#0x28]!
3A9D6A:  LDR.W           R0, [R5,#-0x20]
3A9D6E:  MOV             R2, R5
3A9D70:  BLX             j_alGetSourcei
3A9D74:  LDR             R0, [R5]
3A9D76:  MOVW            R1, #0x1012
3A9D7A:  CMP             R0, R1
3A9D7C:  BNE             loc_3A9DA0
3A9D7E:  MOV             R1, #0x24040
3A9D86:  ADD.W           R8, R4, R1
3A9D8A:  LDR             R0, [R4,R1]
3A9D8C:  ADDS            R1, R0, #4
3A9D8E:  CMP             R1, #2
3A9D90:  BCC             loc_3A9DFE
3A9D92:  ADDS            R1, R0, #1
3A9D94:  BNE             loc_3A9DBC
3A9D96:  MOV             R0, #0xFFFFFFFD
3A9D9A:  STR.W           R0, [R8]
3A9D9E:  B               loc_3A9E02
3A9DA0:  MOV             R1, #0x24040
3A9DA8:  ADD.W           R8, R4, R1
3A9DAC:  LDR             R0, [R4,R1]
3A9DAE:  ADDS            R1, R0, #5
3A9DB0:  BNE             loc_3A9DFE
3A9DB2:  MOV             R0, #0xFFFFFFFA
3A9DB6:  STR.W           R0, [R8]
3A9DBA:  B               loc_3A9F8C
3A9DBC:  ADD.W           R1, R4, #0x24000
3A9DC0:  ADDS            R2, R0, #5
3A9DC2:  ADD.W           R1, R1, #0x50 ; 'P'
3A9DC6:  BNE.W           loc_3AA00C
3A9DCA:  LDR             R0, [R1]
3A9DCC:  CMP             R0, #6
3A9DCE:  ADD.W           R2, R0, #1
3A9DD2:  STR             R2, [R1]
3A9DD4:  BLT             loc_3A9DFA
3A9DD6:  LDR             R5, [R4,#4]
3A9DD8:  LDR             R0, [R5,#0xC]
3A9DDA:  CMP             R0, #2
3A9DDC:  ITT EQ
3A9DDE:  MOVEQ           R0, R5; this
3A9DE0:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A9DE4:  LDR             R0, [R5,#8]
3A9DE6:  BLX             j_alSourceStop
3A9DEA:  MOVW            R0, #0x1014
3A9DEE:  STR             R0, [R5,#0x28]
3A9DF0:  MOVS            R0, #0
3A9DF2:  STR             R0, [R5,#0x20]
3A9DF4:  MOVS            R0, #1
3A9DF6:  STRB.W          R0, [R5,#0x2C]
3A9DFA:  LDR.W           R0, [R8]
3A9DFE:  ADDS            R1, R0, #3
3A9E00:  BNE             loc_3A9E48
3A9E02:  LDR             R5, [R4,#4]
3A9E04:  MOV             R0, R5; this
3A9E06:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A9E0A:  MOV             R2, R5
3A9E0C:  LDR.W           R0, [R2,#0x28]!
3A9E10:  CBNZ            R0, loc_3A9E24
3A9E12:  LDR             R0, [R5,#8]
3A9E14:  MOVW            R1, #0x1014
3A9E18:  STR             R1, [R5,#0x28]
3A9E1A:  MOVW            R1, #0x1010
3A9E1E:  BLX             j_alGetSourcei
3A9E22:  LDR             R0, [R5,#0x28]
3A9E24:  MOVW            R1, #0x1012
3A9E28:  CMP             R0, R1
3A9E2A:  BNE             loc_3A9E32
3A9E2C:  LDR.W           R0, [R8]
3A9E30:  B               loc_3A9E48
3A9E32:  LDR             R0, [R4,#4]
3A9E34:  LDRB.W          R1, [R0,#0x2C]
3A9E38:  MOV             R0, #0xFFFFFFFA
3A9E3C:  CMP             R1, #0
3A9E3E:  IT NE
3A9E40:  MOVNE           R0, #0xFFFFFFF9
3A9E44:  STR.W           R0, [R8]
3A9E48:  ADDS            R0, #7
3A9E4A:  CMP             R0, #4
3A9E4C:  BHI.W           loc_3A9F8C
3A9E50:  MOVS            R1, #1
3A9E52:  LSL.W           R0, R1, R0
3A9E56:  TST.W           R0, #0x19
3A9E5A:  ITTTT NE
3A9E5C:  MOVWNE          R1, #:lower16:(elf_hash_chain+0x13ED0)
3A9E60:  MOVTNE          R1, #:upper16:(elf_hash_chain+0x13ED0)
3A9E64:  LDRNE           R0, [R4,R1]
3A9E66:  CMPNE           R0, #0
3A9E68:  BEQ.W           loc_3A9F8C
3A9E6C:  ADD.W           R10, R4, R1
3A9E70:  LDR             R1, [R0]
3A9E72:  LDR             R1, [R1,#0x14]
3A9E74:  BLX             R1
3A9E76:  LDR             R1, [R4,#0x24]
3A9E78:  CMP             R0, R1
3A9E7A:  BEQ             loc_3A9E8E
3A9E7C:  LDR.W           R0, [R10]
3A9E80:  LDR             R1, [R0]
3A9E82:  LDR             R1, [R1,#0x14]
3A9E84:  BLX             R1
3A9E86:  MOV             R1, R0; unsigned int
3A9E88:  MOV             R0, R4; this
3A9E8A:  BLX             j__ZN15CAEAudioChannel20SetOriginalFrequencyEj; CAEAudioChannel::SetOriginalFrequency(uint)
3A9E8E:  LDR             R5, [R4,#4]
3A9E90:  ADD             R2, SP, #0x20+var_1C
3A9E92:  MOVW            R1, #0x1026
3A9E96:  LDR             R0, [R5,#8]
3A9E98:  BLX             j_alGetSourcei
3A9E9C:  LDR             R0, [R5,#0x20]
3A9E9E:  LDR             R1, [SP,#0x20+var_1C]
3A9EA0:  ADD             R0, R1
3A9EA2:  MOV             R1, #0x38E38E39
3A9EAA:  UMULL.W         R0, R1, R0, R1
3A9EAE:  LDRB.W          R0, [R4,#0x33]
3A9EB2:  CMP             R0, #7
3A9EB4:  MOV.W           R9, R1,LSR#15
3A9EB8:  BNE             loc_3A9EC2
3A9EBA:  ADD.W           R6, R4, #0x31 ; '1'
3A9EBE:  MOVS            R0, #6
3A9EC0:  B               loc_3A9F2A
3A9EC2:  LDR             R1, [R4,#0x34]; void *
3A9EC4:  MOV             R0, R4; this
3A9EC6:  MOV.W           R2, #0x24000; unsigned int
3A9ECA:  BLX             j__ZN19CAEStreamingChannel10FillBufferEPvm; CAEStreamingChannel::FillBuffer(void *,ulong)
3A9ECE:  MOV             R6, R4
3A9ED0:  CMP.W           R0, #0x24000
3A9ED4:  LDRB.W          R1, [R6,#0x31]!
3A9ED8:  STRB            R1, [R6,#1]
3A9EDA:  BEQ             loc_3A9EEA
3A9EDC:  LDR             R1, [R4,#0x34]
3A9EDE:  ADDS            R2, R1, R0
3A9EE0:  RSB.W           R1, R0, #0x24000
3A9EE4:  MOV             R0, R2
3A9EE6:  BLX             j___aeabi_memclr8_1
3A9EEA:  MOVS            R0, #0x14; unsigned int
3A9EEC:  BLX             _Znwj; operator new(uint)
3A9EF0:  MOV             R5, R0
3A9EF2:  LDR.W           R0, [R10]
3A9EF6:  LDR.W           R10, [R4,#0x34]
3A9EFA:  LDR             R1, [R0]
3A9EFC:  LDR             R1, [R1,#0x14]
3A9EFE:  BLX             R1
3A9F00:  MOV             R3, R0; unsigned int
3A9F02:  MOVS            R0, #1
3A9F04:  STR             R0, [SP,#0x20+var_20]; unsigned int
3A9F06:  MOV             R0, R5; this
3A9F08:  MOV             R1, R10; void *
3A9F0A:  MOV.W           R2, #0x24000; unsigned int
3A9F0E:  BLX             j__ZN9OALBufferC2EPvjjj; OALBuffer::OALBuffer(void *,uint,uint,uint)
3A9F12:  LDR             R0, [R4,#4]; this
3A9F14:  MOV             R1, R5; OALBuffer *
3A9F16:  BLX             j__ZN9OALSource11QueueBufferEP9OALBuffer; OALSource::QueueBuffer(OALBuffer *)
3A9F1A:  MOV             R0, R5; this
3A9F1C:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A9F20:  LDRB.W          R0, [R4,#0x33]
3A9F24:  ADDS            R1, R0, #1
3A9F26:  STRB.W          R1, [R4,#0x33]
3A9F2A:  LDRB            R1, [R6]
3A9F2C:  UXTB.W          R2, R9
3A9F30:  CMP             R1, R2
3A9F32:  BEQ             loc_3A9F8C
3A9F34:  LDR.W           R1, [R8]
3A9F38:  ADDS            R1, #4
3A9F3A:  BNE             loc_3A9F74
3A9F3C:  LDRB.W          R0, [R4,#0x29]
3A9F40:  CBZ             R0, loc_3A9F82
3A9F42:  LDR             R5, [R4,#4]
3A9F44:  LDR             R0, [R5,#0xC]
3A9F46:  CMP             R0, #2
3A9F48:  ITT EQ
3A9F4A:  MOVEQ           R0, R5; this
3A9F4C:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A9F50:  LDR             R0, [R5,#8]
3A9F52:  BLX             j_alSourceStop
3A9F56:  MOVS            R0, #1
3A9F58:  MOV             R1, #0xFFFFFFFA
3A9F5C:  STRB.W          R0, [R5,#0x2C]
3A9F60:  MOVW            R0, #0x1014
3A9F64:  STR             R0, [R5,#0x28]
3A9F66:  MOVS            R0, #0
3A9F68:  STR             R0, [R5,#0x20]
3A9F6A:  STR.W           R1, [R8]
3A9F6E:  STRB.W          R0, [R4,#0x29]
3A9F72:  B               loc_3A9F8C
3A9F74:  LDRB.W          R1, [R4,#0x2E]
3A9F78:  CBZ             R1, loc_3A9F94
3A9F7A:  MOVS            R0, #1
3A9F7C:  STRH.W          R0, [R4,#0x2D]
3A9F80:  B               loc_3A9F88
3A9F82:  MOVS            R0, #1
3A9F84:  STRB.W          R0, [R4,#0x29]
3A9F88:  STRB.W          R9, [R6]
3A9F8C:  ADD             SP, SP, #8
3A9F8E:  POP.W           {R8-R10}
3A9F92:  POP             {R4-R7,PC}
3A9F94:  LDRB.W          R1, [R4,#0x2D]
3A9F98:  CBZ             R1, loc_3AA018
3A9F9A:  LDR             R0, =(AESmoothFadeThread_ptr - 0x3A9FAA)
3A9F9C:  MOV             R1, #0x2403C
3A9FA4:  MOVS            R2, #0
3A9FA6:  ADD             R0, PC; AESmoothFadeThread_ptr
3A9FA8:  LDR             R5, [R4,R1]
3A9FAA:  STR             R2, [R4,R1]
3A9FAC:  MOV             R1, #0xFFFFFFF9
3A9FB0:  STR.W           R1, [R8]
3A9FB4:  MOVS            R2, #0
3A9FB6:  LDR             R1, [R4,#4]; OALSource *
3A9FB8:  MOVS            R3, #1
3A9FBA:  LDR             R0, [R0]; AESmoothFadeThread ; this
3A9FBC:  MOVT            R2, #0xC2C8; float
3A9FC0:  STR             R3, [SP,#0x20+var_20]; bool
3A9FC2:  MOVS            R3, #0x23 ; '#'; __int16
3A9FC4:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
3A9FC8:  CBNZ            R0, loc_3A9FEE
3A9FCA:  LDR             R6, [R4,#4]
3A9FCC:  LDR             R0, [R6,#0xC]
3A9FCE:  CMP             R0, #2
3A9FD0:  ITT EQ
3A9FD2:  MOVEQ           R0, R6; this
3A9FD4:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
3A9FD8:  LDR             R0, [R6,#8]
3A9FDA:  BLX             j_alSourceStop
3A9FDE:  MOVW            R0, #0x1014
3A9FE2:  STR             R0, [R6,#0x28]
3A9FE4:  MOVS            R0, #0
3A9FE6:  STR             R0, [R6,#0x20]
3A9FE8:  MOVS            R0, #1
3A9FEA:  STRB.W          R0, [R6,#0x2C]
3A9FEE:  MOV             R0, R4; this
3A9FF0:  MOV             R1, R5; CAEStreamingDecoder *
3A9FF2:  MOVS            R2, #0; signed __int8
3A9FF4:  MOVS            R3, #0; bool
3A9FF6:  BLX             j__ZN19CAEStreamingChannel13PrepareStreamEP19CAEStreamingDecoderab; CAEStreamingChannel::PrepareStream(CAEStreamingDecoder *,signed char,bool)
3A9FFA:  LDR             R0, [R4]
3A9FFC:  MOVS            R1, #0
3A9FFE:  MOVS            R2, #0
3AA000:  MOV.W           R3, #0x3F800000
3AA004:  LDR             R6, [R0,#0x18]
3AA006:  MOV             R0, R4
3AA008:  BLX             R6
3AA00A:  B               loc_3A9F8C
3AA00C:  MOVS            R2, #0
3AA00E:  ADDS            R0, #6
3AA010:  STR             R2, [R1]
3AA012:  BEQ.W           loc_3A9DD6
3AA016:  B               loc_3A9DFA
3AA018:  LDRB.W          R1, [R4,#0x2F]
3AA01C:  CBZ             R1, loc_3AA050
3AA01E:  LDR             R4, [R4,#4]
3AA020:  MOV             R0, R4; this
3AA022:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3AA026:  MOVW            R0, #0x1014
3AA02A:  MOVW            R1, #0x1010
3AA02E:  STR.W           R0, [R4,#0x28]!
3AA032:  LDR.W           R0, [R4,#-0x20]
3AA036:  MOV             R2, R4
3AA038:  BLX             j_alGetSourcei
3AA03C:  LDR             R0, [R4]
3AA03E:  MOVW            R1, #0x1012
3AA042:  CMP             R0, R1
3AA044:  ITT NE
3AA046:  MOVNE           R0, #0xFFFFFFFC
3AA04A:  STRNE.W         R0, [R8]
3AA04E:  B               loc_3A9F8C
3AA050:  STRB.W          R0, [R4,#0x33]
3AA054:  B               loc_3A9F88
