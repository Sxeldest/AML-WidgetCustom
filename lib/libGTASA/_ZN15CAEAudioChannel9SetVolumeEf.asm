; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel9SetVolumeEf
; Address            : 0x3919BC - 0x391A8E
; =========================================================

3919BC:  PUSH            {R4-R7,LR}
3919BE:  ADD             R7, SP, #0xC
3919C0:  PUSH.W          {R11}
3919C4:  VPUSH           {D8}
3919C8:  SUB             SP, SP, #8
3919CA:  MOV             R4, R0
3919CC:  MOV             R5, R1
3919CE:  LDR             R6, [R4,#4]
3919D0:  CMP             R6, #0
3919D2:  BEQ             loc_391A64
3919D4:  VMOV            S16, R5
3919D8:  VLDR            S0, [R4,#0x18]
3919DC:  VCMP.F32        S0, S16
3919E0:  VMRS            APSR_nzcv, FPSCR
3919E4:  BEQ             loc_391A64
3919E6:  MOV             R0, R6; this
3919E8:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3919EC:  MOV             R2, R6
3919EE:  LDR.W           R0, [R2,#0x28]!
3919F2:  CBNZ            R0, loc_391A06
3919F4:  LDR             R0, [R6,#8]
3919F6:  MOVW            R1, #0x1014
3919FA:  STR             R1, [R6,#0x28]
3919FC:  MOVW            R1, #0x1010
391A00:  BLX             j_alGetSourcei
391A04:  LDR             R0, [R6,#0x28]
391A06:  MOVW            R1, #0x1012
391A0A:  CMP             R0, R1
391A0C:  BNE             loc_391A52
391A0E:  VLDR            S0, [R4,#0x18]
391A12:  VLDR            S4, =60.0
391A16:  VSUB.F32        S2, S16, S0
391A1A:  VABS.F32        S2, S2
391A1E:  VCMPE.F32       S2, S4
391A22:  VMRS            APSR_nzcv, FPSCR
391A26:  BLE             loc_391A52
391A28:  LDR             R1, [R4,#4]; OALSource *
391A2A:  VCMPE.F32       S0, S16
391A2E:  MOVW            R0, #0xFFFE
391A32:  VMRS            APSR_nzcv, FPSCR
391A36:  BGE             loc_391A70
391A38:  LDR             R2, =(AESmoothFadeThread_ptr - 0x391A44)
391A3A:  MOVS            R3, #0
391A3C:  STR             R3, [SP,#0x20+var_20]; bool
391A3E:  SXTH            R3, R0; __int16
391A40:  ADD             R2, PC; AESmoothFadeThread_ptr
391A42:  LDR             R0, [R2]; AESmoothFadeThread ; this
391A44:  MOV             R2, R5; float
391A46:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
391A4A:  CBNZ            R0, loc_391A60
391A4C:  LDR             R0, =(AESmoothFadeThread_ptr - 0x391A52)
391A4E:  ADD             R0, PC; AESmoothFadeThread_ptr
391A50:  B               loc_391A56
391A52:  LDR             R0, =(AESmoothFadeThread_ptr - 0x391A58)
391A54:  ADD             R0, PC; AESmoothFadeThread_ptr
391A56:  LDR             R1, [R4,#4]; OALSource *
391A58:  MOV             R2, R5; float
391A5A:  LDR             R0, [R0]; AESmoothFadeThread ; this
391A5C:  BLX             j__ZN19CAESmoothFadeThread15SetBufferVolumeEP9OALSourcef; CAESmoothFadeThread::SetBufferVolume(OALSource *,float)
391A60:  VSTR            S16, [R4,#0x18]
391A64:  ADD             SP, SP, #8
391A66:  VPOP            {D8}
391A6A:  POP.W           {R11}
391A6E:  POP             {R4-R7,PC}
391A70:  LDR             R2, =(AESmoothFadeThread_ptr - 0x391A7A)
391A72:  ADDS            R0, #1
391A74:  MOVS            R3, #0
391A76:  ADD             R2, PC; AESmoothFadeThread_ptr
391A78:  STR             R3, [SP,#0x20+var_20]; bool
391A7A:  SXTH            R3, R0; __int16
391A7C:  LDR             R0, [R2]; AESmoothFadeThread ; this
391A7E:  MOV             R2, R5; float
391A80:  BLX             j__ZN19CAESmoothFadeThread11RequestFadeEP9OALSourcefsb; CAESmoothFadeThread::RequestFade(OALSource *,float,short,bool)
391A84:  CMP             R0, #0
391A86:  BNE             loc_391A60
391A88:  LDR             R0, =(AESmoothFadeThread_ptr - 0x391A8E)
391A8A:  ADD             R0, PC; AESmoothFadeThread_ptr
391A8C:  B               loc_391A56
