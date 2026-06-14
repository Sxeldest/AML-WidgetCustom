; =========================================================
; Game Engine Function: sub_11FFDE
; Address            : 0x11FFDE - 0x120020
; =========================================================

11FFDE:  PUSH            {R4-R7,LR}
11FFE0:  ADD             R7, SP, #0xC
11FFE2:  PUSH.W          {R8}
11FFE6:  SUB             SP, SP, #8
11FFE8:  LDRD.W          R8, R4, [R7,#arg_0]
11FFEC:  LDR             R5, [R0,#0xC]
11FFEE:  LDRD.W          R6, R12, [R0,#4]
11FFF2:  LDR             R3, [R3]
11FFF4:  LDR             R2, [R2]
11FFF6:  ADD.W           R0, R6, R5,ASR#1
11FFFA:  LDR             R1, [R1]
11FFFC:  LDRB.W          LR, [R4]
120000:  LSLS            R4, R5, #0x1F
120002:  VLDR            S0, [R8]
120006:  ITT NE
120008:  LDRNE           R4, [R0]
12000A:  LDRNE.W         R12, [R4,R12]
12000E:  STR.W           LR, [SP,#0x18+var_14]
120012:  VSTR            S0, [SP,#0x18+var_18]
120016:  BLX             R12
120018:  ADD             SP, SP, #8
12001A:  POP.W           {R8}
12001E:  POP             {R4-R7,PC}
