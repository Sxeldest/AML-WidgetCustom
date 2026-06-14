; =========================================================
; Game Engine Function: sub_FFB70
; Address            : 0xFFB70 - 0xFFBA6
; =========================================================

FFB70:  PUSH            {R4,R5,R7,LR}
FFB72:  ADD             R7, SP, #8
FFB74:  MOV             R4, R1
FFB76:  LDR             R1, =(aConstructionVt - 0xFFB80); "construction vtable for " ...
FFB78:  MOV             R5, R0
FFB7A:  MOV             R0, R4
FFB7C:  ADD             R1, PC; "construction vtable for "
FFB7E:  ADD.W           R2, R1, #0x18
FFB82:  BL              sub_FFB40
FFB86:  LDR             R0, [R5,#8]
FFB88:  MOV             R1, R4
FFB8A:  BL              sub_FE074
FFB8E:  LDR             R1, =(aIn - 0xFFB96); "-in-" ...
FFB90:  MOV             R0, R4
FFB92:  ADD             R1, PC; "-in-"
FFB94:  ADDS            R2, R1, #4
FFB96:  BL              sub_FFB40
FFB9A:  LDR             R0, [R5,#0xC]
FFB9C:  MOV             R1, R4
FFB9E:  POP.W           {R4,R5,R7,LR}
FFBA2:  B.W             sub_FE074
