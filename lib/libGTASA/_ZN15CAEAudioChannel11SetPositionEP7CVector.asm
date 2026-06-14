; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel11SetPositionEP7CVector
; Address            : 0x391AE2 - 0x391B0E
; =========================================================

391AE2:  PUSH            {R4,R5,R7,LR}
391AE4:  ADD             R7, SP, #8
391AE6:  SUB             SP, SP, #8; float
391AE8:  LDR             R5, [R0,#4]
391AEA:  MOV             R4, R1
391AEC:  CBZ             R5, loc_391B0A
391AEE:  MOV             R0, R5; this
391AF0:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391AF4:  LDRD.W          R2, R3, [R4]; int
391AF8:  MOVW            R1, #0x1004; int
391AFC:  LDR             R0, [R5,#8]; int
391AFE:  VLDR            S0, [R4,#8]
391B02:  VSTR            S0, [SP,#0x10+var_10]
391B06:  BLX             j_alSource3f
391B0A:  ADD             SP, SP, #8
391B0C:  POP             {R4,R5,R7,PC}
