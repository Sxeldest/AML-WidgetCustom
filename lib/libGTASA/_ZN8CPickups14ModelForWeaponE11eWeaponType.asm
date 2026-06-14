; =========================================================
; Game Engine Function: _ZN8CPickups14ModelForWeaponE11eWeaponType
; Address            : 0x31F1D0 - 0x31F1DE
; =========================================================

31F1D0:  PUSH            {R7,LR}
31F1D2:  MOV             R7, SP
31F1D4:  MOVS            R1, #1
31F1D6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
31F1DA:  LDR             R0, [R0,#0xC]
31F1DC:  POP             {R7,PC}
