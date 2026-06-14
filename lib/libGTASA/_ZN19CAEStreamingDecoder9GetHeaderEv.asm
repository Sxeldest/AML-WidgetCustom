; =========================================================
; Game Engine Function: _ZN19CAEStreamingDecoder9GetHeaderEv
; Address            : 0x27F0AE - 0x27F0BA
; =========================================================

27F0AE:  LDR             R0, [R0,#4]
27F0B0:  CMP             R0, #0
27F0B2:  ITE NE
27F0B4:  LDRNE           R0, [R0]
27F0B6:  MOVEQ           R0, #0
27F0B8:  BX              LR
