; =========================================================
; Game Engine Function: _ZN4CPed10SetAimFlagEf
; Address            : 0x4A11EA - 0x4A1272
; =========================================================

4A11EA:  PUSH            {R4-R7,LR}
4A11EC:  ADD             R7, SP, #0xC
4A11EE:  PUSH.W          {R11}
4A11F2:  MOV             R4, R0
4A11F4:  MOVS            R5, #0
4A11F6:  LDR.W           R2, [R4,#0x484]
4A11FA:  STR.W           R1, [R4,#0x744]
4A11FE:  MOVS            R1, #1
4A1200:  STR.W           R5, [R4,#0x750]
4A1204:  BFI.W           R2, R1, #4, #2
4A1208:  LDR.W           R0, [R4,#0x740]; this
4A120C:  STR.W           R2, [R4,#0x484]
4A1210:  CBZ             R0, loc_4A1220
4A1212:  ADD.W           R1, R4, #0x740; CEntity **
4A1216:  ADDW            R6, R4, #0x484
4A121A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A121E:  LDR             R2, [R6]
4A1220:  STR.W           R5, [R4,#0x740]
4A1224:  LSLS            R0, R2, #5
4A1226:  ITTT MI
4A1228:  LDRMI.W         R0, [R4,#0x534]
4A122C:  BICMI.W         R0, R0, #4
4A1230:  STRMI.W         R0, [R4,#0x534]
4A1234:  LDRSB.W         R0, [R4,#0x71C]
4A1238:  RSB.W           R0, R0, R0,LSL#3
4A123C:  ADD.W           R0, R4, R0,LSL#2
4A1240:  LDR.W           R5, [R0,#0x5A4]
4A1244:  MOV             R0, R4
4A1246:  MOV             R1, R5
4A1248:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
4A124C:  MOV             R1, R0
4A124E:  MOV             R0, R5
4A1250:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4A1254:  LDR.W           R1, [R4,#0x534]
4A1258:  LDR             R0, [R0,#0x18]
4A125A:  BIC.W           R2, R1, #4
4A125E:  TST.W           R0, #2
4A1262:  IT NE
4A1264:  ORRNE.W         R2, R1, #4
4A1268:  STR.W           R2, [R4,#0x534]
4A126C:  POP.W           {R11}
4A1270:  POP             {R4-R7,PC}
