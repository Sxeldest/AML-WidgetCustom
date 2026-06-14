; =========================================================
; Game Engine Function: _ZN9CPathFind24SetPathsNeededAtPositionERK7CVector
; Address            : 0x319580 - 0x31959A
; =========================================================

319580:  LDR             R0, =(unk_7AEDF8 - 0x31958C)
319582:  LDR             R2, =(byte_7AEE04 - 0x319590)
319584:  VLDR            D16, [R1]
319588:  ADD             R0, PC; unk_7AEDF8
31958A:  LDR             R1, [R1,#8]
31958C:  ADD             R2, PC; byte_7AEE04
31958E:  STR             R1, [R0,#(dword_7AEE00 - 0x7AEDF8)]
319590:  VSTR            D16, [R0]
319594:  MOVS            R0, #1
319596:  STRB            R0, [R2]
319598:  BX              LR
