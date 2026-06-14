; =========================================================
; Game Engine Function: _ZN7CWeaponC2E11eWeaponTypei
; Address            : 0x5DB7C0 - 0x5DB802
; =========================================================

5DB7C0:  PUSH            {R4,R5,R7,LR}
5DB7C2:  ADD             R7, SP, #8
5DB7C4:  MOV             R4, R0
5DB7C6:  MOV             R0, #0x1869F
5DB7CE:  CMP             R2, R0
5DB7D0:  IT LT
5DB7D2:  MOVLT           R0, R2
5DB7D4:  MOVS            R5, #0
5DB7D6:  CMP             R0, #0
5DB7D8:  STRD.W          R1, R5, [R4]
5DB7DC:  STRD.W          R5, R0, [R4,#8]
5DB7E0:  BEQ             loc_5DB7F8
5DB7E2:  MOV             R0, R1
5DB7E4:  MOVS            R1, #1
5DB7E6:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB7EA:  LDRSH.W         R0, [R0,#0x20]
5DB7EE:  LDR             R1, [R4,#0xC]
5DB7F0:  CMP             R1, R0
5DB7F2:  IT CC
5DB7F4:  MOVCC           R0, R1
5DB7F6:  STR             R0, [R4,#8]
5DB7F8:  MOV             R0, R4
5DB7FA:  STR             R5, [R4,#0x10]
5DB7FC:  STR             R5, [R4,#0x18]
5DB7FE:  STRH            R5, [R4,#0x14]
5DB800:  POP             {R4,R5,R7,PC}
