; =========================================================
; Game Engine Function: png_set_text_compression_mem_level
; Address            : 0x20477A - 0x204784
; =========================================================

20477A:  CMP             R0, #0
20477C:  IT NE
20477E:  STRNE.W         R1, [R0,#0x1A4]
204782:  BX              LR
