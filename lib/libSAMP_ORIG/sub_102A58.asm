; =========================================================
; Game Engine Function: sub_102A58
; Address            : 0x102A58 - 0x102A9E
; =========================================================

102A58:  PUSH            {R4-R7,LR}
102A5A:  ADD             R7, SP, #0xC
102A5C:  PUSH.W          {R11}
102A60:  ADD.W           R0, R0, #0x198
102A64:  MOV             R5, R1
102A66:  MOVS            R1, #0x1C
102A68:  MOV             R4, R2
102A6A:  BL              sub_FFA98
102A6E:  MOV             R6, R0
102A70:  MOV             R0, R5; s
102A72:  BLX             strlen
102A76:  LDR             R1, =0x1010134
102A78:  ADD             R0, R5
102A7A:  STR             R1, [R6,#4]
102A7C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x102A82); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
102A7E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
102A80:  ADDS            R1, #8
102A82:  STR             R1, [R6]
102A84:  LDR             R1, [R4]
102A86:  STR             R1, [R6,#0x10]
102A88:  STR             R5, [R6,#8]
102A8A:  STR             R0, [R6,#0xC]
102A8C:  LDR             R0, =(asc_50037 - 0x102A92); ")" ...
102A8E:  ADD             R0, PC; ")"
102A90:  STR             R0, [R6,#0x14]
102A92:  ADDS            R0, #1
102A94:  STR             R0, [R6,#0x18]
102A96:  MOV             R0, R6
102A98:  POP.W           {R11}
102A9C:  POP             {R4-R7,PC}
