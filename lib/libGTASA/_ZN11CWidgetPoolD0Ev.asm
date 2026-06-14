; =========================================================
; Game Engine Function: _ZN11CWidgetPoolD0Ev
; Address            : 0x2BE9EC - 0x2BE9FC
; =========================================================

2BE9EC:  PUSH            {R7,LR}
2BE9EE:  MOV             R7, SP
2BE9F0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BE9F4:  POP.W           {R7,LR}
2BE9F8:  B.W             j__ZdlPv; operator delete(void *)
