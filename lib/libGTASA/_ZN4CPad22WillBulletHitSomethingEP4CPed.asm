; =========================================================
; Game Engine Function: _ZN4CPad22WillBulletHitSomethingEP4CPed
; Address            : 0x3FB414 - 0x3FB498
; =========================================================

3FB414:  PUSH            {R4-R7,LR}
3FB416:  ADD             R7, SP, #0xC
3FB418:  PUSH.W          {R8,R9,R11}
3FB41C:  SUB             SP, SP, #0x78
3FB41E:  ADD             R1, SP, #0x90+var_24
3FB420:  MOVS            R6, #0
3FB422:  MOVS            R2, #0x18
3FB424:  MOVS            R3, #0
3FB426:  STRD.W          R6, R6, [SP,#0x90+var_24]
3FB42A:  MOV             R4, R0
3FB42C:  STR             R6, [SP,#0x90+var_1C]
3FB42E:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
3FB432:  STRD.W          R6, R6, [SP,#0x90+var_2C]
3FB436:  MOVS            R1, #1
3FB438:  STRD.W          R6, R6, [SP,#0x90+var_3C]
3FB43C:  MOV.W           R8, #1
3FB440:  STRD.W          R6, R6, [SP,#0x90+var_34]
3FB444:  LDRSB.W         R0, [R4,#0x71C]
3FB448:  RSB.W           R0, R0, R0,LSL#3
3FB44C:  ADD.W           R0, R4, R0,LSL#2
3FB450:  LDR.W           R0, [R0,#0x5A4]
3FB454:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3FB458:  LDR             R5, =(TheCamera_ptr - 0x3FB464)
3FB45A:  ADD             R4, SP, #0x90+var_24
3FB45C:  ADD.W           R9, SP, #0x90+var_3C
3FB460:  ADD             R5, PC; TheCamera_ptr
3FB462:  LDM             R4, {R2-R4}
3FB464:  LDR             R1, [R0,#8]
3FB466:  LDR             R0, [R5]; TheCamera
3FB468:  ADD             R5, SP, #0x90+var_30
3FB46A:  STMEA.W         SP, {R4,R5,R9}
3FB46E:  BLX             j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
3FB472:  ADD             R2, SP, #0x90+var_6C
3FB474:  ADD             R3, SP, #0x90+var_40
3FB476:  MOV             R0, R5
3FB478:  MOV             R1, R9
3FB47A:  STR             R6, [SP,#0x90+var_40]
3FB47C:  STRD.W          R6, R8, [SP,#0x90+var_90]
3FB480:  STRD.W          R8, R6, [SP,#0x90+var_88]
3FB484:  STRD.W          R6, R6, [SP,#0x90+var_80]
3FB488:  STRD.W          R6, R6, [SP,#0x90+var_78]
3FB48C:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3FB490:  ADD             SP, SP, #0x78 ; 'x'
3FB492:  POP.W           {R8,R9,R11}
3FB496:  POP             {R4-R7,PC}
