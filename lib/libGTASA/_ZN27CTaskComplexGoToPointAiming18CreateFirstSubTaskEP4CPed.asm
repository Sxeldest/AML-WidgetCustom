; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAiming18CreateFirstSubTaskEP4CPed
; Address            : 0x51DCA8 - 0x51DD7E
; =========================================================

51DCA8:  PUSH            {R4-R7,LR}
51DCAA:  ADD             R7, SP, #0xC
51DCAC:  PUSH.W          {R8,R9,R11}
51DCB0:  SUB             SP, SP, #0x10
51DCB2:  MOV             R4, R0
51DCB4:  MOV             R5, R1
51DCB6:  LDRB.W          R0, [R4,#0x34]
51DCBA:  AND.W           R0, R0, #0xFE
51DCBE:  STRB.W          R0, [R4,#0x34]
51DCC2:  LDRSB.W         R0, [R5,#0x71C]
51DCC6:  RSB.W           R0, R0, R0,LSL#3
51DCCA:  ADD.W           R0, R5, R0,LSL#2
51DCCE:  LDR.W           R6, [R0,#0x5A4]
51DCD2:  MOV             R0, R5; this
51DCD4:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
51DCD8:  MOV             R1, R0
51DCDA:  MOV             R0, R6
51DCDC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
51DCE0:  LDR             R1, [R0,#0x18]
51DCE2:  TST.W           R1, #2
51DCE6:  BNE             loc_51DCFC
51DCE8:  LSLS            R1, R1, #0x1F
51DCEA:  BEQ             loc_51DD6C
51DCEC:  LDR             R0, [R0]
51DCEE:  ORR.W           R0, R0, #2
51DCF2:  CMP             R0, #3
51DCF4:  BNE             loc_51DD6C
51DCF6:  MOV.W           R1, #0x3FC
51DCFA:  B               loc_51DD70
51DCFC:  LDR.W           R0, [R5,#0x440]
51DD00:  MOVS            R1, #0; int
51DD02:  ADDS            R0, #4; this
51DD04:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DD08:  CBZ             R0, loc_51DD24
51DD0A:  LDR.W           R0, [R5,#0x440]
51DD0E:  MOVS            R1, #0; int
51DD10:  ADDS            R0, #4; this
51DD12:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DD16:  LDR             R1, [R0]
51DD18:  MOVS            R2, #1
51DD1A:  MOVS            R3, #0
51DD1C:  LDR             R6, [R1,#0x1C]
51DD1E:  MOV             R1, R5
51DD20:  BLX             R6
51DD22:  B               loc_51DD6C
51DD24:  LDR             R0, [R4]
51DD26:  LDR             R1, [R0,#0x14]
51DD28:  MOV             R0, R4
51DD2A:  BLX             R1
51DD2C:  MOV             R6, R0
51DD2E:  MOVS            R0, #off_3C; this
51DD30:  LDR.W           R8, [R5,#0x440]
51DD34:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51DD38:  ADD.W           R3, R4, #0x10
51DD3C:  MOVW            R5, #0x385
51DD40:  CMP             R6, R5
51DD42:  MOV             R9, R0
51DD44:  LDM             R3, {R1-R3}
51DD46:  MOV.W           R6, #0
51DD4A:  LDR             R0, [R4,#0x1C]
51DD4C:  ITE EQ
51DD4E:  MOVEQ           R5, #3
51DD50:  MOVNE           R5, #1
51DD52:  STRD.W          R0, R5, [SP,#0x28+var_28]
51DD56:  MOV             R0, R9
51DD58:  STRD.W          R5, R6, [SP,#0x28+var_20]
51DD5C:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
51DD60:  ADD.W           R0, R8, #4; this
51DD64:  MOV             R1, R9; CTask *
51DD66:  MOVS            R2, #0; int
51DD68:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
51DD6C:  MOVW            R1, #0x387; int
51DD70:  MOV             R0, R4; this
51DD72:  ADD             SP, SP, #0x10
51DD74:  POP.W           {R8,R9,R11}
51DD78:  POP.W           {R4-R7,LR}
51DD7C:  B               _ZNK27CTaskComplexGoToPointAiming13CreateSubTaskEi; CTaskComplexGoToPointAiming::CreateSubTask(int)
