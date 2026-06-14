; =========================================================
; Game Engine Function: _ZN10CCullZones21Cam1stPersonForPlayerEv
; Address            : 0x5D0384 - 0x5D0392
; =========================================================

5D0384:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D038A)
5D0386:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D0388:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D038A:  LDRB            R0, [R0]; CCullZones::CurrentFlags_Player
5D038C:  UBFX.W          R0, R0, #2, #1
5D0390:  BX              LR
