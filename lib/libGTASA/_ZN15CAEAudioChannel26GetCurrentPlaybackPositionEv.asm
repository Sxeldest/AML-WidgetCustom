; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel26GetCurrentPlaybackPositionEv
; Address            : 0x391B12 - 0x391B38
; =========================================================

391B12:  PUSH            {R4,R6,R7,LR}
391B14:  ADD             R7, SP, #8
391B16:  SUB             SP, SP, #8
391B18:  LDR             R4, [R0,#4]
391B1A:  CBZ             R4, loc_391B32
391B1C:  LDR             R0, [R4,#8]
391B1E:  ADD             R2, SP, #0x10+var_C
391B20:  MOVW            R1, #0x1026
391B24:  BLX             j_alGetSourcei
391B28:  LDR             R0, [R4,#0x20]
391B2A:  LDR             R1, [SP,#0x10+var_C]
391B2C:  ADD             R0, R1
391B2E:  ADD             SP, SP, #8
391B30:  POP             {R4,R6,R7,PC}
391B32:  MOVS            R0, #0
391B34:  ADD             SP, SP, #8
391B36:  POP             {R4,R6,R7,PC}
