; =========================================================
; Game Engine Function: _ZN7CWeapon21HasWeaponAmmoToBeUsedEv
; Address            : 0x5E2BF8 - 0x5E2C24
; =========================================================

5E2BF8:  MOV             R12, R0
5E2BFA:  MOVS            R0, #1
5E2BFC:  LDR.W           R2, [R12]
5E2C00:  CMP             R2, #0xE
5E2C02:  BHI             loc_5E2C12
5E2C04:  LSL.W           R3, R0, R2
5E2C08:  MOVW            R1, #0x7F3F
5E2C0C:  TST             R3, R1
5E2C0E:  BEQ             loc_5E2C12
5E2C10:  BX              LR
5E2C12:  CMP             R2, #0x2E ; '.'
5E2C14:  IT EQ
5E2C16:  BXEQ            LR
5E2C18:  LDR.W           R0, [R12,#0xC]
5E2C1C:  CMP             R0, #0
5E2C1E:  IT NE
5E2C20:  MOVNE           R0, #1
5E2C22:  BX              LR
