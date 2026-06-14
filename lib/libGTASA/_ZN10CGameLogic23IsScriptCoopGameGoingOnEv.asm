; =========================================================
; Game Engine Function: _ZN10CGameLogic23IsScriptCoopGameGoingOnEv
; Address            : 0x3099EC - 0x3099F6
; =========================================================

3099EC:  LDR             R0, =(_ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr - 0x3099F2)
3099EE:  ADD             R0, PC; _ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr
3099F0:  LDR             R0, [R0]; CGameLogic::bScriptCoopGameGoingOn ...
3099F2:  LDRB            R0, [R0]; CGameLogic::bScriptCoopGameGoingOn
3099F4:  BX              LR
