; =========================================================
; Game Engine Function: png_set_cHRM_XYZ
; Address            : 0x2018D4 - 0x2019C4
; =========================================================

2018D4:  PUSH            {R4-R7,LR}
2018D6:  ADD             R7, SP, #0xC
2018D8:  PUSH.W          {R8-R11}
2018DC:  SUB             SP, SP, #0x34
2018DE:  MOV             R5, R0
2018E0:  LDR             R0, =(aChrmRedX - 0x2018E8); "cHRM Red X"
2018E2:  MOV             R4, R1
2018E4:  ADD             R0, PC; "cHRM Red X"
2018E6:  STR             R0, [SP,#0x50+var_50]
2018E8:  MOV             R0, R5
2018EA:  BLX             j_png_fixed
2018EE:  STR             R0, [SP,#0x50+var_44]
2018F0:  LDR             R0, =(aChrmRedY - 0x2018FA); "cHRM Red Y"
2018F2:  LDRD.W          R2, R3, [R7,#arg_0]
2018F6:  ADD             R0, PC; "cHRM Red Y"
2018F8:  STR             R0, [SP,#0x50+var_50]
2018FA:  MOV             R0, R5
2018FC:  BLX             j_png_fixed
201900:  STR             R0, [SP,#0x50+var_48]
201902:  ADR             R0, aChrmRedZ; "cHRM Red Z"
201904:  LDRD.W          R2, R3, [R7,#arg_8]
201908:  STR             R0, [SP,#0x50+var_50]
20190A:  MOV             R0, R5
20190C:  BLX             j_png_fixed
201910:  STR             R0, [SP,#0x50+var_4C]
201912:  LDR             R0, =(aChrmGreenX - 0x20191C); "cHRM Green X"
201914:  LDRD.W          R2, R3, [R7,#arg_10]
201918:  ADD             R0, PC; "cHRM Green X"
20191A:  STR             R0, [SP,#0x50+var_50]
20191C:  MOV             R0, R5
20191E:  BLX             j_png_fixed
201922:  MOV             R11, R0
201924:  LDR             R0, =(aChrmGreenY - 0x20192E); "cHRM Green Y"
201926:  LDRD.W          R2, R3, [R7,#arg_18]
20192A:  ADD             R0, PC; "cHRM Green Y"
20192C:  STR             R0, [SP,#0x50+var_50]
20192E:  MOV             R0, R5
201930:  BLX             j_png_fixed
201934:  LDRD.W          R2, R3, [R7,#arg_20]
201938:  MOV             R6, R0
20193A:  ADR             R0, aChrmGreenZ; "cHRM Green Z"
20193C:  STR             R0, [SP,#0x50+var_50]
20193E:  MOV             R0, R5
201940:  BLX             j_png_fixed
201944:  MOV             R8, R0
201946:  LDR             R0, =(aChrmBlueX - 0x201950); "cHRM Blue X"
201948:  LDRD.W          R2, R3, [R7,#arg_28]
20194C:  ADD             R0, PC; "cHRM Blue X"
20194E:  STR             R0, [SP,#0x50+var_50]
201950:  MOV             R0, R5
201952:  BLX             j_png_fixed
201956:  MOV             R9, R0
201958:  LDR             R0, =(aChrmBlueY - 0x20195E); "cHRM Blue Y"
20195A:  ADD             R0, PC; "cHRM Blue Y"
20195C:  STR             R0, [SP,#0x50+var_50]
20195E:  LDRD.W          R2, R3, [R7,#arg_30]
201962:  MOV             R0, R5
201964:  BLX             j_png_fixed
201968:  MOV             R10, R0
20196A:  ADR             R0, aChrmBlueZ; "cHRM Blue Z"
20196C:  STR             R0, [SP,#0x50+var_50]
20196E:  MOV             R0, R5
201970:  LDRD.W          R2, R3, [R7,#arg_38]
201974:  BLX             j_png_fixed
201978:  CMP             R5, #0
20197A:  IT NE
20197C:  CMPNE           R4, #0
20197E:  BEQ             loc_2019BC
201980:  LDR             R1, [SP,#0x50+var_48]
201982:  ADD             R2, SP, #0x50+var_40
201984:  STR             R1, [SP,#0x50+var_3C]
201986:  MOVS            R3, #2
201988:  LDR             R1, [SP,#0x50+var_44]
20198A:  STR             R1, [SP,#0x50+var_40]
20198C:  LDR             R1, [SP,#0x50+var_4C]
20198E:  STRD.W          R1, R11, [SP,#0x50+var_38]
201992:  ADD             R1, SP, #0x50+var_30
201994:  STM.W           R1, {R6,R8-R10}
201998:  ADD.W           R1, R4, #0x28 ; '('
20199C:  STR             R0, [SP,#0x50+var_20]
20199E:  MOV             R0, R5
2019A0:  BLX             j_png_colorspace_set_endpoints
2019A4:  CMP             R0, #0
2019A6:  MOV             R1, R4
2019A8:  ITTT NE
2019AA:  LDRHNE.W        R0, [R4,#0x72]
2019AE:  ORRNE.W         R0, R0, #0x10
2019B2:  STRHNE.W        R0, [R4,#0x72]
2019B6:  MOV             R0, R5
2019B8:  BLX             j_png_colorspace_sync_info
2019BC:  ADD             SP, SP, #0x34 ; '4'
2019BE:  POP.W           {R8-R11}
2019C2:  POP             {R4-R7,PC}
