; =========================================================
; Game Engine Function: _ZN8CVehicle22FireHeatSeakingMissileEP7CEntity13eOrdnanceTypeb
; Address            : 0x58ED8C - 0x58F01A
; =========================================================

58ED8C:  PUSH            {R4-R7,LR}
58ED8E:  ADD             R7, SP, #0xC
58ED90:  PUSH.W          {R8}
58ED94:  SUB             SP, SP, #0x20; int
58ED96:  MOV             R4, R0
58ED98:  ADD.W           R8, R4, #0x510
58ED9C:  CMP             R2, #1
58ED9E:  IT EQ
58EDA0:  ADDWEQ          R8, R4, #0x50C
58EDA4:  CBZ             R3, loc_58EDC6
58EDA6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58EDB0)
58EDA8:  LDR.W           LR, [R8]
58EDAC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58EDAE:  LDR             R3, [R0]; CTimer::m_snTimeInMilliseconds ...
58EDB0:  LDR.W           R0, [R4,#0x5A4]
58EDB4:  LDR.W           R12, [R3]; CTimer::m_snTimeInMilliseconds
58EDB8:  CMP             R0, #3
58EDBA:  BEQ             loc_58EDCA
58EDBC:  CMP             R0, #4
58EDBE:  BNE             loc_58EDE2
58EDC0:  ADDW            R0, R4, #0x9EC
58EDC4:  B               loc_58EDCE
58EDC6:  LDRH            R3, [R4,#0x26]
58EDC8:  B               loc_58EE40
58EDCA:  ADDW            R0, R4, #0xA24
58EDCE:  LDRB            R0, [R0]
58EDD0:  VLDR            S2, =0.0625
58EDD4:  VMOV            S0, R0
58EDD8:  VCVT.F32.U32    S0, S0
58EDDC:  VMUL.F32        S0, S0, S2
58EDE0:  B               loc_58EDE6
58EDE2:  VMOV.F32        S0, #1.0
58EDE6:  LDRSH.W         R0, [R4,#0x26]
58EDEA:  CMP.W           R0, #0x1DC
58EDEE:  UXTH            R3, R0
58EDF0:  BGE             loc_58EE08
58EDF2:  MOVW            R6, #0x1A9
58EDF6:  CMP             R0, R6
58EDF8:  BEQ             loc_58EE1A
58EDFA:  MOVW            R6, #0x1BF
58EDFE:  CMP             R0, R6
58EE00:  BEQ             loc_58EE14
58EE02:  VLDR            S2, =350.0
58EE06:  B               loc_58EE2C
58EE08:  CMP.W           R0, #0x208
58EE0C:  BEQ             loc_58EE20
58EE0E:  CMP.W           R0, #0x1DC
58EE12:  BNE             loc_58EE02
58EE14:  VLDR            S2, =1000.0
58EE18:  B               loc_58EE2C
58EE1A:  VLDR            S2, =500.0
58EE1E:  B               loc_58EE2C
58EE20:  ADR             R0, dword_58F028
58EE22:  CMP             R2, #1
58EE24:  IT EQ
58EE26:  ADDEQ           R0, #4
58EE28:  VLDR            S2, [R0]
58EE2C:  VDIV.F32        S0, S2, S0
58EE30:  VCVT.S32.F32    S0, S0
58EE34:  VMOV            R0, S0
58EE38:  ADD             R0, LR
58EE3A:  CMP             R12, R0
58EE3C:  BLS.W           loc_58F012
58EE40:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58EE48)
58EE42:  SXTH            R3, R3
58EE44:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58EE46:  LDR             R6, [R0]; CModelInfo::ms_modelInfoPtrs ...
58EE48:  LDR             R0, [R4,#0x14]
58EE4A:  LDR.W           R6, [R6,R3,LSL#2]
58EE4E:  ADD.W           R5, R0, #0x30 ; '0'
58EE52:  CMP             R0, #0
58EE54:  LDR             R6, [R6,#0x74]
58EE56:  IT EQ
58EE58:  ADDEQ           R5, R4, #4
58EE5A:  VLDR            S2, [R5]
58EE5E:  VLDR            S4, [R5,#4]
58EE62:  VLDR            S12, [R6,#0x9C]
58EE66:  VLDR            S0, [R5,#8]
58EE6A:  VCMP.F32        S12, #0.0
58EE6E:  VLDR            S6, [R6,#0xA0]
58EE72:  VLDR            S8, [R6,#0xA4]
58EE76:  VMRS            APSR_nzcv, FPSCR
58EE7A:  BNE             loc_58EEBE
58EE7C:  VCMP.F32        S6, #0.0
58EE80:  VMRS            APSR_nzcv, FPSCR
58EE84:  BNE             loc_58EEBE
58EE86:  VCMP.F32        S8, #0.0
58EE8A:  VMRS            APSR_nzcv, FPSCR
58EE8E:  BNE             loc_58EEBE
58EE90:  VLDR            S10, =0.0
58EE94:  CMP.W           R3, #0x1DC
58EE98:  BGE             loc_58EEC4
58EE9A:  MOVW            R2, #0x1A9
58EE9E:  CMP             R3, R2
58EEA0:  BEQ             loc_58EEE0
58EEA2:  MOVW            R2, #0x1BF
58EEA6:  CMP             R3, R2
58EEA8:  BEQ             loc_58EEEC
58EEAA:  VMOV.F32        S6, S10
58EEAE:  CMP.W           R3, #0x1D0
58EEB2:  VMOV.F32        S8, S10
58EEB6:  BNE             loc_58EF14
58EEB8:  LDR             R2, =(dword_A131E8 - 0x58EEBE)
58EEBA:  ADD             R2, PC; dword_A131E8
58EEBC:  B               loc_58EF08
58EEBE:  VMOV.F32        S10, S12
58EEC2:  B               loc_58EF14
58EEC4:  BEQ             loc_58EEE6
58EEC6:  CMP.W           R3, #0x208
58EECA:  BEQ             loc_58EEF2
58EECC:  VMOV.F32        S6, S10
58EED0:  CMP.W           R3, #0x240
58EED4:  VMOV.F32        S8, S10
58EED8:  BNE             loc_58EF14
58EEDA:  LDR             R2, =(dword_A131D8 - 0x58EEE0)
58EEDC:  ADD             R2, PC; dword_A131D8
58EEDE:  B               loc_58EF08
58EEE0:  LDR             R2, =(dword_A13188 - 0x58EEE6)
58EEE2:  ADD             R2, PC; dword_A13188
58EEE4:  B               loc_58EF08
58EEE6:  LDR             R2, =(dword_A131A8 - 0x58EEEC)
58EEE8:  ADD             R2, PC; dword_A131A8
58EEEA:  B               loc_58EF08
58EEEC:  LDR             R2, =(dword_A13198 - 0x58EEF2)
58EEEE:  ADD             R2, PC; dword_A13198
58EEF0:  B               loc_58EF08
58EEF2:  CMP             R2, #2
58EEF4:  BEQ             loc_58EF04
58EEF6:  VMOV.F32        S10, S12
58EEFA:  CMP             R2, #1
58EEFC:  BNE             loc_58EF14
58EEFE:  LDR             R2, =(dword_A131B8 - 0x58EF04)
58EF00:  ADD             R2, PC; dword_A131B8
58EF02:  B               loc_58EF08
58EF04:  LDR             R2, =(unk_A131C8 - 0x58EF0A)
58EF06:  ADD             R2, PC; unk_A131C8
58EF08:  VLDR            S10, [R2]
58EF0C:  VLDR            S6, [R2,#4]
58EF10:  VLDR            S8, [R2,#8]
58EF14:  LDRB.W          R2, [R4,#0x4B3]
58EF18:  MOVS            R6, #0
58EF1A:  VLDR            S12, [R4,#0x48]
58EF1E:  MOV.W           R12, #0
58EF22:  ANDS.W          R3, R2, #0xC
58EF26:  VLDR            S14, [R4,#0x4C]
58EF2A:  VLDR            S1, [R4,#0x50]
58EF2E:  IT EQ
58EF30:  MOVEQ           R6, #1
58EF32:  AND.W           R2, R2, #0xF3
58EF36:  CMP             R3, #0
58EF38:  ORR.W           R2, R2, R6,LSL#2
58EF3C:  STRB.W          R2, [R4,#0x4B3]
58EF40:  VLDR            S3, [R0,#0x10]
58EF44:  VLDR            S5, [R0,#0x14]
58EF48:  VMUL.F32        S12, S12, S3
58EF4C:  VLDR            S7, [R0,#0x18]
58EF50:  VMUL.F32        S14, S14, S5
58EF54:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58EF5E)
58EF56:  VMUL.F32        S1, S1, S7
58EF5A:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58EF5C:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
58EF5E:  VADD.F32        S12, S12, S14
58EF62:  VLDR            S14, =0.0
58EF66:  VADD.F32        S12, S12, S1
58EF6A:  VNEG.F32        S1, S10
58EF6E:  VMAX.F32        D6, D6, D7
58EF72:  VMUL.F32        S14, S3, S12
58EF76:  VMUL.F32        S3, S5, S12
58EF7A:  VLDR            S5, [R2]
58EF7E:  IT EQ
58EF80:  VMOVEQ.F32      S1, S10
58EF84:  VMUL.F32        S12, S7, S12
58EF88:  VLDR            D16, [R0,#0x10]
58EF8C:  LDR             R0, [R0,#0x18]
58EF8E:  STR             R0, [SP,#0x30+var_18]
58EF90:  ADD             R0, SP, #0x30+var_20
58EF92:  VSTR            D16, [SP,#0x30+var_20]
58EF96:  VMUL.F32        S10, S14, S5
58EF9A:  STRD.W          R12, R0, [SP,#0x30+var_2C]; float
58EF9E:  VMUL.F32        S14, S3, S5
58EFA2:  STR             R1, [SP,#0x30+var_24]; CEntity *
58EFA4:  MOV             R0, R4; this
58EFA6:  MOVS            R1, #0x14; float
58EFA8:  VADD.F32        S10, S1, S10
58EFAC:  VADD.F32        S6, S6, S14
58EFB0:  VADD.F32        S2, S2, S10
58EFB4:  VADD.F32        S4, S4, S6
58EFB8:  VMUL.F32        S6, S12, S5
58EFBC:  VMOV            R2, S2; int
58EFC0:  VMOV            R3, S4; int
58EFC4:  VADD.F32        S2, S8, S6
58EFC8:  VADD.F32        S0, S0, S2
58EFCC:  VSTR            S0, [SP,#0x30+var_30]
58EFD0:  BLX             j__ZN15CProjectileInfo13AddProjectileEP7CEntity11eWeaponType7CVectorfPS3_S1_; CProjectileInfo::AddProjectile(CEntity *,eWeaponType,CVector,float,CVector*,CEntity *)
58EFD4:  LDR.W           R0, [R4,#0x464]; this
58EFD8:  CMP             R0, #0
58EFDA:  BEQ             loc_58F006
58EFDC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
58EFE0:  CMP             R0, #1
58EFE2:  BNE             loc_58F006
58EFE4:  LDR.W           R0, [R4,#0x464]
58EFE8:  LDR.W           R0, [R0,#0x59C]
58EFEC:  CMP             R0, #1
58EFEE:  BEQ             loc_58EFF6
58EFF0:  CBNZ            R0, loc_58F006
58EFF2:  MOVS            R0, #0
58EFF4:  B               loc_58EFF8
58EFF6:  MOVS            R0, #(stderr+1); this
58EFF8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
58EFFC:  MOVS            R1, #0xF0; __int16
58EFFE:  MOVS            R2, #0xA0; unsigned __int8
58F000:  MOVS            R3, #0; unsigned int
58F002:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
58F006:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58F00C)
58F008:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58F00A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
58F00C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
58F00E:  STR.W           R0, [R8]
58F012:  ADD             SP, SP, #0x20 ; ' '
58F014:  POP.W           {R8}
58F018:  POP             {R4-R7,PC}
