; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo6UpdateEv
; Address            : 0x2BCB20 - 0x2BCC20
; =========================================================

2BCB20:  PUSH            {R4,R6,R7,LR}
2BCB22:  ADD             R7, SP, #8
2BCB24:  MOV             R4, R0
2BCB26:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2BCB2A:  MOV             R0, R4; this
2BCB2C:  BLX             j__ZN7CWidget11ManageAlphaEv; CWidget::ManageAlpha(void)
2BCB30:  LDR             R0, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x2BCB3A)
2BCB32:  VLDR            D17, =1.9
2BCB36:  ADD             R0, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
2BCB38:  VLDR            S6, [R4,#0x20]
2BCB3C:  VLDR            S2, [R4,#0x28]
2BCB40:  LDR             R0, [R0]; CDraw::ms_fAspectRatio ...
2BCB42:  VSUB.F32        S8, S2, S6
2BCB46:  VLDR            S0, [R4,#0x2C]
2BCB4A:  VLDR            S4, [R0]
2BCB4E:  ADR             R0, dword_2BCC2C
2BCB50:  VCVT.F64.F32    D16, S4
2BCB54:  VCMPE.F64       D16, D17
2BCB58:  VMRS            APSR_nzcv, FPSCR
2BCB5C:  VMOV.F32        S4, #1.0
2BCB60:  VABS.F32        S8, S8
2BCB64:  IT GT
2BCB66:  ADDGT           R0, #4
2BCB68:  VLDR            S10, [R0]
2BCB6C:  LDR.W           R0, [R4,#0x88]; this
2BCB70:  VSUB.F32        S4, S4, S10
2BCB74:  VMUL.F32        S10, S10, S8
2BCB78:  CMP             R0, #0
2BCB7A:  VMUL.F32        S8, S8, S4
2BCB7E:  VADD.F32        S4, S0, S10
2BCB82:  VADD.F32        S6, S6, S8
2BCB86:  VSTR            S6, [R4,#0x98]
2BCB8A:  VSTR            S4, [R4,#0x9C]
2BCB8E:  VSTR            S2, [R4,#0xA0]
2BCB92:  VSTR            S0, [R4,#0xA4]
2BCB96:  BEQ             loc_2BCBFA
2BCB98:  VSUB.F32        S8, S2, S6
2BCB9C:  VADD.F32        S2, S6, S2
2BCBA0:  VMOV.F32        S10, #0.5
2BCBA4:  VADD.F32        S0, S4, S0
2BCBA8:  VLDR            S4, =0.52
2BCBAC:  VABS.F32        S6, S8
2BCBB0:  VMUL.F32        S2, S2, S10
2BCBB4:  VMUL.F32        S0, S0, S10
2BCBB8:  VMUL.F32        S4, S6, S4
2BCBBC:  VADD.F32        S6, S2, S4
2BCBC0:  VADD.F32        S8, S4, S0
2BCBC4:  VSUB.F32        S2, S2, S4
2BCBC8:  VSUB.F32        S0, S0, S4
2BCBCC:  VSTR            S2, [R0,#0xC]
2BCBD0:  VSTR            S8, [R0,#0x10]
2BCBD4:  VSTR            S6, [R0,#0x14]
2BCBD8:  VSTR            S0, [R0,#0x18]
2BCBDC:  VLDR            S0, [R4,#0x44]
2BCBE0:  VCMPE.F32       S0, S10
2BCBE4:  VMRS            APSR_nzcv, FPSCR
2BCBE8:  BGE             loc_2BCBF2
2BCBEA:  BLX             j__ZN4CHID27Use360ClassicVitalStatsHackEv; CHID::Use360ClassicVitalStatsHack(void)
2BCBEE:  CMP             R0, #1
2BCBF0:  BNE             loc_2BCBFA
2BCBF2:  LDR.W           R0, [R4,#0x88]
2BCBF6:  MOVS            R1, #0
2BCBF8:  STR             R1, [R0,#0x1C]
2BCBFA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2BCC06)
2BCBFC:  MOVS            R1, #0
2BCBFE:  STRB.W          R1, [R4,#0xB4]
2BCC02:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2BCC04:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2BCC06:  LDR.W           R0, [R0,#(dword_6F3A64 - 0x6F3794)]; this
2BCC0A:  CMP             R0, #0
2BCC0C:  IT EQ
2BCC0E:  POPEQ           {R4,R6,R7,PC}
2BCC10:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2BCC14:  CMP             R0, #1
2BCC16:  ITT EQ
2BCC18:  MOVEQ           R0, #1
2BCC1A:  STRBEQ.W        R0, [R4,#0xB4]
2BCC1E:  POP             {R4,R6,R7,PC}
