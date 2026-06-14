; =========================================================
; Game Engine Function: silk_stereo_encode_mid_only
; Address            : 0xCAD30 - 0xCAD3C
; =========================================================

CAD30:  LDR             R2, =(silk_stereo_only_code_mid_iCDF_ptr - 0xCAD38)
CAD32:  MOVS            R3, #8
CAD34:  ADD             R2, PC; silk_stereo_only_code_mid_iCDF_ptr
CAD36:  LDR             R2, [R2]; silk_stereo_only_code_mid_iCDF
CAD38:  B.W             sub_10C1D0
