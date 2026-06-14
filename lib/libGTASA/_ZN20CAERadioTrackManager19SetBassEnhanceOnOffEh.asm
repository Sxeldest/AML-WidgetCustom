; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager19SetBassEnhanceOnOffEh
; Address            : 0x3A31C8 - 0x3A3202
; =========================================================

3A31C8:  LDR             R2, [R0,#0x68]
3A31CA:  STRB            R1, [R0,#4]
3A31CC:  CMP             R2, #2
3A31CE:  IT NE
3A31D0:  BXNE            LR
3A31D2:  VLDR            S0, [R0,#0xEC]
3A31D6:  CMP             R1, #0
3A31D8:  LDRB.W          R3, [R0,#0xEA]
3A31DC:  VMOV            R2, S0; float
3A31E0:  STRB.W          R3, [R0,#0xAE]
3A31E4:  VSTR            S0, [R0,#0xB0]
3A31E8:  BEQ             loc_3A31F6
3A31EA:  LDR             R0, =(AEAudioHardware_ptr - 0x3A31F2)
3A31EC:  SXTB            R1, R3; signed __int8
3A31EE:  ADD             R0, PC; AEAudioHardware_ptr
3A31F0:  LDR             R0, [R0]; AEAudioHardware ; this
3A31F2:  B.W             sub_18E46C
3A31F6:  LDR             R0, =(AEAudioHardware_ptr - 0x3A31FE)
3A31F8:  MOVS            R1, #0; signed __int8
3A31FA:  ADD             R0, PC; AEAudioHardware_ptr
3A31FC:  LDR             R0, [R0]; AEAudioHardware ; this
3A31FE:  B.W             sub_18E46C
