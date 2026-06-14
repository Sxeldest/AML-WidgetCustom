; =========================================================
; Game Engine Function: _ZN7CWidget16GetPinchDistanceEv
; Address            : 0x2B38A4 - 0x2B3958
; =========================================================

2B38A4:  PUSH            {R4,R6,R7,LR}
2B38A6:  ADD             R7, SP, #8
2B38A8:  SUB             SP, SP, #0x10
2B38AA:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B38B4)
2B38AC:  MOVS            R4, #0
2B38AE:  LDR             R1, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2B38B6)
2B38B0:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B38B2:  ADD             R1, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2B38B4:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2B38B6:  LDR             R1, [R1]; CWidget::m_pPinchZoomWidget ...
2B38B8:  LDM.W           R0, {R2,R3,R12}; CWidget::m_pInitialTouchWidget
2B38BC:  LDR             R0, [R1]; CWidget::m_pPinchZoomWidget
2B38BE:  MOVS            R1, #0
2B38C0:  CMP             R0, R2
2B38C2:  ITT NE
2B38C4:  MOVNE           R4, #1
2B38C6:  MOVNE.W         R1, #0xFFFFFFFF
2B38CA:  CMP             R0, R3
2B38CC:  IT EQ
2B38CE:  MOVEQ           R1, R4
2B38D0:  MOVS            R4, #1
2B38D2:  CMP             R0, R2
2B38D4:  IT NE
2B38D6:  MOVNE.W         R4, #0xFFFFFFFF
2B38DA:  CMP             R0, R3
2B38DC:  IT NE
2B38DE:  MOVNE.W         R4, #0xFFFFFFFF
2B38E2:  CMP             R0, R12
2B38E4:  BNE             loc_2B38F4
2B38E6:  ADDS            R2, R1, #1
2B38E8:  BEQ             loc_2B38F2
2B38EA:  ADDS            R2, R4, #1
2B38EC:  IT EQ
2B38EE:  MOVEQ           R4, #2
2B38F0:  B               loc_2B38F4
2B38F2:  MOVS            R1, #2
2B38F4:  LDR             R2, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2B38FA)
2B38F6:  ADD             R2, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2B38F8:  LDR             R2, [R2]; CWidget::m_pInitialTouchWidget ...
2B38FA:  LDR             R2, [R2,#(dword_6FA298 - 0x6FA28C)]
2B38FC:  CMP             R0, R2
2B38FE:  BNE             loc_2B390E
2B3900:  ADDS            R0, R1, #1
2B3902:  BEQ             loc_2B390C
2B3904:  ADDS            R0, R4, #1
2B3906:  IT EQ
2B3908:  MOVEQ           R4, #3
2B390A:  B               loc_2B390E
2B390C:  MOVS            R1, #3; int
2B390E:  VLDR            S0, =0.0
2B3912:  ADDS            R0, R4, #1
2B3914:  BEQ             loc_2B3950
2B3916:  ADDS            R0, R1, #1
2B3918:  BEQ             loc_2B3950
2B391A:  ADD             R0, SP, #0x18+var_10; this
2B391C:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B3920:  MOV             R0, SP; this
2B3922:  MOV             R1, R4; int
2B3924:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B3928:  VLDR            S0, [SP,#0x18+var_18]
2B392C:  VLDR            S4, [SP,#0x18+var_10]
2B3930:  VLDR            S2, [SP,#0x18+var_14]
2B3934:  VLDR            S6, [SP,#0x18+var_C]
2B3938:  VSUB.F32        S0, S4, S0
2B393C:  VSUB.F32        S2, S6, S2
2B3940:  VMUL.F32        S0, S0, S0
2B3944:  VMUL.F32        S2, S2, S2
2B3948:  VADD.F32        S0, S0, S2
2B394C:  VSQRT.F32       S0, S0
2B3950:  VMOV            R0, S0
2B3954:  ADD             SP, SP, #0x10
2B3956:  POP             {R4,R6,R7,PC}
