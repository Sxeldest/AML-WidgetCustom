; =========================================================
; Game Engine Function: _ZN4CPed13GetWeaponSlotE11eWeaponType
; Address            : 0x4A5108 - 0x4A5118
; =========================================================

4A5108:  PUSH            {R7,LR}
4A510A:  MOV             R7, SP
4A510C:  MOV             R0, R1
4A510E:  MOVS            R1, #1
4A5110:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A5114:  LDR             R0, [R0,#0x14]
4A5116:  POP             {R7,PC}
