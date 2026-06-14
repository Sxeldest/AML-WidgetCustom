; =========================================================
; Game Engine Function: png_set_cHRM_fixed
; Address            : 0x2016EE - 0x201752
; =========================================================

2016EE:  PUSH            {R4-R7,LR}
2016F0:  ADD             R7, SP, #0xC
2016F2:  PUSH.W          {R8}
2016F6:  SUB             SP, SP, #0x20
2016F8:  MOV             R5, R0
2016FA:  CMP             R5, #0
2016FC:  MOV             R4, R1
2016FE:  IT NE
201700:  CMPNE           R4, #0
201702:  BEQ             loc_20174A
201704:  ADD.W           LR, R7, #0x10
201708:  LDR.W           R12, [R7,#arg_14]
20170C:  LDM.W           LR, {R1,R8,LR}
201710:  LDRD.W          R0, R6, [R7,#arg_0]
201714:  STRD.W          R0, R6, [SP,#0x30+var_30]
201718:  ADD             R0, SP, #0x30+var_28
20171A:  STM.W           R0, {R1,R8,LR}
20171E:  ADD.W           R1, R4, #0x28 ; '('
201722:  MOV             R0, R5
201724:  STRD.W          R12, R2, [SP,#0x30+var_1C]
201728:  MOV             R2, SP
20172A:  STR             R3, [SP,#0x30+var_14]
20172C:  MOVS            R3, #2
20172E:  BLX             j_png_colorspace_set_chromaticities
201732:  CMP             R0, #0
201734:  MOV             R1, R4
201736:  ITTT NE
201738:  LDRHNE.W        R0, [R4,#0x72]
20173C:  ORRNE.W         R0, R0, #0x10
201740:  STRHNE.W        R0, [R4,#0x72]
201744:  MOV             R0, R5
201746:  BLX             j_png_colorspace_sync_info
20174A:  ADD             SP, SP, #0x20 ; ' '
20174C:  POP.W           {R8}
201750:  POP             {R4-R7,PC}
