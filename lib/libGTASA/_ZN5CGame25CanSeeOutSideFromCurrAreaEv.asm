; =========================================================
; Game Engine Function: _ZN5CGame25CanSeeOutSideFromCurrAreaEv
; Address            : 0x3F4834 - 0x3F4846
; =========================================================

3F4834:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x3F483A)
3F4836:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3F4838:  LDR             R0, [R0]; CGame::currArea ...
3F483A:  LDR             R1, [R0]; CGame::currArea
3F483C:  MOVS            R0, #0
3F483E:  CMP             R1, #0
3F4840:  IT EQ
3F4842:  MOVEQ           R0, #1
3F4844:  BX              LR
