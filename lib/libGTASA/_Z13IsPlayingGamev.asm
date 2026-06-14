; =========================================================
; Game Engine Function: _Z13IsPlayingGamev
; Address            : 0x5E46FC - 0x5E470E
; =========================================================

5E46FC:  LDR             R0, =(gGameState_ptr - 0x5E4702)
5E46FE:  ADD             R0, PC; gGameState_ptr
5E4700:  LDR             R0, [R0]; gGameState
5E4702:  LDR             R1, [R0]
5E4704:  MOVS            R0, #0
5E4706:  CMP             R1, #9
5E4708:  IT EQ
5E470A:  MOVEQ           R0, #1
5E470C:  BX              LR
