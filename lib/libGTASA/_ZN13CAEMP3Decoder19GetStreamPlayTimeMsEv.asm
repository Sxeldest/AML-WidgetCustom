; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder19GetStreamPlayTimeMsEv
; Address            : 0x27F05C - 0x27F06A
; =========================================================

27F05C:  LDRB            R1, [R0,#8]
27F05E:  CMP             R1, #0
27F060:  ITE NE
27F062:  LDRNE           R0, [R0,#0x20]
27F064:  MOVEQ.W         R0, #0xFFFFFFFF
27F068:  BX              LR
