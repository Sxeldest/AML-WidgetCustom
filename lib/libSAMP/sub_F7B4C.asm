; =========================================================
; Game Engine Function: sub_F7B4C
; Address            : 0xF7B4C - 0xF7BC4
; =========================================================

F7B4C:  PUSH            {R4,R6,R7,LR}
F7B4E:  ADD             R7, SP, #8
F7B50:  LDRD.W          R12, R2, [R0]
F7B54:  LDR             R3, [R1,#4]
F7B56:  CMP             R2, R12
F7B58:  BEQ             loc_F7BA8
F7B5A:  MOV.W           LR, #0
F7B5E:  VLDR            D16, [R2,#-0x1C]
F7B62:  LDR.W           R4, [R2,#-0x14]
F7B66:  STR.W           R4, [R3,#-0x14]
F7B6A:  VSTR            D16, [R3,#-0x1C]
F7B6E:  VLDR            D16, [R2,#-0x10]
F7B72:  LDR.W           R4, [R2,#-8]
F7B76:  STRD.W          LR, LR, [R2,#-0x1C]
F7B7A:  STR.W           LR, [R2,#-0x14]
F7B7E:  STR.W           R4, [R3,#-8]
F7B82:  VSTR            D16, [R3,#-0x10]
F7B86:  LDR.W           R4, [R2,#-4]
F7B8A:  STRD.W          LR, LR, [R2,#-0x10]
F7B8E:  STR.W           LR, [R2,#-8]
F7B92:  SUBS            R2, #0x1C
F7B94:  STR.W           R4, [R3,#-4]
F7B98:  CMP             R2, R12
F7B9A:  LDR             R3, [R1,#4]
F7B9C:  SUB.W           R3, R3, #0x1C
F7BA0:  STR             R3, [R1,#4]
F7BA2:  BNE             loc_F7B5E
F7BA4:  LDR.W           R12, [R0]
F7BA8:  STR             R3, [R0]
F7BAA:  STR.W           R12, [R1,#4]
F7BAE:  LDR             R2, [R1,#8]
F7BB0:  LDR             R3, [R0,#4]
F7BB2:  STR             R2, [R0,#4]
F7BB4:  STR             R3, [R1,#8]
F7BB6:  LDR             R2, [R1,#0xC]
F7BB8:  LDR             R3, [R0,#8]
F7BBA:  STR             R2, [R0,#8]
F7BBC:  LDR             R0, [R1,#4]
F7BBE:  STR             R3, [R1,#0xC]
F7BC0:  STR             R0, [R1]
F7BC2:  POP             {R4,R6,R7,PC}
