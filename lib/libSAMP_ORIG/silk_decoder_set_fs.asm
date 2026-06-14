; =========================================================
; Game Engine Function: silk_decoder_set_fs
; Address            : 0xB4A74 - 0xB4B98
; =========================================================

B4A74:  PUSH            {R4-R7,LR}
B4A76:  ADD             R7, SP, #0xC
B4A78:  PUSH.W          {R8-R11}
B4A7C:  SUB             SP, SP, #4
B4A7E:  MOV             R4, R1
B4A80:  MOV             R5, R0
B4A82:  SXTH            R0, R4
B4A84:  LDRSH.W         R1, [R5,#0x914]
B4A88:  ADD.W           R10, R0, R0,LSL#2
B4A8C:  MOV             R6, R2
B4A8E:  MOV.W           R2, R10,LSL#16
B4A92:  SMULBT.W        R9, R1, R2
B4A96:  LDR.W           R1, [R5,#0x90C]
B4A9A:  STR.W           R10, [R5,#0x91C]
B4A9E:  CMP             R1, R4
B4AA0:  ITT EQ
B4AA2:  LDREQ.W         R1, [R5,#0x910]
B4AA6:  CMPEQ           R1, R6
B4AA8:  BEQ             loc_B4AD2
B4AAA:  MOV.W           R1, #0x3E8
B4AAE:  MOV             R2, R6
B4AB0:  SMULBB.W        R1, R0, R1
B4AB4:  ADD.W           R0, R5, #0x980
B4AB8:  MOVS            R3, #0
B4ABA:  MOV.W           R11, #0
B4ABE:  BLX             j_silk_resampler_init
B4AC2:  MOV             R8, R0
B4AC4:  LDR.W           R0, [R5,#0x90C]
B4AC8:  STR.W           R6, [R5,#0x910]
B4ACC:  CMP             R0, R4
B4ACE:  BEQ             loc_B4AD6
B4AD0:  B               loc_B4AE2
B4AD2:  MOV.W           R8, #0
B4AD6:  LDR.W           R0, [R5,#0x918]
B4ADA:  CMP             R9, R0
B4ADC:  BEQ             loc_B4B8E
B4ADE:  MOV.W           R11, #1
B4AE2:  LDR             R0, =(silk_pitch_contour_10_ms_NB_iCDF_ptr - 0xB4AEC)
B4AE4:  LDR             R1, =(silk_pitch_contour_10_ms_iCDF_ptr - 0xB4AEE)
B4AE6:  LDR             R3, =(silk_pitch_contour_iCDF_ptr - 0xB4AF6)
B4AE8:  ADD             R0, PC; silk_pitch_contour_10_ms_NB_iCDF_ptr
B4AEA:  ADD             R1, PC; silk_pitch_contour_10_ms_iCDF_ptr
B4AEC:  LDR             R2, =(silk_pitch_contour_NB_iCDF_ptr - 0xB4AF8)
B4AEE:  LDR.W           R6, [R5,#0x914]
B4AF2:  ADD             R3, PC; silk_pitch_contour_iCDF_ptr
B4AF4:  ADD             R2, PC; silk_pitch_contour_NB_iCDF_ptr
B4AF6:  LDR             R0, [R0]; silk_pitch_contour_10_ms_NB_iCDF
B4AF8:  LDR             R1, [R1]; silk_pitch_contour_10_ms_iCDF
B4AFA:  CMP             R6, #4
B4AFC:  ITT EQ
B4AFE:  LDREQ           R0, [R2]; silk_pitch_contour_NB_iCDF
B4B00:  LDREQ           R1, [R3]; silk_pitch_contour_iCDF
B4B02:  CMP             R4, #8
B4B04:  IT EQ
B4B06:  MOVEQ           R1, R0
B4B08:  CMP.W           R11, #0
B4B0C:  STR.W           R1, [R5,#0x950]
B4B10:  BNE             loc_B4B86
B4B12:  LDR             R0, =(silk_NLSF_CB_WB_ptr - 0xB4B20)
B4B14:  ORR.W           R2, R4, #4
B4B18:  LDR             R1, =(silk_NLSF_CB_NB_MB_ptr - 0xB4B28)
B4B1A:  MOVS            R3, #0x10
B4B1C:  ADD             R0, PC; silk_NLSF_CB_WB_ptr
B4B1E:  CMP             R2, #0xC
B4B20:  IT EQ
B4B22:  MOVEQ           R3, #0xA
B4B24:  ADD             R1, PC; silk_NLSF_CB_NB_MB_ptr
B4B26:  STR.W           R3, [R5,#0x924]
B4B2A:  MOV.W           R3, R10,LSL#2
B4B2E:  LDR             R0, [R0]; silk_NLSF_CB_WB
B4B30:  CMP             R2, #0xC
B4B32:  STR.W           R3, [R5,#0x920]
B4B36:  IT EQ
B4B38:  LDREQ           R0, [R1]; silk_NLSF_CB_NB_MB
B4B3A:  CMP             R4, #0x10
B4B3C:  STR.W           R0, [R5,#0xAAC]
B4B40:  BEQ             loc_B4B4C
B4B42:  CMP             R4, #0xC
B4B44:  BNE             loc_B4B52
B4B46:  LDR             R0, =(silk_uniform6_iCDF_ptr - 0xB4B4C)
B4B48:  ADD             R0, PC; silk_uniform6_iCDF_ptr
B4B4A:  B               loc_B4B5A
B4B4C:  LDR             R0, =(silk_uniform8_iCDF_ptr - 0xB4B52)
B4B4E:  ADD             R0, PC; silk_uniform8_iCDF_ptr
B4B50:  B               loc_B4B5A
B4B52:  CMP             R4, #8
B4B54:  BNE             loc_B4B60
B4B56:  LDR             R0, =(silk_uniform4_iCDF_ptr - 0xB4B5C)
B4B58:  ADD             R0, PC; silk_uniform4_iCDF_ptr
B4B5A:  LDR             R0, [R0]
B4B5C:  STR.W           R0, [R5,#0x94C]
B4B60:  MOVW            R0, #0x1044
B4B64:  MOVS            R1, #0
B4B66:  STR             R1, [R5,R0]
B4B68:  MOVS            R0, #0x64 ; 'd'
B4B6A:  MOV.W           R1, #0x400; n
B4B6E:  STR.W           R0, [R5,#0x904]
B4B72:  MOVS            R0, #1
B4B74:  STR.W           R0, [R5,#0x948]
B4B78:  MOVS            R0, #0xA
B4B7A:  STRB.W          R0, [R5,#0x908]
B4B7E:  ADDW            R0, R5, #0x504; int
B4B82:  BLX             sub_10967C
B4B86:  STR.W           R9, [R5,#0x918]
B4B8A:  STR.W           R4, [R5,#0x90C]
B4B8E:  MOV             R0, R8
B4B90:  ADD             SP, SP, #4
B4B92:  POP.W           {R8-R11}
B4B96:  POP             {R4-R7,PC}
