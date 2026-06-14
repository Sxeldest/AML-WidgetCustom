; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun17RequirePistolWhipEP4CPedP7CEntity
; Address            : 0x4DDD74 - 0x4DDF26
; =========================================================

4DDD74:  PUSH            {R4-R7,LR}
4DDD76:  ADD             R7, SP, #0xC
4DDD78:  PUSH.W          {R8-R11}
4DDD7C:  SUB             SP, SP, #4
4DDD7E:  VPUSH           {D8}
4DDD82:  SUB             SP, SP, #0x10
4DDD84:  MOV             R10, R0
4DDD86:  MOV             R6, R1
4DDD88:  LDR.W           R8, [R10,#0x440]
4DDD8C:  MOVS            R4, #0
4DDD8E:  CBZ             R6, loc_4DDDA2
4DDD90:  LDRB.W          R0, [R6,#0x3A]
4DDD94:  AND.W           R0, R0, #7
4DDD98:  CMP             R0, #3
4DDD9A:  ITE NE
4DDD9C:  MOVNE           R6, R4
4DDD9E:  MOVEQ           R4, #0xF
4DDDA0:  B               loc_4DDDA4
4DDDA2:  MOVS            R6, #0
4DDDA4:  MOV             R0, R8; this
4DDDA6:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4DDDAA:  CBZ             R0, loc_4DDDB6
4DDDAC:  LDRB            R0, [R0,#0x10]
4DDDAE:  CMP             R0, #5
4DDDB0:  BNE             loc_4DDDB6
4DDDB2:  MOVS            R6, #0
4DDDB4:  B               loc_4DDF12
4DDDB6:  LDR             R0, =(USE_GUN_REQ_PISTOL_WHIP_RANGE_ptr - 0x4DDDC6)
4DDDB8:  VMOV.F32        S16, #1.5
4DDDBC:  ADDS            R4, #0x4C ; 'L'
4DDDBE:  ADD.W           R5, R10, #4
4DDDC2:  ADD             R0, PC; USE_GUN_REQ_PISTOL_WHIP_RANGE_ptr
4DDDC4:  ADD.W           R9, SP, #0x38+var_34
4DDDC8:  LDR.W           R11, [R0]; USE_GUN_REQ_PISTOL_WHIP_RANGE
4DDDCC:  LDR             R0, =(USE_GUN_REQ_PISTOL_WHIP_ANGLE_TAN_ptr - 0x4DDDD2)
4DDDCE:  ADD             R0, PC; USE_GUN_REQ_PISTOL_WHIP_ANGLE_TAN_ptr
4DDDD0:  LDR             R0, [R0]; USE_GUN_REQ_PISTOL_WHIP_ANGLE_TAN
4DDDD2:  STR             R0, [SP,#0x38+var_38]
4DDDD4:  CMP             R6, #0
4DDDD6:  ITT EQ
4DDDD8:  LDREQ.W         R6, [R8,R4,LSL#2]
4DDDDC:  CMPEQ           R6, #0
4DDDDE:  BEQ.W           loc_4DDF02
4DDDE2:  MOV             R0, R6; this
4DDDE4:  MOV             R1, R9
4DDDE6:  MOVS            R2, #5
4DDDE8:  MOVS            R3, #0
4DDDEA:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4DDDEE:  MOV             R0, R6; this
4DDDF0:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4DDDF4:  CMP             R0, #1
4DDDF6:  BNE.W           loc_4DDF02
4DDDFA:  LDR.W           R0, [R10,#0x14]
4DDDFE:  MOV             R1, R5
4DDE00:  CMP             R0, #0
4DDE02:  IT NE
4DDE04:  ADDNE.W         R1, R0, #0x30 ; '0'
4DDE08:  VLDR            S0, [SP,#0x38+var_2C]
4DDE0C:  VLDR            S2, [R1,#8]
4DDE10:  VCMPE.F32       S0, S2
4DDE14:  VMRS            APSR_nzcv, FPSCR
4DDE18:  BLE             loc_4DDF02
4DDE1A:  VADD.F32        S2, S2, S16
4DDE1E:  VCMPE.F32       S0, S2
4DDE22:  VMRS            APSR_nzcv, FPSCR
4DDE26:  BGE             loc_4DDF02
4DDE28:  LDRB.W          R1, [R6,#0x48E]
4DDE2C:  LSLS            R1, R1, #0x1B
4DDE2E:  BPL             loc_4DDE48
4DDE30:  LDR.W           R0, [R10,#0x440]
4DDE34:  ADDS            R0, #4; this
4DDE36:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4DDE3A:  LDR             R1, [R0]
4DDE3C:  LDR             R1, [R1,#0x14]
4DDE3E:  BLX             R1
4DDE40:  CMP             R0, #0xCD
4DDE42:  BNE             loc_4DDF02
4DDE44:  LDR.W           R0, [R10,#0x14]
4DDE48:  LDR             R1, [R6,#0x14]
4DDE4A:  CMP             R0, #0
4DDE4C:  MOV             R2, R5
4DDE4E:  IT NE
4DDE50:  ADDNE.W         R2, R0, #0x30 ; '0'
4DDE54:  ADD.W           R3, R1, #0x30 ; '0'
4DDE58:  CMP             R1, #0
4DDE5A:  VLDR            S0, [R2]
4DDE5E:  VLDR            S2, [R2,#4]
4DDE62:  VLDR            S4, [R2,#8]
4DDE66:  IT EQ
4DDE68:  ADDEQ           R3, R6, #4
4DDE6A:  VLDR            S6, [R3]
4DDE6E:  VLDR            S8, [R3,#4]
4DDE72:  VSUB.F32        S0, S6, S0
4DDE76:  VLDR            S6, [R0,#0x10]
4DDE7A:  VSUB.F32        S2, S8, S2
4DDE7E:  VLDR            S8, [R0,#0x14]
4DDE82:  VLDR            S10, [R3,#8]
4DDE86:  VLDR            S12, [R0,#0x18]
4DDE8A:  VSUB.F32        S4, S10, S4
4DDE8E:  VMUL.F32        S6, S0, S6
4DDE92:  VMUL.F32        S8, S2, S8
4DDE96:  VMUL.F32        S10, S4, S12
4DDE9A:  VADD.F32        S6, S6, S8
4DDE9E:  VADD.F32        S6, S6, S10
4DDEA2:  VCMPE.F32       S6, #0.0
4DDEA6:  VMRS            APSR_nzcv, FPSCR
4DDEAA:  BLE             loc_4DDF02
4DDEAC:  VMUL.F32        S8, S2, S2
4DDEB0:  VMUL.F32        S10, S0, S0
4DDEB4:  VADD.F32        S8, S10, S8
4DDEB8:  VLDR            S10, [R11]
4DDEBC:  VSQRT.F32       S8, S8
4DDEC0:  VCMPE.F32       S8, S10
4DDEC4:  VMRS            APSR_nzcv, FPSCR
4DDEC8:  BGE             loc_4DDF02
4DDECA:  VLDR            S8, [R0]
4DDECE:  VLDR            S10, [R0,#4]
4DDED2:  VMUL.F32        S0, S0, S8
4DDED6:  VLDR            S12, [R0,#8]
4DDEDA:  VMUL.F32        S2, S2, S10
4DDEDE:  LDR             R0, [SP,#0x38+var_38]
4DDEE0:  VMUL.F32        S4, S4, S12
4DDEE4:  VADD.F32        S0, S0, S2
4DDEE8:  VLDR            S2, [R0]
4DDEEC:  VADD.F32        S0, S0, S4
4DDEF0:  VABS.F32        S0, S0
4DDEF4:  VDIV.F32        S0, S0, S6
4DDEF8:  VCMPE.F32       S0, S2
4DDEFC:  VMRS            APSR_nzcv, FPSCR
4DDF00:  BLT             loc_4DDF22
4DDF02:  ADDS            R0, R4, #1
4DDF04:  SUB.W           R1, R4, #0x4C ; 'L'
4DDF08:  MOVS            R6, #0
4DDF0A:  CMP             R1, #0xF
4DDF0C:  MOV             R4, R0
4DDF0E:  BLT.W           loc_4DDDD4
4DDF12:  MOV             R0, R6
4DDF14:  ADD             SP, SP, #0x10
4DDF16:  VPOP            {D8}
4DDF1A:  ADD             SP, SP, #4
4DDF1C:  POP.W           {R8-R11}
4DDF20:  POP             {R4-R7,PC}
4DDF22:  MOVS            R6, #1
4DDF24:  B               loc_4DDF12
