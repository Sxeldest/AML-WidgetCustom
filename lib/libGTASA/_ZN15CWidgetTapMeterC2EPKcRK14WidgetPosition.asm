; =========================================================
; Game Engine Function: _ZN15CWidgetTapMeterC2EPKcRK14WidgetPosition
; Address            : 0x2C7810 - 0x2C7876
; =========================================================

2C7810:  PUSH            {R4,R6,R7,LR}
2C7812:  ADD             R7, SP, #8
2C7814:  SUB             SP, SP, #8
2C7816:  MOVS            R4, #0
2C7818:  MOVS            R3, #6
2C781A:  STR             R4, [SP,#0x10+var_10]
2C781C:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C7820:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2C7830)
2C7822:  MOVW            R3, #0x2400
2C7826:  LDR             R2, =(_ZTV15CWidgetTapMeter_ptr - 0x2C7836)
2C7828:  MOVT            R3, #0x4974
2C782C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2C782E:  STR.W           R3, [R0,#0xB8]
2C7832:  ADD             R2, PC; _ZTV15CWidgetTapMeter_ptr
2C7834:  STR.W           R4, [R0,#0x90]
2C7838:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2C783A:  LDR             R2, [R2]; `vtable for'CWidgetTapMeter ...
2C783C:  VLDR            S2, =1000.0
2C7840:  ADDS            R2, #8
2C7842:  STR             R2, [R0]
2C7844:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2C7846:  VMOV            S0, R1
2C784A:  ADR             R1, dword_2C7880
2C784C:  VLD1.64         {D16-D17}, [R1@128]
2C7850:  ADR             R1, dword_2C7890
2C7852:  VCVT.F32.U32    S0, S0
2C7856:  VLD1.64         {D18-D19}, [R1@128]
2C785A:  ADD.W           R1, R0, #0x98
2C785E:  VST1.32         {D18-D19}, [R1]
2C7862:  ADD.W           R1, R0, #0xA8
2C7866:  VST1.32         {D16-D17}, [R1]
2C786A:  VDIV.F32        S0, S0, S2
2C786E:  VSTR            S0, [R0,#0x94]
2C7872:  ADD             SP, SP, #8
2C7874:  POP             {R4,R6,R7,PC}
