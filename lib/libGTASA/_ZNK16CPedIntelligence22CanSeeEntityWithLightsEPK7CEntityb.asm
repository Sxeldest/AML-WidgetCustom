; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence22CanSeeEntityWithLightsEPK7CEntityb
; Address            : 0x4BCA94 - 0x4BCB8E
; =========================================================

4BCA94:  PUSH            {R4,R5,R7,LR}
4BCA96:  ADD             R7, SP, #8
4BCA98:  MOV             R4, R1
4BCA9A:  MOV             R5, R0
4BCA9C:  LDRB.W          R0, [R4,#0x3A]
4BCAA0:  AND.W           R0, R0, #7
4BCAA4:  CMP             R0, #3
4BCAA6:  BNE             loc_4BCB74
4BCAA8:  MOV             R0, R4; this
4BCAAA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BCAAE:  CMP             R0, #0
4BCAB0:  BEQ             loc_4BCB74
4BCAB2:  MOV             R0, R4; this
4BCAB4:  BLX             j__ZNK9CPhysical16GetLightingTotalEv; CPhysical::GetLightingTotal(void)
4BCAB8:  LDR             R1, =(LIGHT_AI_LEVEL_MAX_ptr - 0x4BCAC2)
4BCABA:  VMOV            S2, R0
4BCABE:  ADD             R1, PC; LIGHT_AI_LEVEL_MAX_ptr
4BCAC0:  LDR             R1, [R1]; LIGHT_AI_LEVEL_MAX
4BCAC2:  VLDR            S0, [R1]
4BCAC6:  VCMPE.F32       S2, S0
4BCACA:  VMRS            APSR_nzcv, FPSCR
4BCACE:  BGT             loc_4BCB6E
4BCAD0:  LDR             R0, [R5]
4BCAD2:  LDR             R1, [R4,#0x14]
4BCAD4:  LDR             R2, [R0,#0x14]
4BCAD6:  ADD.W           R3, R1, #0x30 ; '0'
4BCADA:  CMP             R1, #0
4BCADC:  IT EQ
4BCADE:  ADDEQ           R3, R4, #4
4BCAE0:  ADD.W           R1, R2, #0x30 ; '0'
4BCAE4:  CMP             R2, #0
4BCAE6:  VLDR            S4, [R3]
4BCAEA:  IT EQ
4BCAEC:  ADDEQ           R1, R0, #4
4BCAEE:  VLDR            D16, [R3,#4]
4BCAF2:  VLDR            S6, [R1]
4BCAF6:  VLDR            D17, [R1,#4]
4BCAFA:  VSUB.F32        S4, S4, S6
4BCAFE:  LDR             R0, =(LIGHT_AI_SCALE_RANGE_ptr - 0x4BCB08)
4BCB00:  VSUB.F32        D16, D16, D17
4BCB04:  ADD             R0, PC; LIGHT_AI_SCALE_RANGE_ptr
4BCB06:  LDR             R0, [R0]; LIGHT_AI_SCALE_RANGE
4BCB08:  VMUL.F32        D3, D16, D16
4BCB0C:  VMUL.F32        S4, S4, S4
4BCB10:  VADD.F32        S4, S4, S6
4BCB14:  VADD.F32        S4, S4, S7
4BCB18:  VLDR            S6, =-0.7
4BCB1C:  VSQRT.F32       S4, S4
4BCB20:  VADD.F32        S4, S4, S6
4BCB24:  VLDR            S6, [R0]
4BCB28:  VDIV.F32        S8, S4, S6
4BCB2C:  VMUL.F32        S6, S0, S0
4BCB30:  VMUL.F32        S0, S2, S2
4BCB34:  VMUL.F32        S2, S6, S8
4BCB38:  VSUB.F32        S0, S0, S2
4BCB3C:  VCMPE.F32       S0, #0.0
4BCB40:  VMRS            APSR_nzcv, FPSCR
4BCB44:  BGT             loc_4BCB6E
4BCB46:  LDR             R0, =(LIGHT_AI_SCALE_RANGE2_ptr - 0x4BCB50)
4BCB48:  VMUL.F32        S0, S0, S0
4BCB4C:  ADD             R0, PC; LIGHT_AI_SCALE_RANGE2_ptr
4BCB4E:  LDR             R0, [R0]; LIGHT_AI_SCALE_RANGE2
4BCB50:  VLDR            S2, [R0]
4BCB54:  VDIV.F32        S2, S4, S2
4BCB58:  VMUL.F32        S2, S6, S2
4BCB5C:  VSUB.F32        S0, S0, S2
4BCB60:  VCMPE.F32       S0, #0.0
4BCB64:  VMRS            APSR_nzcv, FPSCR
4BCB68:  BLE             loc_4BCB84
4BCB6A:  VNEG.F32        S0, S0
4BCB6E:  VMOV            R0, S0
4BCB72:  POP             {R4,R5,R7,PC}
4BCB74:  LDR             R0, =(LIGHT_AI_LEVEL_MAX_ptr - 0x4BCB7A)
4BCB76:  ADD             R0, PC; LIGHT_AI_LEVEL_MAX_ptr
4BCB78:  LDR             R0, [R0]; LIGHT_AI_LEVEL_MAX
4BCB7A:  VLDR            S0, [R0]
4BCB7E:  VMOV            R0, S0
4BCB82:  POP             {R4,R5,R7,PC}
4BCB84:  VLDR            S0, =0.0
4BCB88:  VMOV            R0, S0
4BCB8C:  POP             {R4,R5,R7,PC}
