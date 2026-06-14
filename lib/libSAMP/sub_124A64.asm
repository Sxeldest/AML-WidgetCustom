; =========================================================
; Game Engine Function: sub_124A64
; Address            : 0x124A64 - 0x124A9E
; =========================================================

124A64:  PUSH            {R4-R7,LR}
124A66:  ADD             R7, SP, #0xC
124A68:  PUSH.W          {R11}
124A6C:  LDR             R0, =(dword_238E94 - 0x124A74)
124A6E:  LDR             R2, =(dword_238E9C - 0x124A76)
124A70:  ADD             R0, PC; dword_238E94
124A72:  ADD             R2, PC; dword_238E9C
124A74:  LDR             R0, [R0]
124A76:  LDR             R4, [R2]
124A78:  SUBS            R0, R1, R0
124A7A:  SUB.W           R5, R0, #0xA2
124A7E:  RSB.W           R6, R5, R5,LSL#4
124A82:  BL              sub_1259CC
124A86:  CMP             R5, R4
124A88:  MOV             R1, R0
124A8A:  IT LT
124A8C:  ADDLT.W         R1, R1, R6,LSL#2
124A90:  CMP.W           R5, #0xFFFFFFFF
124A94:  IT GT
124A96:  MOVGT           R0, R1
124A98:  POP.W           {R11}
124A9C:  POP             {R4-R7,PC}
