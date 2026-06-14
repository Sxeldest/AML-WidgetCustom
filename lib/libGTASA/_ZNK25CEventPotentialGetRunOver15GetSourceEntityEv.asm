; =========================================================
; Game Engine Function: _ZNK25CEventPotentialGetRunOver15GetSourceEntityEv
; Address            : 0x379B40 - 0x379B4E
; =========================================================

379B40:  LDR             R0, [R0,#0x10]
379B42:  CMP             R0, #0
379B44:  ITE NE
379B46:  LDRNE.W         R0, [R0,#0x464]
379B4A:  MOVEQ           R0, #0
379B4C:  BX              LR
