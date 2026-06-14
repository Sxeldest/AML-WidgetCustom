; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun14SetPedPositionEP4CPed
; Address            : 0x4DDB00 - 0x4DDB66
; =========================================================

4DDB00:  PUSH            {R4-R7,LR}
4DDB02:  ADD             R7, SP, #0xC
4DDB04:  PUSH.W          {R8}
4DDB08:  MOV             R5, R1
4DDB0A:  MOV             R8, R0
4DDB0C:  LDRSB.W         R0, [R5,#0x71C]
4DDB10:  LDR.W           R4, [R8,#0x30]
4DDB14:  RSB.W           R0, R0, R0,LSL#3
4DDB18:  ADD.W           R0, R5, R0,LSL#2
4DDB1C:  LDR.W           R6, [R0,#0x5A4]
4DDB20:  MOV             R0, R5; this
4DDB22:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4DDB26:  MOV             R1, R0
4DDB28:  MOV             R0, R6
4DDB2A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DDB2E:  CMP             R4, R0
4DDB30:  BNE             loc_4DDB5E
4DDB32:  LDRB.W          R0, [R8,#0xD]
4DDB36:  TST.W           R0, #1
4DDB3A:  BEQ             loc_4DDB4A
4DDB3C:  MOV             R0, R8; this
4DDB3E:  MOV             R1, R5; CPed *
4DDB40:  MOVS            R2, #0; bool
4DDB42:  BLX             j__ZN17CTaskSimpleUseGun7FireGunEP4CPedb; CTaskSimpleUseGun::FireGun(CPed *,bool)
4DDB46:  LDRB.W          R0, [R8,#0xD]
4DDB4A:  LSLS            R0, R0, #0x1E
4DDB4C:  BPL             loc_4DDB58
4DDB4E:  MOV             R0, R8; this
4DDB50:  MOV             R1, R5; CPed *
4DDB52:  MOVS            R2, #1; bool
4DDB54:  BLX             j__ZN17CTaskSimpleUseGun7FireGunEP4CPedb; CTaskSimpleUseGun::FireGun(CPed *,bool)
4DDB58:  MOVS            R0, #0
4DDB5A:  STRB.W          R0, [R8,#0xD]
4DDB5E:  MOVS            R0, #0
4DDB60:  POP.W           {R8}
4DDB64:  POP             {R4-R7,PC}
