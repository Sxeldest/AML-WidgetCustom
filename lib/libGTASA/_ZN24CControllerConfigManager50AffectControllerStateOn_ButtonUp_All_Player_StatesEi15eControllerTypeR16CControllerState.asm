; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager50AffectControllerStateOn_ButtonUp_All_Player_StatesEi15eControllerTypeR16CControllerState
; Address            : 0x3E8764 - 0x3E8786
; =========================================================

3E8764:  ADD.W           R0, R0, R2,LSL#3
3E8768:  MOVW            R2, #0x3ED0
3E876C:  LDR             R2, [R0,R2]
3E876E:  CMP             R2, R1
3E8770:  ITT EQ
3E8772:  MOVEQ           R2, #0
3E8774:  STRHEQ          R2, [R3,#0x28]
3E8776:  MOVW            R2, #0x3DB0
3E877A:  LDR             R0, [R0,R2]
3E877C:  CMP             R0, R1
3E877E:  ITT EQ
3E8780:  MOVEQ           R0, #0
3E8782:  STRHEQ          R0, [R3,#0x2C]
3E8784:  BX              LR
