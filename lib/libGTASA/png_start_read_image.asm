; =========================================================
; Game Engine Function: png_start_read_image
; Address            : 0x1F5A70 - 0x1F5A8A
; =========================================================

1F5A70:  CMP             R0, #0
1F5A72:  IT EQ
1F5A74:  BXEQ            LR
1F5A76:  LDRB.W          R1, [R0,#0x138]
1F5A7A:  LSLS            R1, R1, #0x19
1F5A7C:  IT PL
1F5A7E:  BPL.W           j_j_png_read_start_row
1F5A82:  LDR             R1, =(aPngStartReadIm_0 - 0x1F5A88); "png_start_read_image/png_read_update_in"...
1F5A84:  ADD             R1, PC; "png_start_read_image/png_read_update_in"...
1F5A86:  B.W             j_j_png_app_error
