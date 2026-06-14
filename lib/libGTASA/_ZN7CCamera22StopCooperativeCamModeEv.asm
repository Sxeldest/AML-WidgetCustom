; =========================================================
; Game Engine Function: _ZN7CCamera22StopCooperativeCamModeEv
; Address            : 0x3E16A4 - 0x3E16B6
; =========================================================

3E16A4:  LDR             R1, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x3E16B2)
3E16A6:  MOVS            R2, #0
3E16A8:  STRB.W          R2, [R0,#0x41]
3E16AC:  MOVS            R0, #2
3E16AE:  ADD             R1, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
3E16B0:  LDR             R1, [R1]; CGameLogic::n2PlayerPedInFocus ...
3E16B2:  STR             R0, [R1]; CGameLogic::n2PlayerPedInFocus
3E16B4:  BX              LR
