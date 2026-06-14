; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel25SetFrequencyScalingFactorEf
; Address            : 0x391B58 - 0x391C76
; =========================================================

391B58:  PUSH            {R4-R7,LR}
391B5A:  ADD             R7, SP, #0xC
391B5C:  PUSH.W          {R8}
391B60:  VPUSH           {D8-D9}
391B64:  SUB             SP, SP, #8
391B66:  VMOV            S0, R1
391B6A:  MOV             R4, R0
391B6C:  VCMP.F32        S0, #0.0
391B70:  VMRS            APSR_nzcv, FPSCR
391B74:  BNE             loc_391B88
391B76:  LDR             R5, [R4,#4]
391B78:  ADD.W           R8, R4, #0x1C
391B7C:  CBZ             R5, loc_391B84
391B7E:  LDRB.W          R0, [R8]
391B82:  CBZ             R0, loc_391BFE
391B84:  MOVS            R5, #1
391B86:  B               loc_391C66
391B88:  VLDR            S2, [R4,#0x24]
391B8C:  VCVT.F32.U32    S16, S2
391B90:  LDR             R1, [R4,#0x20]
391B92:  VMUL.F32        S0, S16, S0
391B96:  VCVT.U32.F32    S18, S0
391B9A:  VMOV            R0, S18
391B9E:  CMP             R1, R0
391BA0:  BEQ             loc_391BC4
391BA2:  LDR             R5, [R4,#4]
391BA4:  STR             R0, [R4,#0x20]
391BA6:  CBZ             R5, loc_391BC4
391BA8:  MOV             R0, R5; this
391BAA:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391BAE:  VCVT.F32.U32    S0, S18
391BB2:  LDR             R0, [R5,#8]
391BB4:  MOVW            R1, #0x1003
391BB8:  VDIV.F32        S0, S0, S16
391BBC:  VMOV            R2, S0
391BC0:  BLX             j_alSourcef
391BC4:  MOV             R8, R4
391BC6:  LDRB.W          R0, [R8,#0x1C]!
391BCA:  CMP             R0, #0
391BCC:  BEQ             loc_391C6A
391BCE:  LDR             R6, [R4,#4]
391BD0:  CBZ             R6, loc_391BFA
391BD2:  MOV             R0, R6; this
391BD4:  LDRB.W          R5, [R4,#0x28]
391BD8:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391BDC:  LDR             R0, [R6,#0xC]
391BDE:  CMP             R0, #2
391BE0:  BEQ             loc_391BF4
391BE2:  CMP             R5, #0
391BE4:  MOVW            R1, #0x1007
391BE8:  IT NE
391BEA:  MOVNE           R5, #1
391BEC:  LDR             R0, [R6,#8]
391BEE:  MOV             R2, R5
391BF0:  BLX             j_alSourcei
391BF4:  LDR             R0, [R4,#4]; this
391BF6:  BLX             j__ZN9OALSource4PlayEv; OALSource::Play(void)
391BFA:  MOVS            R5, #0
391BFC:  B               loc_391C66
391BFE:  MOV             R0, R5; this
391C00:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391C04:  MOV             R2, R5
391C06:  LDR.W           R0, [R2,#0x28]!
391C0A:  CBNZ            R0, loc_391C1E
391C0C:  LDR             R0, [R5,#8]
391C0E:  MOVW            R1, #0x1014
391C12:  STR             R1, [R5,#0x28]
391C14:  MOVW            R1, #0x1010
391C18:  BLX             j_alGetSourcei
391C1C:  LDR             R0, [R5,#0x28]
391C1E:  MOVW            R1, #0x1012
391C22:  MOVS            R5, #1
391C24:  CMP             R0, R1
391C26:  BNE             loc_391C66
391C28:  LDR             R0, =(AESmoothFadeThread_ptr - 0x391C36)
391C2A:  MOVS            R2, #0
391C2C:  LDR             R1, [R4,#4]; OALSource *
391C2E:  MOVT            R2, #0xC2C8; float
391C32:  ADD             R0, PC; AESmoothFadeThread_ptr
391C34:  MOV.W           R3, #0xFFFFFFFF; __int16
391C38:  STR             R5, [SP,#0x28+var_28]; bool
391C3A:  LDR             R0, [R0]; AESmoothFadeThread ; this
391C3C:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
391C40:  CBNZ            R0, loc_391C66
391C42:  LDR             R4, [R4,#4]
391C44:  LDR             R0, [R4,#0xC]
391C46:  CMP             R0, #2
391C48:  ITT EQ
391C4A:  MOVEQ           R0, R4; this
391C4C:  BLXEQ           j__ZN9OALSource14UnqueueBuffersEv; OALSource::UnqueueBuffers(void)
391C50:  LDR             R0, [R4,#8]
391C52:  BLX             j_alSourceStop
391C56:  MOVW            R0, #0x1014
391C5A:  MOVS            R5, #1
391C5C:  STR             R0, [R4,#0x28]
391C5E:  MOVS            R0, #0
391C60:  STR             R0, [R4,#0x20]
391C62:  STRB.W          R5, [R4,#0x2C]
391C66:  STRB.W          R5, [R8]
391C6A:  ADD             SP, SP, #8
391C6C:  VPOP            {D8-D9}
391C70:  POP.W           {R8}
391C74:  POP             {R4-R7,PC}
