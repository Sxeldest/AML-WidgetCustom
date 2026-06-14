; =========================================================
; Game Engine Function: png_get_eXIf
; Address            : 0x1F3A44 - 0x1F3A52
; =========================================================

1F3A44:  PUSH            {R7,LR}
1F3A46:  MOV             R7, SP
1F3A48:  ADR             R1, aPngGetExifDoes; "png_get_eXIf does not work; use png_get"...
1F3A4A:  BLX             j_png_warning
1F3A4E:  MOVS            R0, #0
1F3A50:  POP             {R7,PC}
