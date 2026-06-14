; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity16UpdateParametersEP8CAESounds
; Address            : 0x3AA8CC - 0x3AA968
; =========================================================

3AA8CC:  PUSH            {R4-R7,LR}
3AA8CE:  ADD             R7, SP, #0xC
3AA8D0:  PUSH.W          {R11}
3AA8D4:  MOV             R4, R0
3AA8D6:  LDR.W           R3, [R0,#0xA0]!
3AA8DA:  ADDS            R2, #1
3AA8DC:  BEQ             loc_3AA948
3AA8DE:  CMP             R3, R1
3AA8E0:  BNE             loc_3AA962
3AA8E2:  CBZ             R1, loc_3AA962
3AA8E4:  LDR             R2, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x3AA8EE)
3AA8E6:  LDR.W           R3, [R4,#0x94]
3AA8EA:  ADD             R2, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
3AA8EC:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode ...
3AA8EE:  LDR             R6, [R2]; CTimer::m_snTimeInMillisecondsPauseMode
3AA8F0:  CMP             R6, R3
3AA8F2:  BLS             loc_3AA962
3AA8F4:  MOV             R2, R4
3AA8F6:  LDR.W           R3, [R2,#0xA4]!
3AA8FA:  CMP             R3, #0
3AA8FC:  BEQ             loc_3AA962
3AA8FE:  LDRB.W          R12, [R4,#0x98]
3AA902:  MOV             R5, R1
3AA904:  CMP.W           R12, #0
3AA908:  IT EQ
3AA90A:  MOVEQ           R5, R3
3AA90C:  LDR             R5, [R5,#0x14]
3AA90E:  IT EQ
3AA910:  MOVEQ           R3, R1
3AA912:  STR             R5, [R3,#0x14]
3AA914:  IT EQ
3AA916:  MOVEQ           R0, R2
3AA918:  LDR             R0, [R0]
3AA91A:  MOVS            R1, #0xC2C80000
3AA920:  MOVS            R2, #0
3AA922:  CMP.W           R12, #0
3AA926:  STR             R1, [R0,#0x14]
3AA928:  LDRH.W          R0, [R4,#0x8E]; this
3AA92C:  LDRH.W          R1, [R4,#0x90]; int
3AA930:  IT EQ
3AA932:  MOVEQ           R2, #1; int
3AA934:  STRB.W          R2, [R4,#0x98]
3AA938:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AA93C:  ADD             R0, R6
3AA93E:  STR.W           R0, [R4,#0x94]
3AA942:  POP.W           {R11}
3AA946:  POP             {R4-R7,PC}
3AA948:  CMP             R3, R1
3AA94A:  ITT EQ
3AA94C:  MOVEQ           R3, #0
3AA94E:  STREQ           R3, [R0]
3AA950:  LDR.W           R2, [R4,#0xA4]
3AA954:  CMP             R2, R1
3AA956:  ITT EQ
3AA958:  MOVEQ           R2, #0
3AA95A:  STREQ.W         R2, [R4,#0xA4]
3AA95E:  CMP             R3, R1
3AA960:  BEQ             loc_3AA8E2
3AA962:  POP.W           {R11}
3AA966:  POP             {R4-R7,PC}
