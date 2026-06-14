; =========================================================
; Game Engine Function: sub_FDED8
; Address            : 0xFDED8 - 0xFDF18
; =========================================================

FDED8:  PUSH            {R4-R7,LR}
FDEDA:  ADD             R7, SP, #0xC
FDEDC:  PUSH.W          {R8}
FDEE0:  MOV             R8, R3
FDEE2:  MOV             R5, R2
FDEE4:  MOV             R6, R1
FDEE6:  MOV             R4, R0
FDEE8:  CBZ             R0, loc_FDEFE
FDEEA:  CBZ             R6, loc_FDEFE
FDEEC:  MOV             R0, R4
FDEEE:  MOV             R1, R6
FDEF0:  BL              sub_FDD9C
FDEF4:  CBZ             R0, loc_FDEFE
FDEF6:  MOVS            R0, #0
FDEF8:  POP.W           {R8}
FDEFC:  POP             {R4-R7,PC}
FDEFE:  LDR             R0, =(off_24756C - 0xFDF0A)
FDF00:  MOV             R1, R6
FDF02:  MOV             R2, R5
FDF04:  MOV             R3, R8
FDF06:  ADD             R0, PC; off_24756C
FDF08:  LDR.W           R12, [R0]
FDF0C:  MOV             R0, R4
FDF0E:  POP.W           {R8}
FDF12:  POP.W           {R4-R7,LR}
FDF16:  BX              R12
