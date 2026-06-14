; =========================================================
; Game Engine Function: _ZN23CWidgetSaveNotificationC2EPKcRK14WidgetPosition
; Address            : 0x2C68E8 - 0x2C690A
; =========================================================

2C68E8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CWidgetSaveNotification::CWidgetSaveNotification(char const*, WidgetPosition const&)'
2C68EA:  ADD             R7, SP, #8
2C68EC:  SUB             SP, SP, #8
2C68EE:  MOVS            R4, #0
2C68F0:  MOVS            R3, #4
2C68F2:  STR             R4, [SP,#0x10+var_10]
2C68F4:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C68F8:  LDR             R1, =(_ZTV23CWidgetSaveNotification_ptr - 0x2C6902)
2C68FA:  STRD.W          R4, R4, [R0,#0x90]
2C68FE:  ADD             R1, PC; _ZTV23CWidgetSaveNotification_ptr
2C6900:  LDR             R1, [R1]; `vtable for'CWidgetSaveNotification ...
2C6902:  ADDS            R1, #8
2C6904:  STR             R1, [R0]
2C6906:  ADD             SP, SP, #8
2C6908:  POP             {R4,R6,R7,PC}
