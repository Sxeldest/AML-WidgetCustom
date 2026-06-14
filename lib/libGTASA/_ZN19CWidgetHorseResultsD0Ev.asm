; =========================================================
; Game Engine Function: _ZN19CWidgetHorseResultsD0Ev
; Address            : 0x2B905C - 0x2B906C
; =========================================================

2B905C:  PUSH            {R7,LR}
2B905E:  MOV             R7, SP
2B9060:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B9064:  POP.W           {R7,LR}
2B9068:  B.W             j__ZdlPv; operator delete(void *)
