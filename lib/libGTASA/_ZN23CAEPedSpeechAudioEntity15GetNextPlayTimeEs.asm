; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity15GetNextPlayTimeEs
; Address            : 0x39AAE4 - 0x39AB1C
; =========================================================

39AAE4:  UBFX.W          R2, R1, #3, #0xD
39AAE8:  CMP             R2, #0x2C ; ','
39AAEA:  ITT HI
39AAEC:  MOVHI           R0, #0
39AAEE:  BXHI            LR
39AAF0:  SUB.W           R2, R1, #0x154
39AAF4:  UXTH            R2, R2
39AAF6:  CMP             R2, #0x12
39AAF8:  BHI             loc_39AB0E
39AAFA:  MOVS            R2, #0xFEAC0000
39AB00:  ADD.W           R1, R2, R1,LSL#16
39AB04:  ADD.W           R0, R0, R1,ASR#14
39AB08:  ADDS            R0, #0xB4
39AB0A:  LDR             R0, [R0]
39AB0C:  BX              LR
39AB0E:  LDR             R0, =(gGlobalSpeechContextNextPlayTime_ptr - 0x39AB14)
39AB10:  ADD             R0, PC; gGlobalSpeechContextNextPlayTime_ptr
39AB12:  LDR             R0, [R0]; gGlobalSpeechContextNextPlayTime
39AB14:  ADD.W           R0, R0, R1,LSL#2
39AB18:  LDR             R0, [R0]
39AB1A:  BX              LR
