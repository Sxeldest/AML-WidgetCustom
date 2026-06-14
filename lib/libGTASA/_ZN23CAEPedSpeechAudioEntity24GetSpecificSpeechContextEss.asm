; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity24GetSpecificSpeechContextEss
; Address            : 0x39D2D0 - 0x39D320
; =========================================================

39D2D0:  PUSH            {R4,R6,R7,LR}
39D2D2:  ADD             R7, SP, #8
39D2D4:  UBFX.W          R0, R1, #3, #0xD
39D2D8:  MOVW            R12, #0xFFFF
39D2DC:  CMP             R0, #0x2C ; ','
39D2DE:  ITT LS
39D2E0:  UXTHLS          R0, R2
39D2E2:  CMPLS           R0, #5
39D2E4:  BHI             loc_39D31A
39D2E6:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39D2EE)
39D2E8:  MOVS            R3, #0
39D2EA:  ADD             R0, PC; gSpeechContextLookup_ptr
39D2EC:  LDR.W           LR, [R0]; gSpeechContextLookup
39D2F0:  UXTH            R0, R1
39D2F2:  SXTH            R1, R3
39D2F4:  LSLS            R4, R1, #4
39D2F6:  LDRH.W          R4, [LR,R4]
39D2FA:  CMP             R4, R12
39D2FC:  ITT NE
39D2FE:  ADDNE           R3, #1
39D300:  CMPNE           R4, R0
39D302:  BNE             loc_39D2F2
39D304:  CMP             R4, R12
39D306:  BEQ             loc_39D31A
39D308:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39D30E)
39D30A:  ADD             R0, PC; gSpeechContextLookup_ptr
39D30C:  LDR             R0, [R0]; gSpeechContextLookup
39D30E:  ADD.W           R0, R0, R1,LSL#4
39D312:  ADD.W           R0, R0, R2,LSL#1
39D316:  LDRH.W          R12, [R0,#2]
39D31A:  SXTH.W          R0, R12
39D31E:  POP             {R4,R6,R7,PC}
