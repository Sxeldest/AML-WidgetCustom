; =========================================================
; Game Engine Function: _ZN10CCullZones12PlayerNoRainEv
; Address            : 0x5D0420 - 0x5D042E
; =========================================================

5D0420:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D0426)
5D0422:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D0424:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D0426:  LDRB            R0, [R0]; CCullZones::CurrentFlags_Player
5D0428:  UBFX.W          R0, R0, #3, #1
5D042C:  BX              LR
