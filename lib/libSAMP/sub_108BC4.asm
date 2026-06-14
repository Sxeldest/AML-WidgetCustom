; =========================================================
; Game Engine Function: sub_108BC4
; Address            : 0x108BC4 - 0x108C18
; =========================================================

108BC4:  PUSH            {R4-R7,LR}
108BC6:  ADD             R7, SP, #0xC
108BC8:  PUSH.W          {R8}
108BCC:  VPUSH           {D8}
108BD0:  SUB             SP, SP, #8; float
108BD2:  VLDR            S16, [R7,#arg_0]
108BD6:  MOV             R8, R3
108BD8:  MOV             R5, R2
108BDA:  MOV             R6, R1
108BDC:  MOV             R4, R0
108BDE:  VSTR            S16, [SP,#0x20+var_20]
108BE2:  BL              sub_108974
108BE6:  LDR             R0, =(dword_25DAE4 - 0x108BEC)
108BE8:  ADD             R0, PC; dword_25DAE4
108BEA:  LDR             R1, [R0]
108BEC:  LDR             R2, =(dword_25DAE8 - 0x108BF6)
108BEE:  ADD.W           R3, R1, R1,LSL#2
108BF2:  ADD             R2, PC; dword_25DAE8
108BF4:  ADDS            R1, #1
108BF6:  STR             R1, [R0]
108BF8:  ADD.W           R0, R2, R3,LSL#2
108BFC:  STR.W           R4, [R2,R3,LSL#2]
108C00:  VSTR            S16, [R0,#0x10]
108C04:  STRD.W          R6, R5, [R0,#4]
108C08:  STR.W           R8, [R0,#0xC]
108C0C:  ADD             SP, SP, #8
108C0E:  VPOP            {D8}
108C12:  POP.W           {R8}
108C16:  POP             {R4-R7,PC}
