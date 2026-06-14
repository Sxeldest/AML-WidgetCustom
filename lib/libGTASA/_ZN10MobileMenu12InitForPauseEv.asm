; =========================================================
; Game Engine Function: _ZN10MobileMenu12InitForPauseEv
; Address            : 0x29AD38 - 0x29ADD8
; =========================================================

29AD38:  PUSH            {R4,R5,R7,LR}
29AD3A:  ADD             R7, SP, #8
29AD3C:  MOV             R4, R0
29AD3E:  LDR             R0, =(AudioEngine_ptr - 0x29AD48)
29AD40:  MOVS            R1, #0
29AD42:  MOVS            R2, #0; float
29AD44:  ADD             R0, PC; AudioEngine_ptr
29AD46:  STRB.W          R1, [R4,#0x55]
29AD4A:  MOVS            R1, #0; int
29AD4C:  MOV.W           R3, #0x3F800000; float
29AD50:  LDR             R5, [R0]; AudioEngine
29AD52:  MOV             R0, R5; this
29AD54:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29AD58:  MOV             R0, R5; this
29AD5A:  BLX             j__ZN12CAudioEngine7ServiceEv; CAudioEngine::Service(void)
29AD5E:  BLX             j__Z21Menu_SwitchOnFromGamev; Menu_SwitchOnFromGame(void)
29AD62:  BLX             j__Z17Menu_MapInitPausev; Menu_MapInitPause(void)
29AD66:  MOV             R0, R4; this
29AD68:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29AD6C:  MOVS            R0, #0x58 ; 'X'; unsigned int
29AD6E:  BLX             _Znwj; operator new(uint)
29AD72:  MOVS            R1, #1; bool
29AD74:  MOVS            R2, #1; bool
29AD76:  MOV             R5, R0
29AD78:  BLX             j__ZN10FlowScreenC2Ebb; FlowScreen::FlowScreen(bool,bool)
29AD7C:  LDR             R0, =(_ZTV14MainMenuScreen_ptr - 0x29AD82)
29AD7E:  ADD             R0, PC; _ZTV14MainMenuScreen_ptr
29AD80:  LDR             R0, [R0]; `vtable for'MainMenuScreen ...
29AD82:  ADDS            R0, #8
29AD84:  STR             R0, [R5]
29AD86:  MOV             R0, R5; this
29AD88:  BLX             j__ZN14MainMenuScreen11AddAllItemsEv; MainMenuScreen::AddAllItems(void)
29AD8C:  LDR             R0, [R4,#0x2C]
29AD8E:  CMP             R0, #0
29AD90:  ITT NE
29AD92:  MOVNE           R0, R4; this
29AD94:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29AD98:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x29ADA0)
29AD9A:  STR             R5, [R4,#0x2C]
29AD9C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
29AD9E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
29ADA0:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
29ADA4:  CMP             R0, #0
29ADA6:  IT EQ
29ADA8:  POPEQ           {R4,R5,R7,PC}
29ADAA:  LDR             R1, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x29ADB0)
29ADAC:  ADD             R1, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
29ADAE:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState ...
29ADB0:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState
29ADB2:  SUBS            R1, #1
29ADB4:  CMP             R1, #2
29ADB6:  BCC             locret_29ADD6
29ADB8:  VLDR            S0, =0.66
29ADBC:  VLDR            S2, [R0,#0x44]
29ADC0:  VCMPE.F32       S2, S0
29ADC4:  VMRS            APSR_nzcv, FPSCR
29ADC8:  ITTTT GT
29ADCA:  MOVGT           R0, #1
29ADCC:  STRBGT.W        R0, [R4,#0x6D]
29ADD0:  MOVGT.W         R0, #0x3F800000
29ADD4:  STRGT           R0, [R5,#8]
29ADD6:  POP             {R4,R5,R7,PC}
