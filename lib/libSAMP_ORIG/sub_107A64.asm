; =========================================================
; Game Engine Function: sub_107A64
; Address            : 0x107A64 - 0x107A8A
; =========================================================

107A64:  PUSH            {R7,LR}
107A66:  MOV             R7, SP
107A68:  CBZ             R2, loc_107A78
107A6A:  CMP             R0, R1
107A6C:  BEQ             loc_107A86
107A6E:  LDR             R1, [R1,#4]; s2
107A70:  LDR             R0, [R0,#4]; s1
107A72:  BLX             strcmp
107A76:  B               loc_107A7E
107A78:  LDR             R1, [R1,#4]
107A7A:  LDR             R0, [R0,#4]
107A7C:  SUBS            R0, R0, R1
107A7E:  CLZ.W           R0, R0
107A82:  LSRS            R0, R0, #5
107A84:  POP             {R7,PC}
107A86:  MOVS            R0, #1
107A88:  POP             {R7,PC}
