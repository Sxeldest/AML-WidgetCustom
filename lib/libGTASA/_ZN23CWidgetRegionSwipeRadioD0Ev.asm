; =========================================================
; Game Engine Function: _ZN23CWidgetRegionSwipeRadioD0Ev
; Address            : 0x2C52F4 - 0x2C5304
; =========================================================

2C52F4:  PUSH            {R7,LR}
2C52F6:  MOV             R7, SP
2C52F8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C52FC:  POP.W           {R7,LR}
2C5300:  B.W             j__ZdlPv; operator delete(void *)
