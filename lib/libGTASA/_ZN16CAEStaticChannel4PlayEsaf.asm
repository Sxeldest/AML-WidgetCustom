; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel4PlayEsaf
; Address            : 0x3A90D4 - 0x3A9140
; =========================================================

3A90D4:  PUSH            {R4-R7,LR}
3A90D6:  ADD             R7, SP, #0xC
3A90D8:  PUSH.W          {R11}
3A90DC:  VPUSH           {D8}
3A90E0:  MOV             R4, R0
3A90E2:  VMOV            S16, R3
3A90E6:  LDRB.W          R0, [R4,#0x28]
3A90EA:  CBZ             R0, loc_3A90F6
3A90EC:  MOVS            R0, #0
3A90EE:  CBZ             R1, loc_3A911C
3A90F0:  LDR             R2, [R4,#0x30]
3A90F2:  CBZ             R2, loc_3A90F8
3A90F4:  B               loc_3A911C
3A90F6:  CBZ             R1, loc_3A911A
3A90F8:  MOV             R0, R4; this
3A90FA:  LDR             R5, [R4,#4]
3A90FC:  BLX             j__ZN15CAEAudioChannel20ConvertFromMsToBytesEj; CAEAudioChannel::ConvertFromMsToBytes(uint)
3A9100:  MOV             R6, R0
3A9102:  MOV             R0, R5; this
3A9104:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A9108:  LDR             R0, [R5,#8]
3A910A:  MOVW            R1, #0x1026
3A910E:  MOV             R2, R6
3A9110:  BLX             j_alSourcei
3A9114:  STR             R6, [R5,#0x20]
3A9116:  MOVS            R0, #1
3A9118:  B               loc_3A911C
3A911A:  MOVS            R0, #0
3A911C:  VCMP.F32        S16, #0.0
3A9120:  MOVS            R1, #0
3A9122:  VMRS            APSR_nzcv, FPSCR
3A9126:  IT EQ
3A9128:  MOVEQ           R1, #1
3A912A:  STRB            R1, [R4,#0x1C]
3A912C:  STRB.W          R0, [R4,#0x2C]
3A9130:  MOVS            R0, #1
3A9132:  STRB.W          R0, [R4,#0x2D]
3A9136:  VPOP            {D8}
3A913A:  POP.W           {R11}
3A913E:  POP             {R4-R7,PC}
