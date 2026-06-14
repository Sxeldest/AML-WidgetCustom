; =========================================================
; Game Engine Function: _ZN10CWidgetMapD0Ev
; Address            : 0x2BBFB4 - 0x2BBFC4
; =========================================================

2BBFB4:  PUSH            {R7,LR}
2BBFB6:  MOV             R7, SP
2BBFB8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BBFBC:  POP.W           {R7,LR}
2BBFC0:  B.W             j__ZdlPv; operator delete(void *)
