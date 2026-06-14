; =========================================================
; Game Engine Function: _ZN4CPad17GetSteeringUpDownEv
; Address            : 0x3F9CD4 - 0x3F9DBC
; =========================================================

3F9CD4:  PUSH            {R4,R6,R7,LR}
3F9CD6:  ADD             R7, SP, #8
3F9CD8:  SUB             SP, SP, #8
3F9CDA:  MOV             R4, R0
3F9CDC:  LDRH.W          R0, [R4,#0x110]
3F9CE0:  CBZ             R0, loc_3F9CE6
3F9CE2:  MOVS            R4, #0
3F9CE4:  B               loc_3F9DB6
3F9CE6:  MOV             R0, R4; this
3F9CE8:  BLX             j__ZN4CPad15GetSteeringModeEv; CPad::GetSteeringMode(void)
3F9CEC:  CBZ             R0, loc_3F9CFC
3F9CEE:  VLDR            S0, =0.0
3F9CF2:  VLDR            S2, [R4,#0x128]
3F9CF6:  VADD.F32        S0, S2, S0
3F9CFA:  B               loc_3F9D9E
3F9CFC:  MOVS            R4, #0
3F9CFE:  MOV             R1, SP
3F9D00:  MOVS            R0, #0xAC
3F9D02:  MOVS            R2, #1
3F9D04:  STRD.W          R4, R4, [SP,#0x10+var_10]
3F9D08:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F9D0C:  CMP             R0, #1
3F9D0E:  BNE             loc_3F9DA6
3F9D10:  VLDR            S0, [SP,#0x10+var_C]
3F9D14:  VLDR            S4, =64.0
3F9D18:  VABS.F32        S2, S0
3F9D1C:  VCMPE.F32       S2, S4
3F9D20:  VMRS            APSR_nzcv, FPSCR
3F9D24:  BLE             loc_3F9D30
3F9D26:  MOVS            R0, #byte_4; this
3F9D28:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3F9D2C:  VLDR            S0, [SP,#0x10+var_C]
3F9D30:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3F9D3A)
3F9D32:  VLDR            S6, =100.0
3F9D36:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3F9D38:  LDR             R0, [R0]; MobileSettings::settings ...
3F9D3A:  VLDR            S2, [R0,#0x368]
3F9D3E:  VLDR            S4, [R0,#0x388]
3F9D42:  VCVT.F32.S32    S2, S2
3F9D46:  VCVT.F32.S32    S8, S4
3F9D4A:  VDIV.F32        S4, S2, S6
3F9D4E:  VDIV.F32        S6, S8, S6
3F9D52:  VABS.F32        S2, S0
3F9D56:  VLDR            S8, =0.0078125
3F9D5A:  VMUL.F32        S2, S2, S8
3F9D5E:  VCMPE.F32       S2, S4
3F9D62:  VMRS            APSR_nzcv, FPSCR
3F9D66:  BGE             loc_3F9D72
3F9D68:  VDIV.F32        S4, S6, S4
3F9D6C:  VMUL.F32        S2, S2, S4
3F9D70:  B               loc_3F9D92
3F9D72:  VMOV.F32        S8, #1.0
3F9D76:  VSUB.F32        S4, S8, S4
3F9D7A:  VSUB.F32        S6, S8, S6
3F9D7E:  VDIV.F32        S4, S6, S4
3F9D82:  VMOV.F32        S6, #-1.0
3F9D86:  VMUL.F32        S2, S2, S4
3F9D8A:  VADD.F32        S4, S4, S6
3F9D8E:  VSUB.F32        S2, S2, S4
3F9D92:  VMUL.F32        S0, S0, S2
3F9D96:  VLDR            S2, =0.0
3F9D9A:  VADD.F32        S0, S0, S2
3F9D9E:  VCVT.S32.F32    S0, S0
3F9DA2:  VMOV            R4, S0
3F9DA6:  CMP             R4, #0x80
3F9DA8:  IT GE
3F9DAA:  MOVGE           R4, #0x80
3F9DAC:  CMN.W           R4, #0x80
3F9DB0:  IT LE
3F9DB2:  MOVLE           R4, #0xFFFFFF80
3F9DB6:  SXTH            R0, R4
3F9DB8:  ADD             SP, SP, #8
3F9DBA:  POP             {R4,R6,R7,PC}
