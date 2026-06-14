; =========================================================
; Game Engine Function: _ZNK25CEventGotKnockedOverByCar15GetSourceEntityEv
; Address            : 0x3772E0 - 0x3772EE
; =========================================================

3772E0:  LDR             R0, [R0,#0x10]
3772E2:  CMP             R0, #0
3772E4:  ITE NE
3772E6:  LDRNE.W         R0, [R0,#0x464]
3772EA:  MOVEQ           R0, #0
3772EC:  BX              LR
