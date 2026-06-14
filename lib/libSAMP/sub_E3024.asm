; =========================================================
; Game Engine Function: sub_E3024
; Address            : 0xE3024 - 0xE307A
; =========================================================

E3024:  PUSH            {R4-R7,LR}
E3026:  ADD             R7, SP, #0xC
E3028:  PUSH.W          {R11}
E302C:  MOV             R4, R0
E302E:  LDR             R0, =(dword_23DAD8 - 0xE3036)
E3030:  MOVS            R1, #0
E3032:  ADD             R0, PC; dword_23DAD8
E3034:  STR             R1, [R0]
E3036:  BL              sub_164A14
E303A:  MOV.W           R0, #0xFFFFFFFF
E303E:  MOVW            R1, #0xAC44
E3042:  MOVS            R2, #0
E3044:  BL              sub_164A00
E3048:  MOV             R5, R0
E304A:  CBZ             R0, loc_E306C
E304C:  LDR             R1, =(aSaMp03 - 0xE3054); "SA-MP/0.3" ...
E304E:  MOVS            R0, #0x10
E3050:  ADD             R1, PC; "SA-MP/0.3"
E3052:  BL              sub_1649D8
E3056:  MOVS            R0, #0x15
E3058:  MOVS            R1, #1
E305A:  MOVS            R6, #1
E305C:  BL              sub_1649C4
E3060:  MOVS            R0, #0xB
E3062:  MOVW            R1, #0x2710
E3066:  BL              sub_1649C4
E306A:  STRB            R6, [R4]
E306C:  CMP             R5, #0
E306E:  IT NE
E3070:  MOVNE           R5, #1
E3072:  MOV             R0, R5
E3074:  POP.W           {R11}
E3078:  POP             {R4-R7,PC}
