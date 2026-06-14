; =========================================================
; Game Engine Function: sub_74B78
; Address            : 0x74B78 - 0x74BFC
; =========================================================

74B78:  PUSH            {R4-R7,LR}
74B7A:  ADD             R7, SP, #0xC
74B7C:  PUSH.W          {R8}
74B80:  SUB             SP, SP, #0x138
74B82:  MOV             R4, R0
74B84:  LDR             R0, =(__stack_chk_guard_ptr - 0x74B8A)
74B86:  ADD             R0, PC; __stack_chk_guard_ptr
74B88:  LDR             R0, [R0]; __stack_chk_guard
74B8A:  LDR             R0, [R0]
74B8C:  STR             R0, [SP,#0x148+var_14]
74B8E:  BL              sub_68858
74B92:  LDR             R5, =(dword_1A44F0 - 0x74B98)
74B94:  ADD             R5, PC; dword_1A44F0
74B96:  LDR             R1, [R5]
74B98:  SUBS            R0, R0, R1
74B9A:  CMP             R0, #0x65 ; 'e'
74B9C:  BCC             loc_74BE2
74B9E:  BL              sub_68858
74BA2:  ADD.W           R8, SP, #0x148+var_128
74BA6:  STR             R0, [R5]
74BA8:  MOV             R0, R8
74BAA:  BL              sub_86B90
74BAE:  LDR.W           R0, [R4,#0x210]
74BB2:  LDR             R1, =(off_114C48 - 0x74BB8)
74BB4:  ADD             R1, PC; off_114C48
74BB6:  LDR             R2, [R0]
74BB8:  LDR             R1, [R1]; unk_116E20
74BBA:  LDR             R4, [R2,#0x6C]
74BBC:  MOVS            R2, #0
74BBE:  MOVW            R3, #0xFFFF
74BC2:  MOV.W           R5, #0xFFFFFFFF
74BC6:  MOVS            R6, #8
74BC8:  STRD.W          R3, R3, [SP,#0x148+var_138]
74BCC:  STRD.W          R6, R2, [SP,#0x148+var_148]
74BD0:  MOVS            R3, #1
74BD2:  STRD.W          R2, R5, [SP,#0x148+var_140]
74BD6:  STR             R2, [SP,#0x148+var_130]
74BD8:  MOV             R2, R8
74BDA:  BLX             R4
74BDC:  ADD             R0, SP, #0x148+var_128
74BDE:  BL              sub_86BF8
74BE2:  LDR             R0, [SP,#0x148+var_14]
74BE4:  LDR             R1, =(__stack_chk_guard_ptr - 0x74BEA)
74BE6:  ADD             R1, PC; __stack_chk_guard_ptr
74BE8:  LDR             R1, [R1]; __stack_chk_guard
74BEA:  LDR             R1, [R1]
74BEC:  CMP             R1, R0
74BEE:  ITTT EQ
74BF0:  ADDEQ           SP, SP, #0x138
74BF2:  POPEQ.W         {R8}
74BF6:  POPEQ           {R4-R7,PC}
74BF8:  BLX             __stack_chk_fail
