; =========================================================
; Game Engine Function: sub_27C7EC
; Address            : 0x27C7EC - 0x27C81A
; =========================================================

27C7EC:  PUSH            {R7,LR}
27C7EE:  MOV             R7, SP
27C7F0:  CMP             R1, #1
27C7F2:  IT LT
27C7F4:  POPLT           {R7,PC}
27C7F6:  ADDS            R0, #4
27C7F8:  LDRB.W          LR, [R0]
27C7FC:  SUBS            R1, #1
27C7FE:  LDRB.W          R12, [R0,#1]
27C802:  LDRB            R3, [R0,#2]
27C804:  LDRB            R2, [R0,#3]
27C806:  STRB            R2, [R0]
27C808:  STRB.W          LR, [R0,#3]
27C80C:  STRB            R3, [R0,#1]
27C80E:  STRB.W          R12, [R0,#2]
27C812:  ADD.W           R0, R0, #8
27C816:  BNE             loc_27C7F8
27C818:  POP             {R7,PC}
