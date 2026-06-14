; =========================================================
; Game Engine Function: _ZN25CWidgetRegionRhythmSelectD0Ev
; Address            : 0x2C2904 - 0x2C2950
; =========================================================

2C2904:  PUSH            {R4,R5,R7,LR}
2C2906:  ADD             R7, SP, #8
2C2908:  MOV             R4, R0
2C290A:  LDR             R0, =(_ZTV25CWidgetRegionRhythmSelect_ptr - 0x2C2912)
2C290C:  MOV             R5, R4
2C290E:  ADD             R0, PC; _ZTV25CWidgetRegionRhythmSelect_ptr
2C2910:  LDR             R0, [R0]; `vtable for'CWidgetRegionRhythmSelect ...
2C2912:  ADDS            R0, #8
2C2914:  STR.W           R0, [R5],#0xD8
2C2918:  ADD.W           R0, R4, #0xE0; this
2C291C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C2920:  ADD.W           R0, R4, #0xDC; this
2C2924:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C2928:  MOV             R0, R5; this
2C292A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C292E:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2C2934)
2C2930:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2C2932:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2C2934:  ADD.W           R1, R0, #8
2C2938:  MOV             R0, R4
2C293A:  STR.W           R1, [R0],#0x98; this
2C293E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C2942:  MOV             R0, R4; this
2C2944:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C2948:  POP.W           {R4,R5,R7,LR}
2C294C:  B.W             j__ZdlPv; operator delete(void *)
