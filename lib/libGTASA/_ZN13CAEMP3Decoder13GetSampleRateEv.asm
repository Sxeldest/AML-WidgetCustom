; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder13GetSampleRateEv
; Address            : 0x27F040 - 0x27F04E
; =========================================================

27F040:  LDRB            R1, [R0,#8]
27F042:  CMP             R1, #0
27F044:  ITE NE
27F046:  LDRNE           R0, [R0,#0x10]
27F048:  MOVEQ.W         R0, #0xFFFFFFFF
27F04C:  BX              LR
