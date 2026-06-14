; =========================================================
; Game Engine Function: _ZN10CCullZones8NoPoliceEv
; Address            : 0x5D0398 - 0x5D03A6
; =========================================================

5D0398:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D039E)
5D039A:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D039C:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D039E:  LDRB            R0, [R0]; CCullZones::CurrentFlags_Player
5D03A0:  UBFX.W          R0, R0, #4, #1
5D03A4:  BX              LR
