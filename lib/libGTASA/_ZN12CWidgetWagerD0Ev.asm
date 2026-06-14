; =========================================================
; Game Engine Function: _ZN12CWidgetWagerD0Ev
; Address            : 0x2C971C - 0x2C972C
; =========================================================

2C971C:  PUSH            {R7,LR}
2C971E:  MOV             R7, SP
2C9720:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C9724:  POP.W           {R7,LR}
2C9728:  B.W             j__ZdlPv; operator delete(void *)
