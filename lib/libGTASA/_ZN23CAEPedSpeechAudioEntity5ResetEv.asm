; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity5ResetEv
; Address            : 0x39BAAC - 0x39BAF2
; =========================================================

39BAAC:  PUSH            {R4-R7,LR}
39BAAE:  ADD             R7, SP, #0xC
39BAB0:  PUSH.W          {R8}
39BAB4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39BABC)
39BAB6:  MOVS            R4, #0
39BAB8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39BABA:  LDR.W           R8, [R0]; CTimer::m_snTimeInMilliseconds ...
39BABE:  LDR             R0, =(gGlobalSpeechContextNextPlayTime_ptr - 0x39BAC4)
39BAC0:  ADD             R0, PC; gGlobalSpeechContextNextPlayTime_ptr
39BAC2:  LDR             R6, [R0]; gGlobalSpeechContextNextPlayTime
39BAC4:  MOVW            R0, #(elf_hash_bucket+0xABC); this
39BAC8:  MOVW            R1, #0x1B58; int
39BACC:  LDR.W           R5, [R8]; CTimer::m_snTimeInMilliseconds
39BAD0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39BAD4:  ADD             R0, R5
39BAD6:  STR.W           R0, [R6,R4,LSL#2]
39BADA:  ADDS            R4, #1
39BADC:  CMP.W           R4, #0x168
39BAE0:  BNE             loc_39BAC4
39BAE2:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity21s_nCJMoodOverrideTimeE_ptr - 0x39BAEA)
39BAE4:  MOVS            R1, #0
39BAE6:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity21s_nCJMoodOverrideTimeE_ptr
39BAE8:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_nCJMoodOverrideTime ...
39BAEA:  STR             R1, [R0]; CAEPedSpeechAudioEntity::s_nCJMoodOverrideTime
39BAEC:  POP.W           {R8}
39BAF0:  POP             {R4-R7,PC}
