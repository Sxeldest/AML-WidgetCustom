; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity10SwapSoundsEv
; Address            : 0x3AA96C - 0x3AA9D6
; =========================================================

3AA96C:  PUSH            {R4,R5,R7,LR}
3AA96E:  ADD             R7, SP, #8
3AA970:  MOV             R4, R0
3AA972:  LDR.W           R1, [R0,#0xA0]!
3AA976:  CMP             R1, #0
3AA978:  ITTT NE
3AA97A:  MOVNE           R2, R4
3AA97C:  LDRNE.W         R3, [R2,#0xA4]!
3AA980:  CMPNE           R3, #0
3AA982:  BEQ             locret_3AA9D4
3AA984:  LDRB.W          R12, [R4,#0x98]
3AA988:  MOV             R5, R1
3AA98A:  LDR.W           LR, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x3AA99A)
3AA98E:  CMP.W           R12, #0
3AA992:  IT EQ
3AA994:  MOVEQ           R5, R3
3AA996:  ADD             LR, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
3AA998:  LDR             R5, [R5,#0x14]
3AA99A:  IT EQ
3AA99C:  MOVEQ           R3, R1
3AA99E:  STR             R5, [R3,#0x14]
3AA9A0:  IT EQ
3AA9A2:  MOVEQ           R0, R2
3AA9A4:  LDR             R0, [R0]
3AA9A6:  MOVS            R1, #0xC2C80000
3AA9AC:  LDR.W           R2, [LR]; int
3AA9B0:  MOVS            R3, #0
3AA9B2:  CMP.W           R12, #0
3AA9B6:  STR             R1, [R0,#0x14]
3AA9B8:  LDRH.W          R0, [R4,#0x8E]; this
3AA9BC:  LDRH.W          R1, [R4,#0x90]; int
3AA9C0:  IT EQ
3AA9C2:  MOVEQ           R3, #1
3AA9C4:  STRB.W          R3, [R4,#0x98]
3AA9C8:  LDR             R5, [R2]; CTimer::m_snTimeInMillisecondsPauseMode
3AA9CA:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AA9CE:  ADD             R0, R5
3AA9D0:  STR.W           R0, [R4,#0x94]
3AA9D4:  POP             {R4,R5,R7,PC}
