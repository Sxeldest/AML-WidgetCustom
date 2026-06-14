; =========================================================
; Game Engine Function: _ZN13CWidgetRacingC2EPKcRK14WidgetPosition
; Address            : 0x2BF1F0 - 0x2BF21E
; =========================================================

2BF1F0:  PUSH            {R4,R6,R7,LR}
2BF1F2:  ADD             R7, SP, #8
2BF1F4:  SUB             SP, SP, #8
2BF1F6:  MOVS            R4, #0
2BF1F8:  MOVS            R3, #0
2BF1FA:  STR             R4, [SP,#0x10+var_10]
2BF1FC:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2BF200:  LDR             R1, =(_ZTV13CWidgetRacing_ptr - 0x2BF20E)
2BF202:  VMOV.I32        Q8, #0
2BF206:  ADD.W           R2, R0, #0x90
2BF20A:  ADD             R1, PC; _ZTV13CWidgetRacing_ptr
2BF20C:  VST1.32         {D16-D17}, [R2]
2BF210:  LDR             R1, [R1]; `vtable for'CWidgetRacing ...
2BF212:  STR.W           R4, [R0,#0xA0]
2BF216:  ADDS            R1, #8
2BF218:  STR             R1, [R0]
2BF21A:  ADD             SP, SP, #8
2BF21C:  POP             {R4,R6,R7,PC}
