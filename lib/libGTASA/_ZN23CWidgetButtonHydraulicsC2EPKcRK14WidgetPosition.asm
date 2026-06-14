; =========================================================
; Game Engine Function: _ZN23CWidgetButtonHydraulicsC2EPKcRK14WidgetPosition
; Address            : 0x2B53C4 - 0x2B542A
; =========================================================

2B53C4:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetButtonHydraulics::CWidgetButtonHydraulics(char const*, WidgetPosition const&)'
2B53C6:  ADD             R7, SP, #0xC
2B53C8:  PUSH.W          {R11}
2B53CC:  SUB             SP, SP, #8
2B53CE:  MOV             R4, R0
2B53D0:  MOVS            R0, #0x55 ; 'U'
2B53D2:  MOVS            R6, #0
2B53D4:  MOVS            R3, #1
2B53D6:  STRD.W          R6, R0, [SP,#0x18+var_18]
2B53DA:  MOV             R0, R4
2B53DC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B53E0:  LDR             R0, =(_ZTV23CWidgetButtonHydraulics_ptr - 0x2B53EA)
2B53E2:  ADD.W           R5, R4, #0xC8
2B53E6:  ADD             R0, PC; _ZTV23CWidgetButtonHydraulics_ptr
2B53E8:  LDR             R0, [R0]; `vtable for'CWidgetButtonHydraulics ...
2B53EA:  ADDS            R0, #8
2B53EC:  STR             R0, [R4]
2B53EE:  MOV             R0, R5; this
2B53F0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2B53F4:  VMOV.I32        Q8, #0
2B53F8:  ADD.W           R0, R4, #0xB8
2B53FC:  ADR             R2, aLock; "lock"
2B53FE:  MOV             R1, R5; CSprite2d *
2B5400:  MOVS            R3, #1; bool
2B5402:  VST1.32         {D16-D17}, [R0]
2B5406:  MOV             R0, #0x40490FDB
2B540E:  STR.W           R6, [R4,#0xA8]
2B5412:  STRH.W          R6, [R4,#0xAC]
2B5416:  STRD.W          R0, R0, [R4,#0xB0]
2B541A:  MOV             R0, R4; this
2B541C:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2B5420:  MOV             R0, R4
2B5422:  ADD             SP, SP, #8
2B5424:  POP.W           {R11}
2B5428:  POP             {R4-R7,PC}
