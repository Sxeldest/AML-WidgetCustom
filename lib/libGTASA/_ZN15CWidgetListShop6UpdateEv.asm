; =========================================================
; Game Engine Function: _ZN15CWidgetListShop6UpdateEv
; Address            : 0x2BAE0E - 0x2BAE88
; =========================================================

2BAE0E:  PUSH            {R4,R6,R7,LR}
2BAE10:  ADD             R7, SP, #8
2BAE12:  MOVS            R1, #1; bool
2BAE14:  MOV             R4, R0
2BAE16:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2BAE1A:  MOV             R0, R4; this
2BAE1C:  BLX             j__ZN11CWidgetList6UpdateEv; CWidgetList::Update(void)
2BAE20:  VMOV.F32        S0, #-2.0
2BAE24:  VLDR            S6, [R4,#0x24]
2BAE28:  VMOV.F32        S2, #2.0
2BAE2C:  VLDR            S4, [R4,#0x20]
2BAE30:  VLDR            S10, [R4,#0x2C]
2BAE34:  ADD.W           R0, R4, #0x11C00
2BAE38:  VLDR            S8, [R4,#0x28]
2BAE3C:  ADDS            R0, #0xB4
2BAE3E:  VADD.F32        S6, S6, S0
2BAE42:  VADD.F32        S4, S4, S2
2BAE46:  VADD.F32        S2, S10, S2
2BAE4A:  VADD.F32        S0, S8, S0
2BAE4E:  VLDR            S8, [R0]
2BAE52:  ADD.W           R0, R4, #0x10000
2BAE56:  ADD.W           R0, R0, #0x1CA0
2BAE5A:  VADD.F32        S6, S8, S6
2BAE5E:  VSTR            S4, [R0]
2BAE62:  ADD.W           R0, R4, #0x11800
2BAE66:  ADD.W           R0, R0, #0x4A8
2BAE6A:  VSUB.F32        S2, S2, S8
2BAE6E:  VSTR            S0, [R0]
2BAE72:  ADD.W           R0, R4, #0x11C00
2BAE76:  ADDS            R0, #0xA4
2BAE78:  VSTR            S6, [R0]
2BAE7C:  ADD.W           R0, R4, #0x11C00
2BAE80:  ADDS            R0, #0xAC
2BAE82:  VSTR            S2, [R0]
2BAE86:  POP             {R4,R6,R7,PC}
