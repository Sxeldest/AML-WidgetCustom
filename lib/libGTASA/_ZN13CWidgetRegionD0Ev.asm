; =========================================================
; Game Engine Function: _ZN13CWidgetRegionD0Ev
; Address            : 0x2BFB80 - 0x2BFB90
; =========================================================

2BFB80:  PUSH            {R7,LR}
2BFB82:  MOV             R7, SP
2BFB84:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BFB88:  POP.W           {R7,LR}
2BFB8C:  B.W             j__ZdlPv; operator delete(void *)
