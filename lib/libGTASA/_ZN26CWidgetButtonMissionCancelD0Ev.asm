; =========================================================
; Game Engine Function: _ZN26CWidgetButtonMissionCancelD0Ev
; Address            : 0x2B6968 - 0x2B6990
; =========================================================

2B6968:  PUSH            {R4,R6,R7,LR}
2B696A:  ADD             R7, SP, #8
2B696C:  MOV             R4, R0
2B696E:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B6974)
2B6970:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B6972:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B6974:  ADD.W           R1, R0, #8
2B6978:  MOV             R0, R4
2B697A:  STR.W           R1, [R0],#0x98; this
2B697E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6982:  MOV             R0, R4; this
2B6984:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B6988:  POP.W           {R4,R6,R7,LR}
2B698C:  B.W             j__ZdlPv; operator delete(void *)
