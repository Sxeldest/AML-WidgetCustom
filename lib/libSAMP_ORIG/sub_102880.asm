; =========================================================
; Game Engine Function: sub_102880
; Address            : 0x102880 - 0x1028C4
; =========================================================

102880:  PUSH            {R4-R7,LR}
102882:  ADD             R7, SP, #0xC
102884:  PUSH.W          {R8}
102888:  ADD.W           R0, R0, #0x198
10288C:  MOV             R6, R1
10288E:  MOVS            R1, #0x18
102890:  MOV             R8, R3
102892:  MOV             R5, R2
102894:  BL              sub_FFA98
102898:  MOV             R4, R0
10289A:  MOV             R0, R5; s
10289C:  LDR             R6, [R6]
10289E:  BLX             strlen
1028A2:  LDR             R1, =0x1010133
1028A4:  ADD             R0, R5
1028A6:  STR             R1, [R4,#4]
1028A8:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10MemberExprE - 0x1028AE); `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr ...
1028AA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::MemberExpr
1028AC:  ADDS            R1, #8
1028AE:  STR             R1, [R4]
1028B0:  LDR.W           R1, [R8]
1028B4:  STR             R0, [R4,#0x10]
1028B6:  MOV             R0, R4
1028B8:  STR             R1, [R4,#0x14]
1028BA:  STRD.W          R6, R5, [R4,#8]
1028BE:  POP.W           {R8}
1028C2:  POP             {R4-R7,PC}
