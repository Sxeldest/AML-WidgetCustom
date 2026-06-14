; =========================================================
; Game Engine Function: _ZN20CWidgetMissionTimers6UpdateEv
; Address            : 0x2BBFF4 - 0x2BC0C0
; =========================================================

2BBFF4:  PUSH            {R4,R5,R7,LR}
2BBFF6:  ADD             R7, SP, #8
2BBFF8:  SUB             SP, SP, #0x18
2BBFFA:  MOV             R4, R0
2BBFFC:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x2BC002)
2BBFFE:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
2BC000:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
2BC002:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
2BC004:  CMP             R0, #0
2BC006:  ITTT NE
2BC008:  MOVNE           R0, R4; this
2BC00A:  MOVNE           R1, #0; bool
2BC00C:  BLXNE           j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2BC010:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2BC016)
2BC012:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2BC014:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2BC016:  LDR.W           R5, [R0,#(dword_6F3938 - 0x6F3794)]
2BC01A:  CBZ             R5, loc_2BC040
2BC01C:  MOV             R0, R5; this
2BC01E:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2BC022:  CMP             R0, #1
2BC024:  BNE             loc_2BC040
2BC026:  VLDR            S0, [R5,#0x20]
2BC02A:  VLDR            S2, [R4,#0x28]
2BC02E:  VCMPE.F32       S2, S0
2BC032:  VMRS            APSR_nzcv, FPSCR
2BC036:  BLE             loc_2BC040
2BC038:  MOV             R0, R4; this
2BC03A:  MOVS            R1, #0; bool
2BC03C:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2BC040:  MOVS            R0, #0
2BC042:  ADD             R1, SP, #0x20+var_C
2BC044:  STRD.W          R0, R0, [SP,#0x20+var_10]
2BC048:  ADD             R2, SP, #0x20+var_10
2BC04A:  STRD.W          R0, R0, [SP,#0x20+var_18]
2BC04E:  ADD             R0, SP, #0x20+var_18
2BC050:  ADD             R3, SP, #0x20+var_14
2BC052:  STR             R0, [SP,#0x20+var_20]
2BC054:  MOVS            R0, #0x7C ; '|'
2BC056:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2BC05A:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2BC060)
2BC05C:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2BC05E:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2BC060:  LDR             R0, [R0]; CTheScripts::pActiveScripts
2BC062:  CBZ             R0, loc_2BC0A2
2BC064:  ADD.W           R5, R0, #8
2BC068:  ADR             R1, aGymls; "gymls"
2BC06A:  MOV             R0, R5; char *
2BC06C:  BLX             strcasecmp
2BC070:  CBZ             R0, loc_2BC086
2BC072:  ADR             R1, aGymbike; "gymbike"
2BC074:  MOV             R0, R5; char *
2BC076:  BLX             strcasecmp
2BC07A:  CBZ             R0, loc_2BC086
2BC07C:  ADR             R1, aGymdumb; "gymdumb"
2BC07E:  MOV             R0, R5; char *
2BC080:  BLX             strcasecmp
2BC084:  CBNZ            R0, loc_2BC0A2
2BC086:  VMOV.F32        S0, #10.0
2BC08A:  VLDR            S2, [SP,#0x20+var_14]
2BC08E:  VADD.F32        S2, S2, S0
2BC092:  VSTR            S2, [SP,#0x20+var_C]
2BC096:  VLDR            S2, [SP,#0x20+var_18]
2BC09A:  VADD.F32        S0, S2, S0
2BC09E:  VSTR            S0, [SP,#0x20+var_10]
2BC0A2:  ADD             R3, SP, #0x20+var_18
2BC0A4:  LDR             R2, [SP,#0x20+var_C]
2BC0A6:  LDM             R3, {R0,R1,R3}
2BC0A8:  STRD.W          R2, R3, [R4,#0xC]
2BC0AC:  STRD.W          R1, R0, [R4,#0x14]
2BC0B0:  MOV             R0, R4; this
2BC0B2:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2BC0B6:  MOV             R0, R4; this
2BC0B8:  BLX             j__ZN7CWidget11ManageAlphaEv; CWidget::ManageAlpha(void)
2BC0BC:  ADD             SP, SP, #0x18
2BC0BE:  POP             {R4,R5,R7,PC}
