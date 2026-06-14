; =========================================================
; Game Engine Function: _ZN8CCarCtrl21PossiblyFireHSMissileEP8CVehicleP7CEntity
; Address            : 0x2F9AF0 - 0x2F9C6E
; =========================================================

2F9AF0:  PUSH            {R4-R7,LR}
2F9AF2:  ADD             R7, SP, #0xC
2F9AF4:  PUSH.W          {R11}
2F9AF8:  SUB             SP, SP, #0x20; int
2F9AFA:  MOV             R5, R1
2F9AFC:  MOV             R4, R0
2F9AFE:  CMP             R5, #0
2F9B00:  BEQ.W           loc_2F9C66
2F9B04:  LDR             R0, [R4,#0x14]
2F9B06:  ADDS            R6, R4, #4
2F9B08:  LDR             R1, [R5,#0x14]
2F9B0A:  CMP             R0, #0
2F9B0C:  MOV             R2, R6
2F9B0E:  IT NE
2F9B10:  ADDNE.W         R2, R0, #0x30 ; '0'
2F9B14:  ADD.W           R0, R1, #0x30 ; '0'
2F9B18:  CMP             R1, #0
2F9B1A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2F9B28)
2F9B1C:  VLDR            S2, [R2]
2F9B20:  VLDR            S0, [R2,#4]
2F9B24:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2F9B26:  VLDR            S4, [R2,#8]
2F9B2A:  IT EQ
2F9B2C:  ADDEQ           R0, R5, #4
2F9B2E:  VLDR            S6, [R0]
2F9B32:  MOVW            R2, #0x4DD3
2F9B36:  VLDR            S8, [R0,#4]
2F9B3A:  MOVT            R2, #0x1062
2F9B3E:  VLDR            S10, [R0,#8]
2F9B42:  VSUB.F32        S2, S6, S2
2F9B46:  LDR             R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2F9B56)
2F9B48:  VSUB.F32        S0, S8, S0
2F9B4C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2F9B4E:  VSUB.F32        S4, S10, S4
2F9B52:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2F9B54:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
2F9B56:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2F9B58:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds
2F9B5A:  UMULL.W         R1, R3, R1, R2
2F9B5E:  VSTR            S0, [SP,#0x30+var_18]
2F9B62:  VSTR            S2, [SP,#0x30+var_1C]
2F9B66:  VSTR            S4, [SP,#0x30+var_14]
2F9B6A:  UMULL.W         R0, R1, R0, R2
2F9B6E:  LSRS            R0, R3, #7
2F9B70:  CMP.W           R0, R1,LSR#7
2F9B74:  BEQ             loc_2F9C66
2F9B76:  VMUL.F32        S0, S0, S0
2F9B7A:  VMUL.F32        S2, S2, S2
2F9B7E:  VMUL.F32        S4, S4, S4
2F9B82:  VADD.F32        S0, S2, S0
2F9B86:  VLDR            S2, =160.0
2F9B8A:  VADD.F32        S0, S0, S4
2F9B8E:  VSQRT.F32       S0, S0
2F9B92:  VCMPE.F32       S0, S2
2F9B96:  VMRS            APSR_nzcv, FPSCR
2F9B9A:  BGE             loc_2F9C66
2F9B9C:  VMOV.F32        S2, #30.0
2F9BA0:  VCMPE.F32       S0, S2
2F9BA4:  VMRS            APSR_nzcv, FPSCR
2F9BA8:  BLE             loc_2F9C66
2F9BAA:  ADD             R0, SP, #0x30+var_1C; this
2F9BAC:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2F9BB0:  LDR             R1, [R4,#0x14]
2F9BB2:  VLDR            S6, [SP,#0x30+var_1C]
2F9BB6:  VLDR            S8, [SP,#0x30+var_18]
2F9BBA:  VLDR            S4, [R1,#0x10]
2F9BBE:  VLDR            S2, [R1,#0x14]
2F9BC2:  VMUL.F32        S6, S6, S4
2F9BC6:  VLDR            S10, [SP,#0x30+var_14]
2F9BCA:  VMUL.F32        S8, S8, S2
2F9BCE:  VLDR            S0, [R1,#0x18]
2F9BD2:  VMUL.F32        S10, S10, S0
2F9BD6:  VADD.F32        S6, S6, S8
2F9BDA:  VLDR            S8, =0.8
2F9BDE:  VADD.F32        S6, S6, S10
2F9BE2:  VCMPE.F32       S6, S8
2F9BE6:  VMRS            APSR_nzcv, FPSCR
2F9BEA:  BLE             loc_2F9C66
2F9BEC:  VMOV.F32        S6, #4.0
2F9BF0:  CMP             R1, #0
2F9BF2:  VMOV.F32        S8, #3.0
2F9BF6:  VLDR            S10, [R1,#0x20]
2F9BFA:  VLDR            S12, [R1,#0x24]
2F9BFE:  ADD.W           R0, R1, #0x10
2F9C02:  VLDR            S14, [R1,#0x28]
2F9C06:  IT NE
2F9C08:  ADDNE.W         R6, R1, #0x30 ; '0'
2F9C0C:  VLDR            S1, [R6]
2F9C10:  MOV.W           R1, #0x3F800000
2F9C14:  VLDR            S3, [R6,#4]
2F9C18:  VLDR            S5, [R6,#8]
2F9C1C:  VMUL.F32        S4, S4, S6
2F9C20:  STRD.W          R1, R0, [SP,#0x30+var_2C]; float
2F9C24:  VMUL.F32        S2, S2, S6
2F9C28:  MOV             R0, R4; this
2F9C2A:  VMUL.F32        S10, S10, S8
2F9C2E:  MOVS            R1, #0x14; float
2F9C30:  VMUL.F32        S12, S12, S8
2F9C34:  STR             R5, [SP,#0x30+var_24]; CEntity *
2F9C36:  VMUL.F32        S0, S0, S6
2F9C3A:  VADD.F32        S4, S4, S1
2F9C3E:  VADD.F32        S2, S2, S3
2F9C42:  VADD.F32        S0, S0, S5
2F9C46:  VSUB.F32        S4, S4, S10
2F9C4A:  VSUB.F32        S2, S2, S12
2F9C4E:  VMOV            R2, S4; int
2F9C52:  VMOV            R3, S2; int
2F9C56:  VMUL.F32        S2, S14, S8
2F9C5A:  VSUB.F32        S0, S0, S2
2F9C5E:  VSTR            S0, [SP,#0x30+var_30]
2F9C62:  BLX             j__ZN15CProjectileInfo13AddProjectileEP7CEntity11eWeaponType7CVectorfPS3_S1_; CProjectileInfo::AddProjectile(CEntity *,eWeaponType,CVector,float,CVector*,CEntity *)
2F9C66:  ADD             SP, SP, #0x20 ; ' '
2F9C68:  POP.W           {R11}
2F9C6C:  POP             {R4-R7,PC}
