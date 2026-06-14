; =========================================================
; Game Engine Function: _ZN14MainMenuScreen10OnSettingsEv
; Address            : 0x29DA2C - 0x29DA4C
; =========================================================

29DA2C:  PUSH            {R7,LR}
29DA2E:  MOV             R7, SP
29DA30:  MOVS            R0, #2
29DA32:  MOVS            R1, #1
29DA34:  BLX             j__Z11AddMenuStat8MenuStati; AddMenuStat(MenuStat,int)
29DA38:  MOVS            R0, #0x58 ; 'X'; unsigned int
29DA3A:  BLX             _Znwj; operator new(uint)
29DA3E:  BLX             j__ZN14SettingsScreenC2Ev; SettingsScreen::SettingsScreen(void)
29DA42:  MOVS            R1, #1
29DA44:  POP.W           {R7,LR}
29DA48:  B.W             sub_19721C
