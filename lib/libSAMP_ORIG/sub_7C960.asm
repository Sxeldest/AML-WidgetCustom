; =========================================================
; Game Engine Function: sub_7C960
; Address            : 0x7C960 - 0x7C992
; =========================================================

7C960:  PUSH            {R4-R7,LR}
7C962:  ADD             R7, SP, #0xC
7C964:  PUSH.W          {R11}
7C968:  LDRD.W          R5, R6, [R0,#0x48]
7C96C:  CMP             R5, R6
7C96E:  BEQ             loc_7C98C
7C970:  MOV             R4, R1
7C972:  B               loc_7C97A
7C974:  ADDS            R5, #4
7C976:  CMP             R5, R6
7C978:  BEQ             loc_7C98C
7C97A:  LDR             R0, [R5]
7C97C:  LDRB            R1, [R0,#8]
7C97E:  CMP             R1, #0
7C980:  BEQ             loc_7C974
7C982:  LDR             R1, [R0]
7C984:  LDR             R2, [R1,#4]
7C986:  MOV             R1, R4
7C988:  BLX             R2
7C98A:  B               loc_7C974
7C98C:  POP.W           {R11}
7C990:  POP             {R4-R7,PC}
