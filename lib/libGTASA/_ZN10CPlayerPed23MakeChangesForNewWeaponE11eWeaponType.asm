; =========================================================
; Game Engine Function: _ZN10CPlayerPed23MakeChangesForNewWeaponE11eWeaponType
; Address            : 0x4C6880 - 0x4C696A
; =========================================================

4C6880:  PUSH            {R4-R7,LR}
4C6882:  ADD             R7, SP, #0xC
4C6884:  PUSH.W          {R11}
4C6888:  MOV             R4, R0
4C688A:  MOV             R5, R1
4C688C:  LDRSB.W         R0, [R4,#0x71C]
4C6890:  RSB.W           R0, R0, R0,LSL#3
4C6894:  ADD.W           R0, R4, R0,LSL#2
4C6898:  ADDW            R0, R0, #0x5A4; this
4C689C:  BLX             j__ZN7CWeapon16StopWeaponEffectEv; CWeapon::StopWeaponEffect(void)
4C68A0:  LDR.W           R0, [R4,#0x44C]
4C68A4:  CMP             R0, #0xC
4C68A6:  BNE             loc_4C68B2
4C68A8:  LDR             R0, =(TheCamera_ptr - 0x4C68AE)
4C68AA:  ADD             R0, PC; TheCamera_ptr
4C68AC:  LDR             R0, [R0]; TheCamera ; this
4C68AE:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
4C68B2:  MOV             R0, R4
4C68B4:  MOV             R1, R5
4C68B6:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4C68BA:  LDR.W           R0, [R4,#0x444]
4C68BE:  ADDW            R6, R4, #0x5A4
4C68C2:  LDRB.W          R1, [R4,#0x71C]
4C68C6:  STRB.W          R1, [R0,#0x20]
4C68CA:  MOVS            R1, #0
4C68CC:  LDR.W           R0, [R4,#0x444]
4C68D0:  STR             R1, [R0,#0x2C]
4C68D2:  LDRSB.W         R0, [R4,#0x71C]
4C68D6:  RSB.W           R0, R0, R0,LSL#3
4C68DA:  LDR.W           R5, [R6,R0,LSL#2]
4C68DE:  MOV             R0, R4; this
4C68E0:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4C68E4:  MOV             R1, R0
4C68E6:  MOV             R0, R5
4C68E8:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C68EC:  MOV             R5, R0
4C68EE:  LDRSB.W         R0, [R4,#0x71C]
4C68F2:  LDRSH.W         R1, [R5,#0x20]
4C68F6:  RSB.W           R0, R0, R0,LSL#3
4C68FA:  ADD.W           R0, R6, R0,LSL#2
4C68FE:  LDR             R2, [R0,#0xC]
4C6900:  CMP             R2, R1
4C6902:  IT LT
4C6904:  MOVLT           R1, R2
4C6906:  STR             R1, [R0,#8]
4C6908:  LDR             R0, [R5,#0x18]
4C690A:  TST.W           R0, #1
4C690E:  BNE             loc_4C6934
4C6910:  LDR.W           R1, [R4,#0x59C]
4C6914:  CMP             R1, #1
4C6916:  BHI             loc_4C6934
4C6918:  MOV             R0, R4; this
4C691A:  MOVS            R1, #0; CEntity *
4C691C:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C6920:  LDR             R0, =(TheCamera_ptr - 0x4C6926)
4C6922:  ADD             R0, PC; TheCamera_ptr
4C6924:  LDR             R0, [R0]; TheCamera ; this
4C6926:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
4C692A:  LDR.W           R0, [R4,#0x59C]; this
4C692E:  BLX             j__ZN14CWeaponEffects14ClearCrossHairEi; CWeaponEffects::ClearCrossHair(int)
4C6932:  LDR             R0, [R5,#0x18]
4C6934:  LSLS            R0, R0, #0x1C
4C6936:  ITTTT PL
4C6938:  LDRPL.W         R0, [R4,#0x444]
4C693C:  LDRHPL          R1, [R0,#0x34]
4C693E:  BICPL.W         R1, R1, #8
4C6942:  STRHPL          R1, [R0,#0x34]
4C6944:  LDR             R0, [R4,#0x18]
4C6946:  MOVS            R1, #0xE0
4C6948:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4C694C:  CMP             R0, #0
4C694E:  ITTT NE
4C6950:  LDRHNE          R1, [R0,#0x2E]
4C6952:  ORRNE.W         R1, R1, #9
4C6956:  STRHNE          R1, [R0,#0x2E]
4C6958:  LDR             R0, =(TheCamera_ptr - 0x4C695E)
4C695A:  ADD             R0, PC; TheCamera_ptr
4C695C:  LDR             R0, [R0]; TheCamera ; this
4C695E:  POP.W           {R11}
4C6962:  POP.W           {R4-R7,LR}
4C6966:  B.W             sub_1966C8
