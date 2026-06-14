; =========================================================
; Game Engine Function: _ZN7CWeapon6ReloadEP4CPed
; Address            : 0x5DB802 - 0x5DB838
; =========================================================

5DB802:  PUSH            {R4,R5,R7,LR}
5DB804:  ADD             R7, SP, #8
5DB806:  MOV             R4, R0
5DB808:  LDR             R0, [R4,#0xC]
5DB80A:  CMP             R0, #0
5DB80C:  IT EQ
5DB80E:  POPEQ           {R4,R5,R7,PC}
5DB810:  LDR             R5, [R4]
5DB812:  CBZ             R1, loc_5DB820
5DB814:  MOV             R0, R1
5DB816:  MOV             R1, R5
5DB818:  BLX.W           j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
5DB81C:  MOV             R1, R0
5DB81E:  B               loc_5DB822
5DB820:  MOVS            R1, #1
5DB822:  MOV             R0, R5
5DB824:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB828:  LDRSH.W         R0, [R0,#0x20]
5DB82C:  LDR             R1, [R4,#0xC]
5DB82E:  CMP             R1, R0
5DB830:  IT CC
5DB832:  MOVCC           R0, R1
5DB834:  STR             R0, [R4,#8]
5DB836:  POP             {R4,R5,R7,PC}
