; =========================================================
; Game Engine Function: _ZN23CWidgetButtonHydraulicsD0Ev
; Address            : 0x2B58F8 - 0x2B5934
; =========================================================

2B58F8:  PUSH            {R4,R6,R7,LR}
2B58FA:  ADD             R7, SP, #8
2B58FC:  MOV             R4, R0
2B58FE:  LDR             R0, =(_ZTV23CWidgetButtonHydraulics_ptr - 0x2B5904)
2B5900:  ADD             R0, PC; _ZTV23CWidgetButtonHydraulics_ptr
2B5902:  LDR             R0, [R0]; `vtable for'CWidgetButtonHydraulics ...
2B5904:  ADD.W           R1, R0, #8
2B5908:  MOV             R0, R4
2B590A:  STR.W           R1, [R0],#0xC8; this
2B590E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5912:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5918)
2B5914:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5916:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5918:  ADD.W           R1, R0, #8
2B591C:  MOV             R0, R4
2B591E:  STR.W           R1, [R0],#0x98; this
2B5922:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5926:  MOV             R0, R4; this
2B5928:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B592C:  POP.W           {R4,R6,R7,LR}
2B5930:  B.W             j__ZdlPv; operator delete(void *)
