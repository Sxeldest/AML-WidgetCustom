; =========================================================
; Game Engine Function: _ZN5CGame23CanSeeWaterFromCurrAreaEv
; Address            : 0x3F484C - 0x3F486A
; =========================================================

3F484C:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x3F4856)
3F484E:  MOVS            R2, #0
3F4850:  MOVS            R1, #0
3F4852:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3F4854:  LDR             R0, [R0]; CGame::currArea ...
3F4856:  LDR             R0, [R0]; CGame::currArea
3F4858:  CMP             R0, #5
3F485A:  IT EQ
3F485C:  MOVEQ           R2, #1
3F485E:  CMP             R0, #0
3F4860:  IT EQ
3F4862:  MOVEQ           R1, #1
3F4864:  ORR.W           R0, R1, R2
3F4868:  BX              LR
