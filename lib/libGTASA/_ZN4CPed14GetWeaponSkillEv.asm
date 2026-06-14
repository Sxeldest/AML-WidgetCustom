; =========================================================
; Game Engine Function: _ZN4CPed14GetWeaponSkillEv
; Address            : 0x4A1272 - 0x4A1286
; =========================================================

4A1272:  LDRSB.W         R1, [R0,#0x71C]
4A1276:  RSB.W           R1, R1, R1,LSL#3
4A127A:  ADD.W           R1, R0, R1,LSL#2
4A127E:  LDR.W           R1, [R1,#0x5A4]
4A1282:  B.W             _ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
