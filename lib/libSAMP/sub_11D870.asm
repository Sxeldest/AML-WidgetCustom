; =========================================================
; Game Engine Function: sub_11D870
; Address            : 0x11D870 - 0x11D8CE
; =========================================================

11D870:  PUSH            {R4-R7,LR}
11D872:  ADD             R7, SP, #0xC
11D874:  PUSH.W          {R8-R10}
11D878:  SUB             SP, SP, #0x18
11D87A:  LDRD.W          R5, R6, [R7,#arg_8]
11D87E:  LDRD.W          LR, R9, [R7,#arg_0]
11D882:  LDR             R4, [R7,#arg_10]
11D884:  LDR.W           R8, [R6]
11D888:  LDR             R6, [R0,#8]
11D88A:  LDRB.W          R12, [R4]
11D88E:  LDR.W           R10, [R5]
11D892:  LDR.W           R4, [LR]
11D896:  LDRD.W          R5, LR, [R0]
11D89A:  LDR             R3, [R3]
11D89C:  LDR             R2, [R2]
11D89E:  ADD.W           R0, R5, R6,ASR#1
11D8A2:  LDR             R1, [R1]
11D8A4:  LSLS            R5, R6, #0x1F
11D8A6:  LDR.W           R9, [R9]
11D8AA:  ITT NE
11D8AC:  LDRNE           R5, [R0]
11D8AE:  LDRNE.W         LR, [R5,LR]
11D8B2:  CMP.W           R12, #0
11D8B6:  IT NE
11D8B8:  MOVNE.W         R12, #1
11D8BC:  STMEA.W         SP, {R4,R9,R10}
11D8C0:  STRD.W          R8, R12, [SP,#0x30+var_24]
11D8C4:  BLX             LR
11D8C6:  ADD             SP, SP, #0x18
11D8C8:  POP.W           {R8-R10}
11D8CC:  POP             {R4-R7,PC}
