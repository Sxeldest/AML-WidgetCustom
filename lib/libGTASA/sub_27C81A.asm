; =========================================================
; Game Engine Function: sub_27C81A
; Address            : 0x27C81A - 0x27C85C
; =========================================================

27C81A:  PUSH            {R4-R7,LR}
27C81C:  ADD             R7, SP, #0xC
27C81E:  PUSH.W          {R11}
27C822:  CMP             R1, #1
27C824:  BLT             loc_27C856
27C826:  LDRH            R3, [R0,#6]
27C828:  SUBS            R1, #1
27C82A:  LDRH.W          LR, [R0]
27C82E:  LDRH.W          R12, [R0,#2]
27C832:  LDRH            R2, [R0,#4]
27C834:  STRH            R3, [R0]
27C836:  LDRB            R3, [R0,#0xC]
27C838:  LDRB            R4, [R0,#0xD]
27C83A:  LDRB            R5, [R0,#0xE]
27C83C:  LDRB            R6, [R0,#0xF]
27C83E:  STRH.W          LR, [R0,#6]
27C842:  STRH            R2, [R0,#2]
27C844:  STRH.W          R12, [R0,#4]
27C848:  STRB            R6, [R0,#0xC]
27C84A:  STRB            R3, [R0,#0xF]
27C84C:  STRB            R5, [R0,#0xD]
27C84E:  STRB            R4, [R0,#0xE]
27C850:  ADD.W           R0, R0, #0x10
27C854:  BNE             loc_27C826
27C856:  POP.W           {R11}
27C85A:  POP             {R4-R7,PC}
