; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook9IsTouchedEP9CVector2D
; Address            : 0x2C0FCC - 0x2C10D8
; =========================================================

2C0FCC:  PUSH            {R4-R7,LR}
2C0FCE:  ADD             R7, SP, #0xC
2C0FD0:  PUSH.W          {R11}
2C0FD4:  SUB             SP, SP, #8
2C0FD6:  MOV             R5, R0
2C0FD8:  MOV.W           R0, #0xFFFFFFFF; int
2C0FDC:  MOV             R4, R1
2C0FDE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C0FE2:  CBZ             R0, loc_2C0FFC
2C0FE4:  MOV.W           R0, #0xFFFFFFFF; int
2C0FE8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2C0FEC:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
2C0FF0:  LDRB.W          R6, [R0,#0x145]
2C0FF4:  CMP             R6, #0
2C0FF6:  IT NE
2C0FF8:  MOVNE           R6, #1
2C0FFA:  B               loc_2C0FFE
2C0FFC:  MOVS            R6, #0
2C0FFE:  MOVS            R0, #0x1C
2C1000:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C1004:  CMP             R0, #1
2C1006:  BNE             loc_2C1046
2C1008:  MOVS            R0, #0x1D
2C100A:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C100E:  CMP             R0, #1
2C1010:  BNE             loc_2C1046
2C1012:  CMP             R4, #0
2C1014:  BEQ             loc_2C10D4
2C1016:  MOVS            R0, #0x1C
2C1018:  MOV             R1, R4
2C101A:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C101E:  ADDS            R1, R4, #4
2C1020:  MOVS            R0, #0x1D
2C1022:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C1026:  VLDR            S0, =128.0
2C102A:  MOVS            R0, #1
2C102C:  VLDR            S2, [R4]
2C1030:  VLDR            S4, [R4,#4]
2C1034:  VMUL.F32        S2, S2, S0
2C1038:  VMUL.F32        S0, S4, S0
2C103C:  VSTR            S2, [R4]
2C1040:  VSTR            S0, [R4,#4]
2C1044:  B               loc_2C10CC
2C1046:  CBZ             R4, loc_2C10A2
2C1048:  LDRB.W          R0, [R5,#0x90]
2C104C:  MOVS            R1, #0
2C104E:  CMP             R0, #0
2C1050:  IT EQ
2C1052:  MOVEQ           R1, #1
2C1054:  ORRS.W          R0, R6, R1
2C1058:  BEQ             loc_2C10A2
2C105A:  LDR             R0, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2C1060)
2C105C:  ADD             R0, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2C105E:  LDR             R0, [R0]; CWidget::m_pPinchZoomWidget ...
2C1060:  LDR             R0, [R0]; CWidget::m_pPinchZoomWidget
2C1062:  CMP             R5, R0
2C1064:  BEQ             loc_2C10A2
2C1066:  LDR             R1, [R5,#0x78]; int
2C1068:  MOV             R0, SP; this
2C106A:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2C106E:  VMOV.F32        S0, #5.0
2C1072:  VLDR            S4, [SP,#0x18+var_14]
2C1076:  VLDR            S2, [SP,#0x18+var_18]
2C107A:  VLDR            S6, =-128.0
2C107E:  VMUL.F32        S4, S4, S0
2C1082:  VMUL.F32        S0, S2, S0
2C1086:  VLDR            S2, =128.0
2C108A:  VMAX.F32        D16, D2, D3
2C108E:  VMAX.F32        D17, D0, D3
2C1092:  VMIN.F32        D0, D16, D1
2C1096:  VMIN.F32        D1, D17, D1
2C109A:  VSTR            S2, [R4]
2C109E:  VSTR            S0, [R4,#4]
2C10A2:  LDR             R1, =(_ZN7CWidget18m_pPinchZoomWidgetE_ptr - 0x2C10AA)
2C10A4:  LDR             R0, =(_ZN7CWidget21m_pInitialTouchWidgetE_ptr - 0x2C10AE)
2C10A6:  ADD             R1, PC; _ZN7CWidget18m_pPinchZoomWidgetE_ptr
2C10A8:  LDR             R2, [R5,#0x78]
2C10AA:  ADD             R0, PC; _ZN7CWidget21m_pInitialTouchWidgetE_ptr
2C10AC:  LDR             R1, [R1]; CWidget::m_pPinchZoomWidget ...
2C10AE:  LDR             R0, [R0]; CWidget::m_pInitialTouchWidget ...
2C10B0:  LDR             R1, [R1]; CWidget::m_pPinchZoomWidget
2C10B2:  LDR.W           R0, [R0,R2,LSL#2]
2C10B6:  MOVS            R2, #0
2C10B8:  CMP             R5, R1
2C10BA:  MOV.W           R1, #0
2C10BE:  IT NE
2C10C0:  MOVNE           R1, #1
2C10C2:  CMP             R5, R0
2C10C4:  IT EQ
2C10C6:  MOVEQ           R2, #1
2C10C8:  AND.W           R0, R2, R1
2C10CC:  ADD             SP, SP, #8
2C10CE:  POP.W           {R11}
2C10D2:  POP             {R4-R7,PC}
2C10D4:  MOVS            R0, #1
2C10D6:  B               loc_2C10CC
