; =========================================================
; Game Engine Function: _ZN23CWidgetSaveNotificationD0Ev
; Address            : 0x2C6BC4 - 0x2C6BD4
; =========================================================

2C6BC4:  PUSH            {R7,LR}
2C6BC6:  MOV             R7, SP
2C6BC8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C6BCC:  POP.W           {R7,LR}
2C6BD0:  B.W             j__ZdlPv; operator delete(void *)
