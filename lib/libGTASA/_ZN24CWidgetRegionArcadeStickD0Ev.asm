; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStickD0Ev
; Address            : 0x2BFE8C - 0x2BFE9C
; =========================================================

2BFE8C:  PUSH            {R7,LR}
2BFE8E:  MOV             R7, SP
2BFE90:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BFE94:  POP.W           {R7,LR}
2BFE98:  B.W             j__ZdlPv; operator delete(void *)
