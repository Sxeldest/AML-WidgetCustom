; =========================================================
; Game Engine Function: _ZN10CCullZones17PoliceAbandonCarsEv
; Address            : 0x5D03AC - 0x5D03BA
; =========================================================

5D03AC:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D03B2)
5D03AE:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D03B0:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D03B2:  LDRB            R0, [R0,#(_ZN10CCullZones19CurrentFlags_PlayerE+1 - 0xA7D3A4)]; CCullZones::CurrentFlags_Player
5D03B4:  AND.W           R0, R0, #1
5D03B8:  BX              LR
