; =========================================================
; Game Engine Function: png_set_cHRM_XYZ_fixed
; Address            : 0x201752 - 0x2017BA
; =========================================================

201752:  PUSH            {R4-R7,LR}
201754:  ADD             R7, SP, #0xC
201756:  PUSH.W          {R8,R9,R11}
20175A:  SUB             SP, SP, #0x28
20175C:  MOV             R5, R0
20175E:  CMP             R5, #0
201760:  MOV             R4, R1
201762:  IT NE
201764:  CMPNE           R4, #0
201766:  BEQ             loc_2017B2
201768:  LDRD.W          R8, LR, [R7,#arg_10]
20176C:  LDRD.W          R6, R9, [R7,#arg_8]
201770:  LDRD.W          R1, R0, [R7,#arg_0]
201774:  STRD.W          R2, R3, [SP,#0x40+var_3C]
201778:  ADD             R2, SP, #0x40+var_3C
20177A:  STRD.W          R1, R0, [SP,#0x40+var_34]
20177E:  ADD.W           R1, R4, #0x28 ; '('
201782:  LDR.W           R12, [R7,#arg_18]
201786:  MOV             R0, R5
201788:  MOVS            R3, #2
20178A:  STRD.W          R6, R9, [SP,#0x40+var_2C]
20178E:  STRD.W          R8, LR, [SP,#0x40+var_24]
201792:  STR.W           R12, [SP,#0x40+var_1C]
201796:  BLX             j_png_colorspace_set_endpoints
20179A:  CMP             R0, #0
20179C:  MOV             R1, R4
20179E:  ITTT NE
2017A0:  LDRHNE.W        R0, [R4,#0x72]
2017A4:  ORRNE.W         R0, R0, #0x10
2017A8:  STRHNE.W        R0, [R4,#0x72]
2017AC:  MOV             R0, R5
2017AE:  BLX             j_png_colorspace_sync_info
2017B2:  ADD             SP, SP, #0x28 ; '('
2017B4:  POP.W           {R8,R9,R11}
2017B8:  POP             {R4-R7,PC}
