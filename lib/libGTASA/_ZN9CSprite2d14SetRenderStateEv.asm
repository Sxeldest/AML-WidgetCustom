; =========================================================
; Game Engine Function: _ZN9CSprite2d14SetRenderStateEv
; Address            : 0x5C910C - 0x5C911E
; =========================================================

5C910C:  LDR             R0, [R0]
5C910E:  CMP             R0, #0
5C9110:  ITTEE NE
5C9112:  LDRNE           R1, [R0]
5C9114:  MOVNE           R0, #1
5C9116:  MOVEQ           R0, #1
5C9118:  MOVEQ           R1, #0
5C911A:  B.W             sub_192888
