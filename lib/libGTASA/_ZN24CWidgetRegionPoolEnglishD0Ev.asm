; =========================================================
; Game Engine Function: _ZN24CWidgetRegionPoolEnglishD0Ev
; Address            : 0x2C1E28 - 0x2C1E38
; =========================================================

2C1E28:  PUSH            {R7,LR}
2C1E2A:  MOV             R7, SP
2C1E2C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C1E30:  POP.W           {R7,LR}
2C1E34:  B.W             j__ZdlPv; operator delete(void *)
