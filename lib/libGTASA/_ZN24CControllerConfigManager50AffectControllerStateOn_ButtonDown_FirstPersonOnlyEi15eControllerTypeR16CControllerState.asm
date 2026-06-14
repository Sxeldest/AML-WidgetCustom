; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager50AffectControllerStateOn_ButtonDown_FirstPersonOnlyEi15eControllerTypeR16CControllerState
; Address            : 0x3E8490 - 0x3E84C0
; =========================================================

3E8490:  ADD.W           R0, R0, R2,LSL#3
3E8494:  MOVW            R2, #0x3A10
3E8498:  LDR             R2, [R0,R2]
3E849A:  CMP             R2, R1
3E849C:  ITT EQ
3E849E:  MOVEQ           R2, #0xFF
3E84A0:  STRHEQ          R2, [R3,#0x1C]
3E84A2:  MOVW            R2, #0x3A30
3E84A6:  LDR             R2, [R0,R2]
3E84A8:  CMP             R2, R1
3E84AA:  ITT EQ
3E84AC:  MOVEQ           R2, #0xFF
3E84AE:  STRHEQ          R2, [R3,#0x20]
3E84B0:  MOVW            R2, #0x3AF0
3E84B4:  LDR             R0, [R0,R2]
3E84B6:  CMP             R0, R1
3E84B8:  ITT EQ
3E84BA:  MOVEQ           R0, #0xFF
3E84BC:  STRHEQ          R0, [R3,#0x24]
3E84BE:  BX              LR
