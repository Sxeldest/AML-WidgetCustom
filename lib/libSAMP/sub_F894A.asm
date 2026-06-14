; =========================================================
; Game Engine Function: sub_F894A
; Address            : 0xF894A - 0xF8992
; =========================================================

F894A:  PUSH            {R4-R7,LR}
F894C:  ADD             R7, SP, #0xC
F894E:  PUSH.W          {R8-R11}
F8952:  LDR             R0, [R0,#4]
F8954:  CBZ             R0, loc_F898C
F8956:  LDR             R0, [R0,#0x14]
F8958:  CBZ             R0, loc_F898C
F895A:  LDRD.W          R4, LR, [R7,#arg_24]
F895E:  LDRD.W          R5, R11, [R7,#arg_14]
F8962:  LDRD.W          R6, R10, [R7,#arg_4]
F8966:  LDR.W           R12, [R7,#arg_2C]
F896A:  LDR.W           R8, [R7,#arg_1C]
F896E:  LDR.W           R9, [R7,#arg_C]
F8972:  STRD.W          R4, LR, [R0,#0x30]
F8976:  STR.W           R12, [R0,#0x38]
F897A:  STRD.W          R5, R11, [R0,#0x20]
F897E:  STR.W           R8, [R0,#0x28]
F8982:  STRD.W          R6, R10, [R0,#0x10]
F8986:  STR.W           R9, [R0,#0x18]
F898A:  STM             R0!, {R1-R3}
F898C:  POP.W           {R8-R11}
F8990:  POP             {R4-R7,PC}
