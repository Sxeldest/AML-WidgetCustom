; =========================================================
; Game Engine Function: png_set_cHRM
; Address            : 0x2017BC - 0x20189A
; =========================================================

2017BC:  PUSH            {R4-R7,LR}
2017BE:  ADD             R7, SP, #0xC
2017C0:  PUSH.W          {R8-R11}
2017C4:  SUB             SP, SP, #0x2C
2017C6:  MOV             R5, R0
2017C8:  ADR             R0, aChrmWhiteX; "cHRM White X"
2017CA:  STR             R0, [SP,#0x48+var_48]
2017CC:  MOV             R0, R5
2017CE:  MOV             R4, R1
2017D0:  BLX             j_png_fixed
2017D4:  STR             R0, [SP,#0x48+var_40]
2017D6:  ADR             R0, aChrmWhiteY; "cHRM White Y"
2017D8:  LDRD.W          R2, R3, [R7,#arg_0]
2017DC:  STR             R0, [SP,#0x48+var_48]
2017DE:  MOV             R0, R5
2017E0:  BLX             j_png_fixed
2017E4:  STR             R0, [SP,#0x48+var_44]
2017E6:  LDR             R0, =(aChrmRedX - 0x2017F0); "cHRM Red X"
2017E8:  LDRD.W          R2, R3, [R7,#arg_8]
2017EC:  ADD             R0, PC; "cHRM Red X"
2017EE:  STR             R0, [SP,#0x48+var_48]
2017F0:  MOV             R0, R5
2017F2:  BLX             j_png_fixed
2017F6:  MOV             R10, R0
2017F8:  LDR             R0, =(aChrmRedY - 0x201802); "cHRM Red Y"
2017FA:  LDRD.W          R2, R3, [R7,#arg_10]
2017FE:  ADD             R0, PC; "cHRM Red Y"
201800:  STR             R0, [SP,#0x48+var_48]
201802:  MOV             R0, R5
201804:  BLX             j_png_fixed
201808:  MOV             R11, R0
20180A:  LDR             R0, =(aChrmGreenX - 0x201814); "cHRM Green X"
20180C:  LDRD.W          R2, R3, [R7,#arg_18]
201810:  ADD             R0, PC; "cHRM Green X"
201812:  STR             R0, [SP,#0x48+var_48]
201814:  MOV             R0, R5
201816:  BLX             j_png_fixed
20181A:  MOV             R6, R0
20181C:  LDR             R0, =(aChrmGreenY - 0x201826); "cHRM Green Y"
20181E:  LDRD.W          R2, R3, [R7,#arg_20]
201822:  ADD             R0, PC; "cHRM Green Y"
201824:  STR             R0, [SP,#0x48+var_48]
201826:  MOV             R0, R5
201828:  BLX             j_png_fixed
20182C:  MOV             R8, R0
20182E:  LDR             R0, =(aChrmBlueX - 0x201838); "cHRM Blue X"
201830:  LDRD.W          R2, R3, [R7,#arg_28]
201834:  ADD             R0, PC; "cHRM Blue X"
201836:  STR             R0, [SP,#0x48+var_48]
201838:  MOV             R0, R5
20183A:  BLX             j_png_fixed
20183E:  MOV             R9, R0
201840:  LDR             R0, =(aChrmBlueY - 0x201846); "cHRM Blue Y"
201842:  ADD             R0, PC; "cHRM Blue Y"
201844:  STR             R0, [SP,#0x48+var_48]
201846:  LDRD.W          R2, R3, [R7,#arg_30]
20184A:  MOV             R0, R5
20184C:  BLX             j_png_fixed
201850:  CMP             R5, #0
201852:  IT NE
201854:  CMPNE           R4, #0
201856:  BEQ             loc_201892
201858:  ADD             R1, SP, #0x48+var_34
20185A:  STRD.W          R10, R11, [SP,#0x48+var_3C]
20185E:  STM.W           R1, {R6,R8,R9}
201862:  ADD.W           R1, R4, #0x28 ; '('
201866:  ADD             R2, SP, #0x48+var_3C
201868:  STR             R0, [SP,#0x48+var_28]
20186A:  MOVS            R3, #2
20186C:  LDR             R0, [SP,#0x48+var_40]
20186E:  STR             R0, [SP,#0x48+var_24]
201870:  LDR             R0, [SP,#0x48+var_44]
201872:  STR             R0, [SP,#0x48+var_20]
201874:  MOV             R0, R5
201876:  BLX             j_png_colorspace_set_chromaticities
20187A:  CMP             R0, #0
20187C:  MOV             R1, R4
20187E:  ITTT NE
201880:  LDRHNE.W        R0, [R4,#0x72]
201884:  ORRNE.W         R0, R0, #0x10
201888:  STRHNE.W        R0, [R4,#0x72]
20188C:  MOV             R0, R5
20188E:  BLX             j_png_colorspace_sync_info
201892:  ADD             SP, SP, #0x2C ; ','
201894:  POP.W           {R8-R11}
201898:  POP             {R4-R7,PC}
