; =========================================================
; Game Engine Function: _ZN11CPlayerInfo27PlayerFailedCriticalMissionEv
; Address            : 0x40BF30 - 0x40BF6C
; =========================================================

40BF30:  LDRB.W          R1, [R0,#0xDC]
40BF34:  CMP             R1, #0
40BF36:  IT NE
40BF38:  BXNE            LR
40BF3A:  PUSH            {R7,LR}
40BF3C:  MOV             R7, SP
40BF3E:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x40BF4E)
40BF40:  MOV.W           LR, #3
40BF44:  LDR             R1, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x40BF50)
40BF46:  LDR.W           R12, =(_ZN10CGameLogic9GameStateE_ptr - 0x40BF56)
40BF4A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
40BF4C:  ADD             R1, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
40BF4E:  STRB.W          LR, [R0,#0xDC]
40BF52:  ADD             R12, PC; _ZN10CGameLogic9GameStateE_ptr
40BF54:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
40BF56:  LDR             R1, [R1]; CGameLogic::TimeOfLastEvent ...
40BF58:  LDR.W           R3, [R12]; CGameLogic::GameState ...
40BF5C:  LDR             R0, [R2]; this
40BF5E:  STR             R0, [R1]; CGameLogic::TimeOfLastEvent
40BF60:  STRB.W          LR, [R3]; CGameLogic::GameState
40BF64:  POP.W           {R7,LR}
40BF68:  B.W             sub_19A0D4
