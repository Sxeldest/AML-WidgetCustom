; =========================================================
; Game Engine Function: _ZN4CPad10StartShakeEshj
; Address            : 0x3F89AC - 0x3F8A30
; =========================================================

3F89AC:  PUSH            {R4,R6,R7,LR}
3F89AE:  ADD             R7, SP, #8
3F89B0:  LDR.W           R12, =(_ZN14MobileSettings8settingsE_ptr - 0x3F89B8)
3F89B4:  ADD             R12, PC; _ZN14MobileSettings8settingsE_ptr
3F89B6:  LDR.W           R12, [R12]; MobileSettings::settings ...
3F89BA:  LDR.W           R12, [R12,#(dword_6E079C - 0x6E03F4)]
3F89BE:  CMP.W           R12, #0
3F89C2:  BEQ             locret_3F8A22
3F89C4:  LDR.W           R12, =(_ZN12CCutsceneMgr10ms_runningE_ptr - 0x3F89CC)
3F89C8:  ADD             R12, PC; _ZN12CCutsceneMgr10ms_runningE_ptr
3F89CA:  LDR.W           R12, [R12]; CCutsceneMgr::ms_running ...
3F89CE:  LDRB.W          R12, [R12]; CCutsceneMgr::ms_running
3F89D2:  CMP.W           R12, #0
3F89D6:  IT NE
3F89D8:  POPNE           {R4,R6,R7,PC}
3F89DA:  CBZ             R2, loc_3F8A24
3F89DC:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3F89E8)
3F89E0:  LDR.W           LR, [R0,#0x140]
3F89E4:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3F89E6:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds ...
3F89EA:  LDR.W           R12, [R12]; CTimer::m_snTimeInMilliseconds
3F89EE:  CMP             R12, LR
3F89F0:  BCS             loc_3F89FA
3F89F2:  LDRB.W          LR, [R0,#0x144]
3F89F6:  CMP             LR, R2
3F89F8:  BCS             locret_3F8A22
3F89FA:  AND.W           R4, R1, #0x8000
3F89FE:  LDRSH.W         LR, [R0,#0x10E]
3F8A02:  ADD.W           R1, R1, R4,LSR#15
3F8A06:  SXTH            R1, R1
3F8A08:  ASRS            R1, R1, #1
3F8A0A:  CMP             R1, LR
3F8A0C:  ITT GT
3F8A0E:  STRBGT.W        R2, [R0,#0x112]
3F8A12:  STRHGT.W        R1, [R0,#0x10E]
3F8A16:  STRB.W          R2, [R0,#0x144]
3F8A1A:  ADD.W           R1, R12, R3
3F8A1E:  STR.W           R1, [R0,#0x140]
3F8A22:  POP             {R4,R6,R7,PC}
3F8A24:  MOVS            R1, #0
3F8A26:  STRB.W          R1, [R0,#0x112]
3F8A2A:  STRH.W          R1, [R0,#0x10E]
3F8A2E:  POP             {R4,R6,R7,PC}
