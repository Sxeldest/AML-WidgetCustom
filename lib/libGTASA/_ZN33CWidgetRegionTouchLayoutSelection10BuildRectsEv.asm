; =========================================================
; Game Engine Function: _ZN33CWidgetRegionTouchLayoutSelection10BuildRectsEv
; Address            : 0x2C54DC - 0x2C554A
; =========================================================

2C54DC:  VLDR            S0, [R0,#0x24]
2C54E0:  VMOV.F32        S4, #0.5625
2C54E4:  VLDR            S2, [R0,#0x2C]
2C54E8:  VLDR            S6, =0.15
2C54EC:  VSUB.F32        S0, S0, S2
2C54F0:  VLDR            S8, =0.0
2C54F4:  LDR             R1, [R0,#0x20]
2C54F6:  LDR             R2, [R0,#0x28]
2C54F8:  STR.W           R1, [R0,#0x98]
2C54FC:  STR.W           R2, [R0,#0xA0]
2C5500:  STR.W           R2, [R0,#0xB4]
2C5504:  STR.W           R1, [R0,#0xAC]
2C5508:  VABS.F32        S0, S0
2C550C:  VMUL.F32        S6, S0, S6
2C5510:  VMUL.F32        S8, S0, S8
2C5514:  VMUL.F32        S4, S0, S4
2C5518:  VADD.F32        S0, S2, S0
2C551C:  VADD.F32        S6, S2, S6
2C5520:  VADD.F32        S8, S2, S8
2C5524:  VADD.F32        S4, S2, S4
2C5528:  VSTR            S6, [R0,#0x9C]
2C552C:  VSTR            S8, [R0,#0xA4]
2C5530:  VSTR            S4, [R0,#0xB0]
2C5534:  VSTR            S6, [R0,#0xB8]
2C5538:  STR.W           R2, [R0,#0xD0]
2C553C:  VSTR            S0, [R0,#0xCC]
2C5540:  VSTR            S4, [R0,#0xD4]
2C5544:  STR.W           R1, [R0,#0xC8]
2C5548:  BX              LR
