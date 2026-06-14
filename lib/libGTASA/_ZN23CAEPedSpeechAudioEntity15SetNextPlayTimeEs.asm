; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity15SetNextPlayTimeEs
; Address            : 0x39B0F0 - 0x39B17C
; =========================================================

39B0F0:  PUSH            {R4-R7,LR}
39B0F2:  ADD             R7, SP, #0xC
39B0F4:  PUSH.W          {R8}
39B0F8:  MOV             R4, R1
39B0FA:  MOV             R8, R0
39B0FC:  UBFX.W          R0, R4, #3, #0xD
39B100:  CMP             R0, #0x2C ; ','
39B102:  BHI             loc_39B176
39B104:  LDR             R0, =(gSpeechContextLookup_ptr - 0x39B110)
39B106:  MOVS            R1, #0
39B108:  MOVW            R3, #0xFFFF
39B10C:  ADD             R0, PC; gSpeechContextLookup_ptr
39B10E:  LDR             R2, [R0]; gSpeechContextLookup ; int
39B110:  SXTH            R0, R1
39B112:  LSLS            R5, R0, #4
39B114:  LDRH            R5, [R2,R5]
39B116:  CMP             R5, R3
39B118:  ITTT NE
39B11A:  ADDNE           R1, #1
39B11C:  UXTHNE          R6, R4
39B11E:  CMPNE           R5, R6
39B120:  BNE             loc_39B110
39B122:  MOVW            R1, #0xFFFF
39B126:  CMP             R5, R1
39B128:  BEQ             loc_39B176
39B12A:  LDR             R1, =(gSpeechContextLookup_ptr - 0x39B130)
39B12C:  ADD             R1, PC; gSpeechContextLookup_ptr
39B12E:  LDR             R1, [R1]; gSpeechContextLookup
39B130:  ADD.W           R0, R1, R0,LSL#4
39B134:  MOV.W           R1, #0x3E8; int
39B138:  LDRH            R5, [R0,#0xC]
39B13A:  MOVS            R0, #(stderr+1); this
39B13C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39B140:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39B148)
39B142:  ADD             R0, R5
39B144:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39B146:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
39B148:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
39B14A:  SXTAH.W         R0, R1, R0
39B14E:  SUB.W           R1, R4, #0x154
39B152:  UXTH            R1, R1
39B154:  CMP             R1, #0x12
39B156:  BHI             loc_39B16A
39B158:  MOVS            R1, #0xFEAC0000
39B15E:  ADD.W           R1, R1, R4,LSL#16
39B162:  ADD.W           R1, R8, R1,ASR#14
39B166:  ADDS            R1, #0xB4
39B168:  B               loc_39B174
39B16A:  LDR             R1, =(gGlobalSpeechContextNextPlayTime_ptr - 0x39B170)
39B16C:  ADD             R1, PC; gGlobalSpeechContextNextPlayTime_ptr
39B16E:  LDR             R1, [R1]; gGlobalSpeechContextNextPlayTime
39B170:  ADD.W           R1, R1, R4,LSL#2
39B174:  STR             R0, [R1]
39B176:  POP.W           {R8}
39B17A:  POP             {R4-R7,PC}
