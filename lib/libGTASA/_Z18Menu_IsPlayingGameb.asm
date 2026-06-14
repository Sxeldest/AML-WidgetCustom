; =========================================================
; Game Engine Function: _Z18Menu_IsPlayingGameb
; Address            : 0x2A9420 - 0x2A9432
; =========================================================

2A9420:  LDR             R0, =(gGameState_ptr - 0x2A9426)
2A9422:  ADD             R0, PC; gGameState_ptr
2A9424:  LDR             R0, [R0]; gGameState
2A9426:  LDR             R1, [R0]
2A9428:  MOVS            R0, #0
2A942A:  CMP             R1, #9
2A942C:  IT EQ
2A942E:  MOVEQ           R0, #1
2A9430:  BX              LR
