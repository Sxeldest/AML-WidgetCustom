; =========================================================
; Game Engine Function: silk_stereo_decode_mid_only
; Address            : 0xB5F1C - 0xB5F32
; =========================================================

B5F1C:  PUSH            {R4,R6,R7,LR}
B5F1E:  ADD             R7, SP, #8
B5F20:  MOV             R4, R1
B5F22:  LDR             R1, =(silk_stereo_only_code_mid_iCDF_ptr - 0xB5F2A)
B5F24:  MOVS            R2, #8
B5F26:  ADD             R1, PC; silk_stereo_only_code_mid_iCDF_ptr
B5F28:  LDR             R1, [R1]; silk_stereo_only_code_mid_iCDF
B5F2A:  BLX             j_ec_dec_icdf
B5F2E:  STR             R0, [R4]
B5F30:  POP             {R4,R6,R7,PC}
