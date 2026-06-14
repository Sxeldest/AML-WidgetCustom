; =========================================================
; Game Engine Function: _ZN20CWidgetMissionTimersD0Ev
; Address            : 0x2BCA38 - 0x2BCA48
; =========================================================

2BCA38:  PUSH            {R7,LR}
2BCA3A:  MOV             R7, SP
2BCA3C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BCA40:  POP.W           {R7,LR}
2BCA44:  B.W             j__ZdlPv; operator delete(void *)
