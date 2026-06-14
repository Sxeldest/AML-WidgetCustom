; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager36GetControllerKeyAssociatedWithActionE18e_ControllerAction15eControllerType
; Address            : 0x3E859E - 0x3E85AE
; =========================================================

3E859E:  ADD.W           R0, R0, R1,LSL#5
3E85A2:  MOVW            R1, #0x3910
3E85A6:  ADD.W           R0, R0, R2,LSL#3
3E85AA:  LDR             R0, [R0,R1]
3E85AC:  BX              LR
