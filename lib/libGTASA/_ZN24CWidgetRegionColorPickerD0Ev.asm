; =========================================================
; Game Engine Function: _ZN24CWidgetRegionColorPickerD0Ev
; Address            : 0x2BFFF0 - 0x2C0000
; =========================================================

2BFFF0:  PUSH            {R7,LR}
2BFFF2:  MOV             R7, SP
2BFFF4:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BFFF8:  POP.W           {R7,LR}
2BFFFC:  B.W             j__ZdlPv; operator delete(void *)
