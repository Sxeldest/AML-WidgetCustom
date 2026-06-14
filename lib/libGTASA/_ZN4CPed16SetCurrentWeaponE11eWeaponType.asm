; =========================================================
; Game Engine Function: _ZN4CPed16SetCurrentWeaponE11eWeaponType
; Address            : 0x4A51AC - 0x4A51C4
; =========================================================

4A51AC:  PUSH            {R4,R6,R7,LR}
4A51AE:  ADD             R7, SP, #8
4A51B0:  MOV             R4, R0
4A51B2:  MOV             R0, R1
4A51B4:  MOVS            R1, #1
4A51B6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A51BA:  LDR             R1, [R0,#0x14]; int
4A51BC:  MOV             R0, R4; this
4A51BE:  POP.W           {R4,R6,R7,LR}
4A51C2:  B               _ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
