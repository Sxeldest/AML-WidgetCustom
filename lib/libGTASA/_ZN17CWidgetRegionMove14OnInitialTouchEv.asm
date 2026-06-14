; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove14OnInitialTouchEv
; Address            : 0x2C1AE0 - 0x2C1B4A
; =========================================================

2C1AE0:  PUSH            {R4,R6,R7,LR}
2C1AE2:  ADD             R7, SP, #8
2C1AE4:  MOV             R4, R0
2C1AE6:  BLX             j__ZN7CWidget14OnInitialTouchEv; CWidget::OnInitialTouch(void)
2C1AEA:  LDR             R0, =(RsGlobal_ptr - 0x2C1AF4)
2C1AEC:  VLDR            S4, =640.0
2C1AF0:  ADD             R0, PC; RsGlobal_ptr
2C1AF2:  LDR             R0, [R0]; RsGlobal
2C1AF4:  VLDR            S0, [R0,#4]
2C1AF8:  VLDR            S2, [R0,#8]
2C1AFC:  VCVT.F32.S32    S0, S0
2C1B00:  LDR             R0, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2C1B0A)
2C1B02:  VLDR            S6, [R4,#0x94]
2C1B06:  ADD             R0, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2C1B08:  LDR             R1, [R4,#0x78]
2C1B0A:  LDR             R0, [R0]; CWidget::m_vecTouchAnchor ...
2C1B0C:  ADD.W           R0, R0, R1,LSL#3
2C1B10:  VDIV.F32        S0, S0, S4
2C1B14:  VLDR            S4, [R4,#0x14]
2C1B18:  VCVT.F32.S32    S2, S2
2C1B1C:  VMUL.F32        S0, S4, S0
2C1B20:  VLDR            S4, [R0]
2C1B24:  VMUL.F32        S0, S6, S0
2C1B28:  VLDR            S6, [R0,#4]
2C1B2C:  VMAX.F32        D2, D2, D0
2C1B30:  VSUB.F32        S0, S2, S0
2C1B34:  VSTR            S4, [R4,#0x9C]
2C1B38:  VMIN.F32        D0, D3, D0
2C1B3C:  VSTR            S0, [R4,#0xA0]
2C1B40:  VSTR            S4, [R4,#0xA4]
2C1B44:  VSTR            S0, [R4,#0xA8]
2C1B48:  POP             {R4,R6,R7,PC}
