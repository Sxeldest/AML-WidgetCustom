; =========================================================
; Game Engine Function: _ZN17CWidgetVitalStatsD0Ev
; Address            : 0x2C8BC4 - 0x2C8BD4
; =========================================================

2C8BC4:  PUSH            {R7,LR}
2C8BC6:  MOV             R7, SP
2C8BC8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C8BCC:  POP.W           {R7,LR}
2C8BD0:  B.W             j__ZdlPv; operator delete(void *)
