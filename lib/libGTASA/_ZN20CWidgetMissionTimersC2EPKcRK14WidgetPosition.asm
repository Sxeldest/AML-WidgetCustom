; =========================================================
; Game Engine Function: _ZN20CWidgetMissionTimersC2EPKcRK14WidgetPosition
; Address            : 0x2BBFD0 - 0x2BBFEE
; =========================================================

2BBFD0:  PUSH            {R7,LR}
2BBFD2:  MOV             R7, SP
2BBFD4:  SUB             SP, SP, #8
2BBFD6:  MOVS            R3, #0
2BBFD8:  STR             R3, [SP,#0x10+var_10]
2BBFDA:  MOVS            R3, #4
2BBFDC:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2BBFE0:  LDR             R1, =(_ZTV20CWidgetMissionTimers_ptr - 0x2BBFE6)
2BBFE2:  ADD             R1, PC; _ZTV20CWidgetMissionTimers_ptr
2BBFE4:  LDR             R1, [R1]; `vtable for'CWidgetMissionTimers ...
2BBFE6:  ADDS            R1, #8
2BBFE8:  STR             R1, [R0]
2BBFEA:  ADD             SP, SP, #8
2BBFEC:  POP             {R7,PC}
