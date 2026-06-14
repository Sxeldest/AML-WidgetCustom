; =========================================================
; Game Engine Function: _ZN10CCullZones22DoINeedToLoadCollisionEv
; Address            : 0x5D03F8 - 0x5D0406
; =========================================================

5D03F8:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D03FE)
5D03FA:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D03FC:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D03FE:  LDRB            R0, [R0]; CCullZones::CurrentFlags_Player
5D0400:  UBFX.W          R0, R0, #6, #1
5D0404:  BX              LR
