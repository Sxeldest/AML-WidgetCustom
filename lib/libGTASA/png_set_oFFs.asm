; =========================================================
; Game Engine Function: png_set_oFFs
; Address            : 0x201CEC - 0x201D0C
; =========================================================

201CEC:  CMP             R0, #0
201CEE:  IT EQ
201CF0:  BXEQ            LR
201CF2:  CMP             R1, #0
201CF4:  ITTTT NE
201CF6:  LDRNE           R0, [SP,#arg_0]
201CF8:  STRDNE.W        R2, R3, [R1,#0xB4]
201CFC:  LDRNE           R2, [R1,#8]
201CFE:  STRBNE.W        R0, [R1,#0xBC]
201D02:  ITT NE
201D04:  ORRNE.W         R0, R2, #0x100
201D08:  STRNE           R0, [R1,#8]
201D0A:  BX              LR
