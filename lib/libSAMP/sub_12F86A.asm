; =========================================================
; Game Engine Function: sub_12F86A
; Address            : 0x12F86A - 0x12F8D4
; =========================================================

12F86A:  PUSH            {R4-R7,LR}
12F86C:  ADD             R7, SP, #0xC
12F86E:  PUSH.W          {R11}
12F872:  SUB             SP, SP, #0x10
12F874:  MOV             R6, R0
12F876:  MOV             R4, R0
12F878:  LDRB.W          R0, [R6,#0x64]!
12F87C:  MOV             R5, R1
12F87E:  LSLS            R0, R0, #0x1F
12F880:  ITT NE
12F882:  LDRNE           R0, [R4,#0x6C]; void *
12F884:  BLXNE           j__ZdlPv; operator delete(void *)
12F888:  VLDR            D16, [R5]
12F88C:  LDR             R0, [R5,#8]
12F88E:  STR             R0, [R6,#8]
12F890:  MOVS            R0, #0
12F892:  VSTR            D16, [R6]
12F896:  STRH            R0, [R5]
12F898:  LDRB.W          R0, [R4,#0x64]
12F89C:  LDRD.W          R2, R1, [R4,#0x68]
12F8A0:  ANDS.W          R3, R0, #1
12F8A4:  ITT EQ
12F8A6:  ADDEQ           R1, R6, #1
12F8A8:  LSREQ           R2, R0, #1
12F8AA:  MOV             R0, SP
12F8AC:  BL              sub_164D04
12F8B0:  MOV             R5, R4
12F8B2:  LDRB.W          R0, [R5,#0x58]!
12F8B6:  LSLS            R0, R0, #0x1F
12F8B8:  ITT NE
12F8BA:  LDRNE           R0, [R4,#0x60]; void *
12F8BC:  BLXNE           j__ZdlPv; operator delete(void *)
12F8C0:  VLDR            D16, [SP,#0x20+var_20]
12F8C4:  LDR             R0, [SP,#0x20+var_18]
12F8C6:  STR             R0, [R5,#8]
12F8C8:  VSTR            D16, [R5]
12F8CC:  ADD             SP, SP, #0x10
12F8CE:  POP.W           {R11}
12F8D2:  POP             {R4-R7,PC}
