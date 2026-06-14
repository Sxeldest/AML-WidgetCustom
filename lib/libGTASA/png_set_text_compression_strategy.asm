; =========================================================
; Game Engine Function: png_set_text_compression_strategy
; Address            : 0x204784 - 0x20478E
; =========================================================

204784:  CMP             R0, #0
204786:  IT NE
204788:  STRNE.W         R1, [R0,#0x1A8]
20478C:  BX              LR
