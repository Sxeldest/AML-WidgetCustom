; =========================================================
; Game Engine Function: encode_size
; Address            : 0xC4B90 - 0xC4BAC
; =========================================================

C4B90:  CMP             R0, #0xFB
C4B92:  ITTT LE
C4B94:  STRBLE          R0, [R1]
C4B96:  MOVLE           R0, #1
C4B98:  BXLE            LR
C4B9A:  ORR.W           R2, R0, #0xFC
C4B9E:  STRB            R2, [R1]
C4BA0:  UXTB            R2, R2
C4BA2:  SUBS            R0, R0, R2
C4BA4:  LSRS            R0, R0, #2
C4BA6:  STRB            R0, [R1,#1]
C4BA8:  MOVS            R0, #2
C4BAA:  BX              LR
