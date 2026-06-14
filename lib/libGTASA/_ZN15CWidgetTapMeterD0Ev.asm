; =========================================================
; Game Engine Function: _ZN15CWidgetTapMeterD0Ev
; Address            : 0x2C7CFA - 0x2C7D0A
; =========================================================

2C7CFA:  PUSH            {R7,LR}
2C7CFC:  MOV             R7, SP
2C7CFE:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C7D02:  POP.W           {R7,LR}
2C7D06:  B.W             j__ZdlPv; operator delete(void *)
