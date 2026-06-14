; =========================================================
; Game Engine Function: _ZNK7CWeapon11IsTypeMeleeEv
; Address            : 0x5E2588 - 0x5E25A0
; =========================================================

5E2588:  PUSH            {R7,LR}
5E258A:  MOV             R7, SP
5E258C:  LDR             R0, [R0]
5E258E:  MOVS            R1, #1
5E2590:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E2594:  LDR             R1, [R0]
5E2596:  MOVS            R0, #0
5E2598:  CMP             R1, #0
5E259A:  IT EQ
5E259C:  MOVEQ           R0, #1
5E259E:  POP             {R7,PC}
