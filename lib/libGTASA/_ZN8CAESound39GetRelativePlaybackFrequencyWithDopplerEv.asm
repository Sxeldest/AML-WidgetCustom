; =========================================================
; Game Engine Function: _ZN8CAESound39GetRelativePlaybackFrequencyWithDopplerEv
; Address            : 0x3A7FC0 - 0x3A8000
; =========================================================

3A7FC0:  PUSH            {R7,LR}
3A7FC2:  MOV             R7, SP
3A7FC4:  VPUSH           {D8}
3A7FC8:  SUB             SP, SP, #8; float
3A7FCA:  LDRB.W          R1, [R0,#0x56]
3A7FCE:  VLDR            S16, [R0,#0x64]
3A7FD2:  LSLS            R1, R1, #0x1F
3A7FD4:  BNE             loc_3A7FF4
3A7FD6:  LDRD.W          R3, R2, [R0,#0x40]; unsigned int
3A7FDA:  LDRD.W          R1, R12, [R0,#0x48]; float
3A7FDE:  VLDR            S0, [R0,#0x50]
3A7FE2:  MOV             R0, R12; this
3A7FE4:  VSTR            S0, [SP,#0x18+var_18]
3A7FE8:  BLX             j__ZN19CAEAudioEnvironment27GetDopplerRelativeFrequencyEffjjf; CAEAudioEnvironment::GetDopplerRelativeFrequency(float,float,uint,uint,float)
3A7FEC:  VMOV            S0, R0
3A7FF0:  VMUL.F32        S16, S16, S0
3A7FF4:  VMOV            R0, S16
3A7FF8:  ADD             SP, SP, #8
3A7FFA:  VPOP            {D8}
3A7FFE:  POP             {R7,PC}
