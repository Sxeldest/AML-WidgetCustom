; =========================================================
; Game Engine Function: encode_size
; Address            : 0x1A2950 - 0x1A296C
; =========================================================

1A2950:  CMP             R0, #0xFB
1A2952:  ITTT LE
1A2954:  STRBLE          R0, [R1]
1A2956:  MOVLE           R0, #1
1A2958:  BXLE            LR
1A295A:  ORR.W           R2, R0, #0xFC
1A295E:  STRB            R2, [R1]
1A2960:  UXTB            R2, R2
1A2962:  SUBS            R0, R0, R2
1A2964:  LSRS            R0, R0, #2
1A2966:  STRB            R0, [R1,#1]
1A2968:  MOVS            R0, #2
1A296A:  BX              LR
