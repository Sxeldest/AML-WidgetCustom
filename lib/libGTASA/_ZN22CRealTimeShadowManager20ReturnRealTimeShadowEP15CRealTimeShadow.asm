; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManager20ReturnRealTimeShadowEP15CRealTimeShadow
; Address            : 0x5B85F8 - 0x5B860A
; =========================================================

5B85F8:  LDRB            R0, [R0]
5B85FA:  CMP             R0, #0
5B85FC:  ITTTT NE
5B85FE:  LDRNE           R0, [R1]
5B8600:  MOVNE           R2, #0
5B8602:  STRNE.W         R2, [R0,#0x138]
5B8606:  STRNE           R2, [R1]
5B8608:  BX              LR
