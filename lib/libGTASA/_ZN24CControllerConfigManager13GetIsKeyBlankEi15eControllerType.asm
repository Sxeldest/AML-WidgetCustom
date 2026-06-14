; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager13GetIsKeyBlankEi15eControllerType
; Address            : 0x3E8E94 - 0x3E8EC4
; =========================================================

3E8E94:  CMP             R2, #2
3E8E96:  BCC             loc_3E8EAA
3E8E98:  BEQ             loc_3E8EB8
3E8E9A:  CMP             R2, #3
3E8E9C:  BNE             loc_3E8EA6
3E8E9E:  CMP             R1, #0
3E8EA0:  ITT NE
3E8EA2:  MOVNE           R0, #0
3E8EA4:  BXNE            LR
3E8EA6:  MOVS            R0, #1
3E8EA8:  BX              LR
3E8EAA:  CMP.W           R1, #0x420
3E8EAE:  ITT NE
3E8EB0:  MOVNE           R0, #0
3E8EB2:  BXNE            LR
3E8EB4:  MOVS            R0, #1
3E8EB6:  BX              LR
3E8EB8:  CMP             R1, #0
3E8EBA:  ITT NE
3E8EBC:  MOVNE           R0, #0
3E8EBE:  BXNE            LR
3E8EC0:  MOVS            R0, #1
3E8EC2:  BX              LR
