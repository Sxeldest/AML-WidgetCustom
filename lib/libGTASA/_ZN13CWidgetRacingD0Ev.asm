; =========================================================
; Game Engine Function: _ZN13CWidgetRacingD0Ev
; Address            : 0x2BF6E4 - 0x2BF6F4
; =========================================================

2BF6E4:  PUSH            {R7,LR}
2BF6E6:  MOV             R7, SP
2BF6E8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BF6EC:  POP.W           {R7,LR}
2BF6F0:  B.W             j__ZdlPv; operator delete(void *)
