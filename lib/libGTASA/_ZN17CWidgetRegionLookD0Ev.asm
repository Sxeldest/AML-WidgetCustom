; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLookD0Ev
; Address            : 0x2C1488 - 0x2C1498
; =========================================================

2C1488:  PUSH            {R7,LR}
2C148A:  MOV             R7, SP
2C148C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C1490:  POP.W           {R7,LR}
2C1494:  B.W             j__ZdlPv; operator delete(void *)
