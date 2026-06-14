; =========================================================
; Game Engine Function: _ZN7CColBoxaSERKS_
; Address            : 0x2D9658 - 0x2D967A
; =========================================================

2D9658:  VLDR            D16, [R1]
2D965C:  LDR             R2, [R1,#8]
2D965E:  STR             R2, [R0,#8]
2D9660:  VSTR            D16, [R0]
2D9664:  VLDR            D16, [R1,#0xC]
2D9668:  LDR             R2, [R1,#0x14]
2D966A:  STR             R2, [R0,#0x14]
2D966C:  VSTR            D16, [R0,#0xC]
2D9670:  LDRB            R2, [R1,#0x1A]
2D9672:  LDRH            R1, [R1,#0x18]
2D9674:  STRB            R2, [R0,#0x1A]
2D9676:  STRH            R1, [R0,#0x18]
2D9678:  BX              LR
