; =========================================================
; Game Engine Function: _ZN8CCarCtrl23FireHeliRocketsAtTargetEP11CAutomobileP7CEntity
; Address            : 0x2FAAA0 - 0x2FAC36
; =========================================================

2FAAA0:  PUSH            {R4-R7,LR}
2FAAA2:  ADD             R7, SP, #0xC
2FAAA4:  PUSH.W          {R11}
2FAAA8:  SUB             SP, SP, #0x20; int
2FAAAA:  MOV             R4, R0
2FAAAC:  LDRB.W          R0, [R4,#0x523]
2FAAB0:  ORR.W           R0, R0, #4
2FAAB4:  CMP             R0, #4
2FAAB6:  BNE.W           loc_2FAC2E
2FAABA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FAACA)
2FAABC:  MOVW            R5, #0x4DD3
2FAAC0:  LDR             R2, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2FAACC)
2FAAC2:  MOVT            R5, #0x1062
2FAAC6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FAAC8:  ADD             R2, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2FAACA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FAACC:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds ...
2FAACE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FAAD0:  LDR             R2, [R2]; CTimer::m_snPreviousTimeInMilliseconds
2FAAD2:  UMULL.W         R0, R3, R0, R5
2FAAD6:  UMULL.W         R0, R2, R2, R5
2FAADA:  LSRS            R0, R3, #4
2FAADC:  CMP.W           R0, R2,LSR#4
2FAAE0:  BEQ.W           loc_2FAC2E
2FAAE4:  LDR             R0, [R1,#0x14]
2FAAE6:  ADDS            R6, R4, #4
2FAAE8:  LDR             R3, [R4,#0x14]; CVector *
2FAAEA:  ADD.W           R2, R0, #0x30 ; '0'
2FAAEE:  CMP             R0, #0
2FAAF0:  IT EQ
2FAAF2:  ADDEQ           R2, R1, #4; CVector *
2FAAF4:  CMP             R3, #0
2FAAF6:  MOV             R0, R6
2FAAF8:  VLDR            S6, [R2]
2FAAFC:  VLDR            S8, [R2,#4]
2FAB00:  VLDR            S10, [R2,#8]
2FAB04:  IT NE
2FAB06:  ADDNE.W         R0, R3, #0x30 ; '0'; this
2FAB0A:  VLDR            S0, [R0]
2FAB0E:  VLDR            S4, [R0,#4]
2FAB12:  VSUB.F32        S6, S0, S6
2FAB16:  VLDR            S2, [R0,#8]
2FAB1A:  VSUB.F32        S8, S4, S8
2FAB1E:  VSUB.F32        S10, S2, S10
2FAB22:  VMUL.F32        S6, S6, S6
2FAB26:  VMUL.F32        S8, S8, S8
2FAB2A:  VMUL.F32        S10, S10, S10
2FAB2E:  VADD.F32        S6, S6, S8
2FAB32:  VLDR            S8, =80.0
2FAB36:  VADD.F32        S6, S6, S10
2FAB3A:  VSQRT.F32       S6, S6
2FAB3E:  VCMPE.F32       S6, S8
2FAB42:  VMRS            APSR_nzcv, FPSCR
2FAB46:  BGE             loc_2FAC2E
2FAB48:  VLDR            S6, [R3,#0x10]
2FAB4C:  ADD             R1, SP, #0x30+var_1C; CVector *
2FAB4E:  VLDR            S8, [R3,#0x14]
2FAB52:  VLDR            S10, [R3,#0x18]
2FAB56:  VADD.F32        S0, S0, S6
2FAB5A:  VADD.F32        S4, S4, S8
2FAB5E:  VADD.F32        S2, S2, S10
2FAB62:  VSTR            S4, [SP,#0x30+var_18]
2FAB66:  VSTR            S0, [SP,#0x30+var_1C]
2FAB6A:  VSTR            S2, [SP,#0x30+var_14]
2FAB6E:  BLX             j__ZN10CCollision22DistToMathematicalLineEPK7CVectorS2_S2_; CCollision::DistToMathematicalLine(CVector const*,CVector const*,CVector const*)
2FAB72:  VMOV.F32        S0, #7.0
2FAB76:  VMOV            S2, R0
2FAB7A:  VCMPE.F32       S2, S0
2FAB7E:  VMRS            APSR_nzcv, FPSCR
2FAB82:  BGE             loc_2FAC2E
2FAB84:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FAB94)
2FAB86:  VMOV.F32        S0, #4.0
2FAB8A:  VMOV.F32        S14, #1.5
2FAB8E:  LDR             R1, [R4,#0x14]
2FAB90:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FAB92:  CMP             R1, #0
2FAB94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FAB96:  VLDR            S10, [R1,#0x14]
2FAB9A:  VLDR            S8, [R1,#0x10]
2FAB9E:  VLDR            S2, [R1]
2FABA2:  VMUL.F32        S10, S10, S0
2FABA6:  VLDR            S6, [R1,#8]
2FABAA:  VMUL.F32        S1, S8, S0
2FABAE:  VLDR            S12, [R1,#0x18]
2FABB2:  VLDR            S4, [R1,#4]
2FABB6:  IT NE
2FABB8:  ADDNE.W         R6, R1, #0x30 ; '0'
2FABBC:  VMUL.F32        S8, S12, S0
2FABC0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FABC2:  VMUL.F32        S0, S6, S14
2FABC6:  VLDR            S12, [R6]
2FABCA:  VMUL.F32        S6, S2, S14
2FABCE:  VLDR            S5, [R6,#8]
2FABD2:  VMUL.F32        S4, S4, S14
2FABD6:  UMULL.W         R0, R2, R0, R5
2FABDA:  VLDR            S3, [R6,#4]
2FABDE:  MOV.W           R6, #0x3F800000
2FABE2:  VADD.F32        S2, S8, S5
2FABE6:  VADD.F32        S8, S10, S3
2FABEA:  VADD.F32        S10, S1, S12
2FABEE:  LSRS            R0, R2, #4
2FABF0:  LSLS            R0, R0, #0x1F
2FABF2:  ADD.W           R0, R1, #0x10
2FABF6:  MOV.W           R1, #0
2FABFA:  ITTT NE
2FABFC:  VNEGNE.F32      S0, S0
2FAC00:  VNEGNE.F32      S4, S4
2FAC04:  VNEGNE.F32      S6, S6
2FAC08:  STRD.W          R6, R0, [SP,#0x30+var_2C]; float
2FAC0C:  STR             R1, [SP,#0x30+var_24]; CEntity *
2FAC0E:  MOV             R0, R4; this
2FAC10:  MOVS            R1, #0x13; float
2FAC12:  VADD.F32        S6, S10, S6
2FAC16:  VADD.F32        S4, S8, S4
2FAC1A:  VADD.F32        S0, S2, S0
2FAC1E:  VMOV            R2, S6; int
2FAC22:  VMOV            R3, S4; int
2FAC26:  VSTR            S0, [SP,#0x30+var_30]
2FAC2A:  BLX             j__ZN15CProjectileInfo13AddProjectileEP7CEntity11eWeaponType7CVectorfPS3_S1_; CProjectileInfo::AddProjectile(CEntity *,eWeaponType,CVector,float,CVector*,CEntity *)
2FAC2E:  ADD             SP, SP, #0x20 ; ' '
2FAC30:  POP.W           {R11}
2FAC34:  POP             {R4-R7,PC}
