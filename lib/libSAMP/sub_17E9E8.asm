; =========================================================
; Game Engine Function: sub_17E9E8
; Address            : 0x17E9E8 - 0x17EA02
; =========================================================

17E9E8:  PUSH            {R7,LR}
17E9EA:  MOV             R7, SP
17E9EC:  SUB             SP, SP, #8
17E9EE:  SUB.W           R0, R0, #0x9D0
17E9F2:  LDR.W           R12, [R7,#0xC]
17E9F6:  STR.W           R12, [SP,#0x10+var_C]
17E9FA:  BL              sub_17E954
17E9FE:  ADD             SP, SP, #8
17EA00:  POP             {R7,PC}
