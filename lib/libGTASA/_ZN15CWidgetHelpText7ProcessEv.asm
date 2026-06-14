; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText7ProcessEv
; Address            : 0x2B71DE - 0x2B71FC
; =========================================================

2B71DE:  PUSH            {R4,R6,R7,LR}
2B71E0:  ADD             R7, SP, #8
2B71E2:  MOV             R4, R0
2B71E4:  BLX             j__ZN15CWidgetHelpText11UseTopStyleEv; CWidgetHelpText::UseTopStyle(void)
2B71E8:  CMP             R0, #1
2B71EA:  BNE             loc_2B71F4
2B71EC:  MOV             R0, R4; this
2B71EE:  POP.W           {R4,R6,R7,LR}
2B71F2:  B               _ZN15CWidgetHelpText15ProcessTopStyleEv; CWidgetHelpText::ProcessTopStyle(void)
2B71F4:  MOV             R0, R4; this
2B71F6:  POP.W           {R4,R6,R7,LR}
2B71FA:  B               _ZN15CWidgetHelpText21ProcessMidScreenStyleEv; CWidgetHelpText::ProcessMidScreenStyle(void)
