; =========================================================
; Game Engine Function: sub_120B68
; Address            : 0x120B68 - 0x120BAC
; =========================================================

120B68:  PUSH            {R4-R7,LR}
120B6A:  ADD             R7, SP, #0xC
120B6C:  PUSH.W          {R8}
120B70:  SUB             SP, SP, #0x18
120B72:  MOV             R4, R3
120B74:  MOV             R8, R2
120B76:  MOV             R6, R1
120B78:  MOV             R5, R0
120B7A:  BL              sub_120BB0
120B7E:  LDR             R0, =(unk_263918 - 0x120B8C)
120B80:  LDRD.W          R3, LR, [R7,#arg_0]
120B84:  LDR.W           R12, [R7,#arg_8]
120B88:  ADD             R0, PC; unk_263918
120B8A:  LDRD.W          R1, R2, [R7,#arg_C]
120B8E:  STRD.W          R1, R2, [SP,#0x28+var_18]
120B92:  MOV             R1, R5
120B94:  STRD.W          R4, R3, [SP,#0x28+var_28]
120B98:  MOV             R2, R6
120B9A:  MOV             R3, R8
120B9C:  STRD.W          LR, R12, [SP,#0x28+var_20]
120BA0:  BL              sub_120C7C
120BA4:  ADD             SP, SP, #0x18
120BA6:  POP.W           {R8}
120BAA:  POP             {R4-R7,PC}
