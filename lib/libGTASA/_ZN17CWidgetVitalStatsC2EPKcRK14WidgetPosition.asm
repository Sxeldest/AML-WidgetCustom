; =========================================================
; Game Engine Function: _ZN17CWidgetVitalStatsC2EPKcRK14WidgetPosition
; Address            : 0x2C84B0 - 0x2C84D4
; =========================================================

2C84B0:  PUSH            {R7,LR}
2C84B2:  MOV             R7, SP
2C84B4:  SUB             SP, SP, #8
2C84B6:  MOVS            R3, #0
2C84B8:  STR             R3, [SP,#0x10+var_10]
2C84BA:  MOVS            R3, #0
2C84BC:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C84C0:  LDR             R1, =(_ZTV17CWidgetVitalStats_ptr - 0x2C84CC)
2C84C2:  MOV.W           R2, #0x45000000
2C84C6:  STR             R2, [R0,#0x1C]
2C84C8:  ADD             R1, PC; _ZTV17CWidgetVitalStats_ptr
2C84CA:  LDR             R1, [R1]; `vtable for'CWidgetVitalStats ...
2C84CC:  ADDS            R1, #8
2C84CE:  STR             R1, [R0]
2C84D0:  ADD             SP, SP, #8
2C84D2:  POP             {R7,PC}
