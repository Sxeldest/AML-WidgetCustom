; =========================================================
; Game Engine Function: sub_FB034
; Address            : 0xFB034 - 0xFB096
; =========================================================

FB034:  PUSH            {R4-R7,LR}
FB036:  ADD             R7, SP, #0xC
FB038:  PUSH.W          {R8}
FB03C:  SUB             SP, SP, #0x30
FB03E:  LDR             R0, [R0,#0x10]
FB040:  STRD.W          R2, R1, [SP,#0x40+var_18]
FB044:  STR             R3, [SP,#0x40+var_1C]
FB046:  CBZ             R0, loc_FB092
FB048:  LDR             R1, [R0]
FB04A:  ADD.W           R6, R7, #0xC
FB04E:  ADD.W           R2, R7, #8
FB052:  ADD.W           R3, R7, #0x1C
FB056:  ADD.W           LR, R7, #0x24 ; '$'
FB05A:  ADD.W           R8, R7, #0x20 ; ' '
FB05E:  LDR.W           R12, [R1,#0x18]
FB062:  ADD.W           R1, R7, #0x28 ; '('
FB066:  STR             R1, [SP,#0x40+var_20]
FB068:  ADD.W           R1, R7, #0x18
FB06C:  STRD.W          R2, R6, [SP,#0x40+var_40]
FB070:  ADD             R2, SP, #0x40+var_30
FB072:  STM.W           R2, {R1,R3,R8,LR}
FB076:  ADD.W           R4, R7, #0x14
FB07A:  ADD             R1, SP, #0x40+var_14
FB07C:  ADD             R2, SP, #0x40+var_18
FB07E:  ADD             R3, SP, #0x40+var_1C
FB080:  ADD.W           R5, R7, #0x10
FB084:  STRD.W          R5, R4, [SP,#0x40+var_38]
FB088:  BLX             R12
FB08A:  ADD             SP, SP, #0x30 ; '0'
FB08C:  POP.W           {R8}
FB090:  POP             {R4-R7,PC}
FB092:  BL              sub_DC92C
