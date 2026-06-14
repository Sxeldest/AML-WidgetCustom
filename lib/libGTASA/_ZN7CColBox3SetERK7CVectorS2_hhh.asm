; =========================================================
; Game Engine Function: _ZN7CColBox3SetERK7CVectorS2_hhh
; Address            : 0x2D9632 - 0x2D9658
; =========================================================

2D9632:  VLDR            D16, [R1]
2D9636:  LDR             R1, [R1,#8]
2D9638:  STR             R1, [R0,#8]
2D963A:  VSTR            D16, [R0]
2D963E:  LDR             R1, [R2,#8]
2D9640:  VLDR            D16, [R2]
2D9644:  LDRD.W          R2, R12, [SP,#arg_0]
2D9648:  STR             R1, [R0,#0x14]
2D964A:  STRB            R3, [R0,#0x18]
2D964C:  STRB            R2, [R0,#0x19]
2D964E:  STRB.W          R12, [R0,#0x1A]
2D9652:  VSTR            D16, [R0,#0xC]
2D9656:  BX              LR
