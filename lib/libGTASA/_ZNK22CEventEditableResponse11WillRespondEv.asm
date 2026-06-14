; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse11WillRespondEv
; Address            : 0x370810 - 0x37081C
; =========================================================

370810:  LDRH            R1, [R0,#0xA]
370812:  MOVS            R0, #0
370814:  CMP             R1, #0xC8
370816:  IT NE
370818:  MOVNE           R0, #1
37081A:  BX              LR
