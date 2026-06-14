; =========================================================
; Game Engine Function: silk_stereo_decode_mid_only
; Address            : 0x194140 - 0x194156
; =========================================================

194140:  PUSH            {R4,R6,R7,LR}
194142:  ADD             R7, SP, #8
194144:  MOV             R4, R1
194146:  LDR             R1, =(silk_stereo_only_code_mid_iCDF_ptr - 0x19414E)
194148:  MOVS            R2, #8
19414A:  ADD             R1, PC; silk_stereo_only_code_mid_iCDF_ptr
19414C:  LDR             R1, [R1]; silk_stereo_only_code_mid_iCDF
19414E:  BLX             j_ec_dec_icdf
194152:  STR             R0, [R4]
194154:  POP             {R4,R6,R7,PC}
