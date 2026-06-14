; =========================================================
; Game Engine Function: sub_FFB40
; Address            : 0xFFB40 - 0xFFB70
; =========================================================

FFB40:  PUSH            {R4-R7,LR}
FFB42:  ADD             R7, SP, #0xC
FFB44:  PUSH.W          {R11}
FFB48:  SUBS            R5, R2, R1
FFB4A:  BEQ             loc_FFB6A
FFB4C:  MOV             R6, R1
FFB4E:  MOV             R1, R5
FFB50:  MOV             R4, R0
FFB52:  BL              sub_FE162
FFB56:  LDRD.W          R0, R1, [R4]
FFB5A:  MOV             R2, R5; n
FFB5C:  ADD             R0, R1; dest
FFB5E:  MOV             R1, R6; src
FFB60:  BLX             j_memmove
FFB64:  LDR             R0, [R4,#4]
FFB66:  ADD             R0, R5
FFB68:  STR             R0, [R4,#4]
FFB6A:  POP.W           {R11}
FFB6E:  POP             {R4-R7,PC}
