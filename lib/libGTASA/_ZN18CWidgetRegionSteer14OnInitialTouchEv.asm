; =========================================================
; Game Engine Function: _ZN18CWidgetRegionSteer14OnInitialTouchEv
; Address            : 0x2C32AC - 0x2C3316
; =========================================================

2C32AC:  PUSH            {R4,R6,R7,LR}
2C32AE:  ADD             R7, SP, #8
2C32B0:  MOV             R4, R0
2C32B2:  BLX             j__ZN7CWidget14OnInitialTouchEv; CWidget::OnInitialTouch(void)
2C32B6:  LDR             R0, =(RsGlobal_ptr - 0x2C32C0)
2C32B8:  VLDR            S4, =640.0
2C32BC:  ADD             R0, PC; RsGlobal_ptr
2C32BE:  LDR             R0, [R0]; RsGlobal
2C32C0:  VLDR            S0, [R0,#4]
2C32C4:  VLDR            S2, [R0,#8]
2C32C8:  VCVT.F32.S32    S0, S0
2C32CC:  LDR             R0, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2C32D6)
2C32CE:  VLDR            S6, [R4,#0x90]
2C32D2:  ADD             R0, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2C32D4:  LDR             R1, [R4,#0x78]
2C32D6:  LDR             R0, [R0]; CWidget::m_vecTouchAnchor ...
2C32D8:  ADD.W           R0, R0, R1,LSL#3
2C32DC:  VDIV.F32        S0, S0, S4
2C32E0:  VLDR            S4, [R4,#0x14]
2C32E4:  VCVT.F32.S32    S2, S2
2C32E8:  VMUL.F32        S0, S4, S0
2C32EC:  VLDR            S4, [R0]
2C32F0:  VMUL.F32        S0, S6, S0
2C32F4:  VLDR            S6, [R0,#4]
2C32F8:  VMAX.F32        D2, D2, D0
2C32FC:  VSUB.F32        S0, S2, S0
2C3300:  VSTR            S4, [R4,#0x98]
2C3304:  VMIN.F32        D0, D3, D0
2C3308:  VSTR            S0, [R4,#0x9C]
2C330C:  VSTR            S4, [R4,#0xA0]
2C3310:  VSTR            S0, [R4,#0xA4]
2C3314:  POP             {R4,R6,R7,PC}
