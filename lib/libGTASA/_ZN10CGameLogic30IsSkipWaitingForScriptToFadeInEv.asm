; =========================================================
; Game Engine Function: _ZN10CGameLogic30IsSkipWaitingForScriptToFadeInEv
; Address            : 0x309C44 - 0x309C60
; =========================================================

309C44:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309C4A)
309C46:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
309C48:  LDR             R0, [R0]; CGameLogic::SkipState ...
309C4A:  LDR             R1, [R0]; CGameLogic::SkipState
309C4C:  MOVS            R0, #0
309C4E:  CMP             R1, #5
309C50:  IT NE
309C52:  BXNE            LR
309C54:  LDR             R1, =(_ZN10CGameLogic9SkipStateE_ptr - 0x309C5A)
309C56:  ADD             R1, PC; _ZN10CGameLogic9SkipStateE_ptr
309C58:  LDR             R1, [R1]; CGameLogic::SkipState ...
309C5A:  STR             R0, [R1]; CGameLogic::SkipState
309C5C:  MOVS            R0, #1
309C5E:  BX              LR
