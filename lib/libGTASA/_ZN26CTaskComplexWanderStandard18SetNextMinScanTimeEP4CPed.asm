; =========================================================
; Game Engine Function: _ZN26CTaskComplexWanderStandard18SetNextMinScanTimeEP4CPed
; Address            : 0x52392C - 0x523994
; =========================================================

52392C:  PUSH            {R4-R7,LR}
52392E:  ADD             R7, SP, #0xC
523930:  PUSH.W          {R8}
523934:  MOV             R8, R1
523936:  MOV             R5, R0
523938:  LDR.W           R0, [R8,#0x440]
52393C:  ADDS            R0, #4; this
52393E:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
523942:  MOV             R6, R0
523944:  CBZ             R6, loc_52398E
523946:  LDR             R0, [R6]
523948:  LDR             R1, [R0,#0x14]
52394A:  MOV             R0, R6
52394C:  BLX             R1
52394E:  MOV             R4, R0
523950:  LDR             R0, [R5]
523952:  LDR             R1, [R0,#0x14]
523954:  MOV             R0, R5
523956:  BLX             R1
523958:  CMP             R4, R0
52395A:  BNE             loc_52398E
52395C:  LDR             R0, [R6]
52395E:  LDR             R1, [R0,#0x34]
523960:  MOV             R0, R6
523962:  BLX             R1
523964:  MOV             R4, R0
523966:  LDR             R0, [R5]
523968:  LDR             R1, [R0,#0x34]
52396A:  MOV             R0, R5
52396C:  BLX             R1
52396E:  CMP             R4, R0
523970:  BNE             loc_52398E
523972:  LDR.W           R0, [R8,#0x440]
523976:  ADDS            R0, #4; this
523978:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
52397C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x523982)
52397E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
523980:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
523982:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
523984:  ADD.W           R1, R1, #0x18000
523988:  ADD.W           R1, R1, #0x6A0
52398C:  STR             R1, [R0,#0x34]
52398E:  POP.W           {R8}
523992:  POP             {R4-R7,PC}
