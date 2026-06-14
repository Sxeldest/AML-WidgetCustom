; =========================================================
; Game Engine Function: _ZN10CPlayerPed23MakeChangesForNewWeaponEi
; Address            : 0x4C67C0 - 0x4C67D4
; =========================================================

4C67C0:  ADDS            R2, R1, #1
4C67C2:  IT EQ
4C67C4:  BXEQ            LR
4C67C6:  RSB.W           R1, R1, R1,LSL#3
4C67CA:  ADD.W           R1, R0, R1,LSL#2
4C67CE:  LDR.W           R1, [R1,#0x5A4]
4C67D2:  B               _ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType; CPlayerPed::MakeChangesForNewWeapon(eWeaponType)
