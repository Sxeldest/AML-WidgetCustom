; =========================================================
; Game Engine Function: _ZN19CWidgetRouletteSpinC2Ev
; Address            : 0x2C6640 - 0x2C66A2
; =========================================================

2C6640:  PUSH            {R4-R7,LR}
2C6642:  ADD             R7, SP, #0xC
2C6644:  PUSH.W          {R11}
2C6648:  SUB             SP, SP, #0x28
2C664A:  MOV             R4, SP
2C664C:  BFC.W           R4, #0, #4
2C6650:  MOV             SP, R4
2C6652:  MOV             R4, R0
2C6654:  ADR             R0, dword_2C66B0
2C6656:  VLD1.64         {D16-D17}, [R0@128]
2C665A:  ADD             R2, SP, #0x38+var_28
2C665C:  MOVS            R6, #0
2C665E:  MOV             R0, R4
2C6660:  MOVS            R1, #0
2C6662:  MOVS            R3, #0x14
2C6664:  VST1.64         {D16-D17}, [R2@128]
2C6668:  STR             R6, [SP,#0x38+var_38]
2C666A:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C666E:  LDR             R0, =(_ZTV19CWidgetRouletteSpin_ptr - 0x2C6678)
2C6670:  ADD.W           R5, R4, #0x90
2C6674:  ADD             R0, PC; _ZTV19CWidgetRouletteSpin_ptr
2C6676:  LDR             R0, [R0]; `vtable for'CWidgetRouletteSpin ...
2C6678:  ADDS            R0, #8
2C667A:  STR             R0, [R4]
2C667C:  MOV             R0, R5; this
2C667E:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C6682:  LDR             R2, =(aRoulred - 0x2C668E); "roulred"
2C6684:  MOV             R0, R4; this
2C6686:  MOV             R1, R5; CSprite2d *
2C6688:  MOVS            R3, #1; bool
2C668A:  ADD             R2, PC; "roulred"
2C668C:  STR.W           R6, [R4,#0x94]
2C6690:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C6694:  MOV             R0, R4
2C6696:  SUB.W           R4, R7, #-var_10
2C669A:  MOV             SP, R4
2C669C:  POP.W           {R11}
2C66A0:  POP             {R4-R7,PC}
