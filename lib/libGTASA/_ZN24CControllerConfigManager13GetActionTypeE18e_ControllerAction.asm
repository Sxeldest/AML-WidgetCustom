; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager13GetActionTypeE18e_ControllerAction
; Address            : 0x3E9D10 - 0x3E9D22
; =========================================================

3E9D10:  CMP             R1, #0x39 ; '9'
3E9D12:  ITT HI
3E9D14:  MOVHI           R0, #6
3E9D16:  BXHI            LR
3E9D18:  LDR             R0, =(unk_616F70 - 0x3E9D1E)
3E9D1A:  ADD             R0, PC; unk_616F70
3E9D1C:  LDR.W           R0, [R0,R1,LSL#2]
3E9D20:  BX              LR
