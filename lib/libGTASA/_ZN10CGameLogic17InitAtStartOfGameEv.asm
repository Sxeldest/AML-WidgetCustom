; =========================================================
; Game Engine Function: _ZN10CGameLogic17InitAtStartOfGameEv
; Address            : 0x307720 - 0x307782
; =========================================================

307720:  PUSH            {R4-R7,LR}
307722:  ADD             R7, SP, #0xC
307724:  PUSH.W          {R8,R9,R11}
307728:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x307730)
30772A:  LDR             R1, =(_ZN10CGameLogic15TimeOfLastEventE_ptr - 0x307734)
30772C:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
30772E:  LDR             R2, =(_ZN10CGameLogic20nPrintFocusHelpTimerE_ptr - 0x30773A)
307730:  ADD             R1, PC; _ZN10CGameLogic15TimeOfLastEventE_ptr
307732:  LDR             R3, =(_ZN10CGameLogic22nPrintFocusHelpCounterE_ptr - 0x307746)
307734:  LDR             R0, [R0]; CGameLogic::SkipState ...
307736:  ADD             R2, PC; _ZN10CGameLogic20nPrintFocusHelpTimerE_ptr
307738:  LDR.W           R8, [R1]; CGameLogic::TimeOfLastEvent ...
30773C:  MOVS            R1, #0
30773E:  LDR.W           R12, =(_ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr - 0x30774E)
307742:  ADD             R3, PC; _ZN10CGameLogic22nPrintFocusHelpCounterE_ptr
307744:  LDR.W           LR, =(_ZN10CGameLogic9GameStateE_ptr - 0x307752)
307748:  LDR             R6, =(_ZN10CGameLogic24NumAfterDeathStartPointsE_ptr - 0x307756)
30774A:  ADD             R12, PC; _ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr
30774C:  STR             R1, [R0]; CGameLogic::SkipState
30774E:  ADD             LR, PC; _ZN10CGameLogic9GameStateE_ptr
307750:  LDR             R0, =(_ZN10CGameLogic13ActivePlayersE_ptr - 0x30775E)
307752:  ADD             R6, PC; _ZN10CGameLogic24NumAfterDeathStartPointsE_ptr
307754:  LDR.W           R9, [R2]; CGameLogic::nPrintFocusHelpTimer ...
307758:  MOVS            R2, #1
30775A:  ADD             R0, PC; _ZN10CGameLogic13ActivePlayersE_ptr
30775C:  LDR             R3, [R3]; CGameLogic::nPrintFocusHelpCounter ...
30775E:  LDR.W           R4, [R12]; CGameLogic::bScriptCoopGameGoingOn ...
307762:  LDR.W           R5, [LR]; CGameLogic::GameState ...
307766:  LDR             R6, [R6]; CGameLogic::NumAfterDeathStartPoints ...
307768:  LDR             R0, [R0]; CGameLogic::ActivePlayers ...
30776A:  STRB            R1, [R5]; CGameLogic::GameState
30776C:  STR             R1, [R6]; CGameLogic::NumAfterDeathStartPoints
30776E:  STRB            R2, [R0]; CGameLogic::ActivePlayers
307770:  STR.W           R1, [R8]; CGameLogic::TimeOfLastEvent
307774:  STR.W           R1, [R9]; CGameLogic::nPrintFocusHelpTimer
307778:  STR             R1, [R3]; CGameLogic::nPrintFocusHelpCounter
30777A:  STRB            R1, [R4]; CGameLogic::bScriptCoopGameGoingOn
30777C:  POP.W           {R8,R9,R11}
307780:  POP             {R4-R7,PC}
