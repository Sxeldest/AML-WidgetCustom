; =========================================================
; Game Engine Function: silk_stereo_encode_mid_only
; Address            : 0x1A8AF0 - 0x1A8AFC
; =========================================================

1A8AF0:  LDR             R2, =(silk_stereo_only_code_mid_iCDF_ptr - 0x1A8AF8)
1A8AF2:  MOVS            R3, #8
1A8AF4:  ADD             R2, PC; silk_stereo_only_code_mid_iCDF_ptr
1A8AF6:  LDR             R2, [R2]; silk_stereo_only_code_mid_iCDF
1A8AF8:  B.W             sub_224400
