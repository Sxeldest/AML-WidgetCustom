; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAiming14ControlSubTaskEP4CPed
; Address            : 0x51DD7E - 0x51DFFC
; =========================================================

51DD7E:  PUSH            {R4-R7,LR}
51DD80:  ADD             R7, SP, #0xC
51DD82:  PUSH.W          {R8,R9,R11}
51DD86:  SUB             SP, SP, #0x18
51DD88:  MOV             R5, R1
51DD8A:  MOV             R6, R0
51DD8C:  LDRSB.W         R0, [R5,#0x71C]
51DD90:  LDR.W           R8, [R6,#8]
51DD94:  RSB.W           R0, R0, R0,LSL#3
51DD98:  ADD.W           R0, R5, R0,LSL#2
51DD9C:  LDR.W           R4, [R0,#0x5A4]
51DDA0:  MOV             R0, R5; this
51DDA2:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
51DDA6:  MOV             R1, R0
51DDA8:  MOV             R0, R4
51DDAA:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
51DDAE:  MOV             R4, R0
51DDB0:  LDRB.W          R0, [R6,#0x34]
51DDB4:  LSLS            R0, R0, #0x1F
51DDB6:  BNE             loc_51DEA2
51DDB8:  LDR             R0, [R6,#8]
51DDBA:  LDR             R1, [R0]
51DDBC:  LDR             R1, [R1,#0x14]
51DDBE:  BLX             R1
51DDC0:  CMP.W           R0, #0x3FC
51DDC4:  BEQ             loc_51DEB6
51DDC6:  MOVW            R1, #0x387
51DDCA:  CMP             R0, R1
51DDCC:  BNE.W           loc_51DFF2
51DDD0:  LDR             R0, [R6,#8]
51DDD2:  VLDR            S0, [R6,#0x20]
51DDD6:  VLDR            S2, [R0,#0x10]
51DDDA:  VCMP.F32        S2, S0
51DDDE:  VMRS            APSR_nzcv, FPSCR
51DDE2:  BNE             loc_51DE1A
51DDE4:  VLDR            S0, [R6,#0x24]
51DDE8:  VLDR            S2, [R0,#0x14]
51DDEC:  VCMP.F32        S2, S0
51DDF0:  VMRS            APSR_nzcv, FPSCR
51DDF4:  BNE             loc_51DE1A
51DDF6:  VLDR            S0, [R6,#0x28]
51DDFA:  VLDR            S2, [R0,#0x18]
51DDFE:  VCMP.F32        S2, S0
51DE02:  VMRS            APSR_nzcv, FPSCR
51DE06:  BNE             loc_51DE1A
51DE08:  VMOV.F32        S0, #2.0
51DE0C:  VLDR            S2, [R0,#0x20]
51DE10:  VCMP.F32        S2, S0
51DE14:  VMRS            APSR_nzcv, FPSCR
51DE18:  BEQ             loc_51DE44
51DE1A:  ADD.W           R1, R6, #0x20 ; ' '
51DE1E:  LDRB.W          R2, [R0,#0x24]
51DE22:  MOV.W           R3, #0x3F000000
51DE26:  MOV.W           R12, #0x40000000
51DE2A:  VLDR            D16, [R1]
51DE2E:  ADD.W           LR, R0, #0x18
51DE32:  LDR             R1, [R1,#8]
51DE34:  STM.W           LR, {R1,R3,R12}
51DE38:  ORR.W           R1, R2, #4
51DE3C:  STRB.W          R1, [R0,#0x24]
51DE40:  VSTR            D16, [R0,#0x10]
51DE44:  LDRB            R0, [R4,#0x18]
51DE46:  LSLS            R0, R0, #0x1E
51DE48:  BPL.W           loc_51DFF2
51DE4C:  LDR.W           R0, [R5,#0x440]
51DE50:  MOVS            R1, #0; int
51DE52:  MOV.W           R9, #0
51DE56:  ADDS            R0, #4; this
51DE58:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DE5C:  LDR.W           R4, [R5,#0x440]
51DE60:  CMP             R0, #0
51DE62:  BEQ.W           loc_51DF96
51DE66:  MOV             R0, R4; this
51DE68:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
51DE6C:  CMP             R0, #0
51DE6E:  BEQ.W           loc_51DFC2
51DE72:  LDR             R0, [R6]
51DE74:  LDR             R1, [R0,#0x14]
51DE76:  MOV             R0, R6
51DE78:  BLX             R1
51DE7A:  MOVW            R1, #0x385
51DE7E:  CMP             R0, R1
51DE80:  BNE             loc_51DE8E
51DE82:  BLX             rand
51DE86:  TST.W           R0, #0x3F
51DE8A:  BEQ.W           loc_51DFDC
51DE8E:  LDR.W           R0, [R5,#0x440]
51DE92:  MOVS            R1, #0; int
51DE94:  ADDS            R0, #4; this
51DE96:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DE9A:  LDR             R2, [R6,#0x10]
51DE9C:  MOV             R1, R5
51DE9E:  MOVS            R3, #1
51DEA0:  B               loc_51DFEE
51DEA2:  LDR             R0, [R6]
51DEA4:  MOV             R1, R5
51DEA6:  LDR             R2, [R0,#0x2C]
51DEA8:  MOV             R0, R6
51DEAA:  ADD             SP, SP, #0x18
51DEAC:  POP.W           {R8,R9,R11}
51DEB0:  POP.W           {R4-R7,LR}
51DEB4:  BX              R2
51DEB6:  LDR.W           R0, [R5,#0x440]; this
51DEBA:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
51DEBE:  CMP             R0, #0
51DEC0:  BEQ.W           loc_51DFF2
51DEC4:  LDR             R0, [R5,#0x14]
51DEC6:  VLDR            S0, [R6,#0x20]
51DECA:  ADD.W           R1, R0, #0x30 ; '0'
51DECE:  CMP             R0, #0
51DED0:  VLDR            S2, [R6,#0x24]
51DED4:  VLDR            S4, [R6,#0x28]
51DED8:  IT EQ
51DEDA:  ADDEQ           R1, R5, #4
51DEDC:  VLDR            S6, [R1]
51DEE0:  VLDR            S8, [R1,#4]
51DEE4:  VSUB.F32        S6, S0, S6
51DEE8:  VLDR            S0, [R0]
51DEEC:  VSUB.F32        S2, S2, S8
51DEF0:  VLDR            S8, [R0,#4]
51DEF4:  VLDR            S10, [R1,#8]
51DEF8:  VLDR            S12, [R0,#8]
51DEFC:  VSUB.F32        S4, S4, S10
51DF00:  VMUL.F32        S0, S6, S0
51DF04:  VMUL.F32        S8, S2, S8
51DF08:  VMUL.F32        S10, S4, S12
51DF0C:  VADD.F32        S0, S0, S8
51DF10:  VADD.F32        S0, S0, S10
51DF14:  VSTR            S0, [SP,#0x30+var_20]
51DF18:  VLDR            S8, [R0,#0x10]
51DF1C:  VLDR            S10, [R0,#0x14]
51DF20:  VMUL.F32        S6, S6, S8
51DF24:  VLDR            S12, [R0,#0x18]
51DF28:  VMUL.F32        S2, S2, S10
51DF2C:  VMUL.F32        S4, S4, S12
51DF30:  VADD.F32        S2, S6, S2
51DF34:  VMUL.F32        S6, S0, S0
51DF38:  VADD.F32        S4, S2, S4
51DF3C:  VNEG.F32        S2, S4
51DF40:  VMUL.F32        S4, S4, S4
51DF44:  VSTR            S2, [SP,#0x30+var_1C]
51DF48:  VLDR            S8, [R6,#0x2C]
51DF4C:  VADD.F32        S4, S6, S4
51DF50:  VMUL.F32        S6, S8, S8
51DF54:  VCMPE.F32       S4, S6
51DF58:  VMRS            APSR_nzcv, FPSCR
51DF5C:  BLE             loc_51DF7C
51DF5E:  VSQRT.F32       S4, S4
51DF62:  VMOV.F32        S6, #1.0
51DF66:  VDIV.F32        S4, S6, S4
51DF6A:  VMUL.F32        S2, S4, S2
51DF6E:  VMUL.F32        S0, S0, S4
51DF72:  VSTR            S2, [SP,#0x30+var_1C]
51DF76:  VSTR            S0, [SP,#0x30+var_20]
51DF7A:  B               loc_51DF82
51DF7C:  MOVS            R0, #0
51DF7E:  STRD.W          R0, R0, [SP,#0x30+var_20]
51DF82:  LDR.W           R0, [R5,#0x440]
51DF86:  MOVS            R1, #0; int
51DF88:  ADDS            R0, #4; this
51DF8A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DF8E:  ADD             R1, SP, #0x30+var_20
51DF90:  BLX             j__ZN17CTaskSimpleUseGun14ControlGunMoveEP9CVector2D; CTaskSimpleUseGun::ControlGunMove(CVector2D *)
51DF94:  B               loc_51DFF2
51DF96:  MOVS            R0, #off_3C; this
51DF98:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51DF9C:  ADD.W           R3, R6, #0x10
51DFA0:  MOV             R5, R0
51DFA2:  LDM             R3, {R1-R3}
51DFA4:  LDR             R0, [R6,#0x1C]
51DFA6:  MOVS            R6, #1
51DFA8:  STRD.W          R0, R6, [SP,#0x30+var_30]
51DFAC:  MOV             R0, R5
51DFAE:  STRD.W          R6, R9, [SP,#0x30+var_28]
51DFB2:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
51DFB6:  ADDS            R0, R4, #4; this
51DFB8:  MOV             R1, R5; CTask *
51DFBA:  MOVS            R2, #0; int
51DFBC:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
51DFC0:  B               loc_51DFF2
51DFC2:  LDR.W           R0, [R5,#0x440]
51DFC6:  MOVS            R1, #0; int
51DFC8:  ADDS            R0, #4; this
51DFCA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DFCE:  LDR             R1, [R0]
51DFD0:  MOVS            R2, #1
51DFD2:  MOVS            R3, #0
51DFD4:  LDR             R6, [R1,#0x1C]
51DFD6:  MOV             R1, R5
51DFD8:  BLX             R6
51DFDA:  B               loc_51DFF2
51DFDC:  LDR.W           R0, [R5,#0x440]
51DFE0:  MOVS            R1, #0; int
51DFE2:  ADDS            R0, #4; this
51DFE4:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
51DFE8:  LDR             R2, [R6,#0x10]; CEntity *
51DFEA:  MOV             R1, R5; CPed *
51DFEC:  MOVS            R3, #2; signed __int8
51DFEE:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
51DFF2:  MOV             R0, R8
51DFF4:  ADD             SP, SP, #0x18
51DFF6:  POP.W           {R8,R9,R11}
51DFFA:  POP             {R4-R7,PC}
