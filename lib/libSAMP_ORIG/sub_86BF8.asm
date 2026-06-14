; =========================================================
; Game Engine Function: sub_86BF8
; Address            : 0x86BF8 - 0x86C14
; =========================================================

86BF8:  PUSH            {R4,R6,R7,LR}
86BFA:  ADD             R7, SP, #8
86BFC:  MOV             R4, R0
86BFE:  LDRB            R0, [R0,#0x10]
86C00:  CBZ             R0, loc_86C10
86C02:  LDR             R0, [R4,#4]
86C04:  CMP.W           R0, #0x800
86C08:  ITT GT
86C0A:  LDRGT           R0, [R4,#0xC]; ptr
86C0C:  BLXGT           free
86C10:  MOV             R0, R4
86C12:  POP             {R4,R6,R7,PC}
