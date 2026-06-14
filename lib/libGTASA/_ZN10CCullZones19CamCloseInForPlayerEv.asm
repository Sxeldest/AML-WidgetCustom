; =========================================================
; Game Engine Function: _ZN10CCullZones19CamCloseInForPlayerEv
; Address            : 0x5D035C - 0x5D036A
; =========================================================

5D035C:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_PlayerE_ptr - 0x5D0362)
5D035E:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_PlayerE_ptr
5D0360:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player ...
5D0362:  LDR             R0, [R0]; CCullZones::CurrentFlags_Player
5D0364:  AND.W           R0, R0, #1
5D0368:  BX              LR
