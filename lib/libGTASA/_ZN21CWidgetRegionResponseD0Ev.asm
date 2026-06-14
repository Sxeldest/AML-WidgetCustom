; =========================================================
; Game Engine Function: _ZN21CWidgetRegionResponseD0Ev
; Address            : 0x2C200E - 0x2C201E
; =========================================================

2C200E:  PUSH            {R7,LR}
2C2010:  MOV             R7, SP
2C2012:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C2016:  POP.W           {R7,LR}
2C201A:  B.W             j__ZdlPv; operator delete(void *)
