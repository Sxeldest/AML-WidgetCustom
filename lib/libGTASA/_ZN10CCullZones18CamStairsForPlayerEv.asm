; =========================================================
; Game Engine Function: _ZN10CCullZones18CamStairsForPlayerEv
; Address            : 0x5D0370 - 0x5D037E
; =========================================================

5D0370:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D0376)
5D0372:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D0374:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D0376:  LDRB            R0, [R0]; CCullZones::CurrentFlags_Player
5D0378:  UBFX.W          R0, R0, #1, #1
5D037C:  BX              LR
