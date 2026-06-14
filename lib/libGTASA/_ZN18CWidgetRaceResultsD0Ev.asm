; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResultsD0Ev
; Address            : 0x2BF1CC - 0x2BF1DC
; =========================================================

2BF1CC:  PUSH            {R7,LR}
2BF1CE:  MOV             R7, SP
2BF1D0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BF1D4:  POP.W           {R7,LR}
2BF1D8:  B.W             j__ZdlPv; operator delete(void *)
