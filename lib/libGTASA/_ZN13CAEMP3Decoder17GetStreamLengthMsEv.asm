; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder17GetStreamLengthMsEv
; Address            : 0x27F04E - 0x27F05C
; =========================================================

27F04E:  LDRB            R1, [R0,#8]
27F050:  CMP             R1, #0
27F052:  ITE NE
27F054:  LDRNE           R0, [R0,#0x1C]
27F056:  MOVEQ.W         R0, #0xFFFFFFFF
27F05A:  BX              LR
