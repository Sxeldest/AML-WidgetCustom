; =========================================================
; Game Engine Function: sub_139C38
; Address            : 0x139C38 - 0x139C78
; =========================================================

139C38:  PUSH            {R4-R7,LR}
139C3A:  ADD             R7, SP, #0xC
139C3C:  PUSH.W          {R8}
139C40:  LDR             R4, [R0]
139C42:  MOV             R8, R0
139C44:  CBZ             R4, loc_139C70
139C46:  LDR.W           R5, [R8,#4]
139C4A:  CMP             R5, R4
139C4C:  BEQ             loc_139C66
139C4E:  ADD.W           R6, R8, #8
139C52:  SUBS            R5, #0x3C ; '<'
139C54:  MOV             R0, R6
139C56:  MOV             R1, R5
139C58:  BL              sub_138F68
139C5C:  CMP             R5, R4
139C5E:  BNE             loc_139C52
139C60:  LDR.W           R0, [R8]
139C64:  B               loc_139C68
139C66:  MOV             R0, R4; void *
139C68:  STR.W           R4, [R8,#4]
139C6C:  BLX             j__ZdlPv; operator delete(void *)
139C70:  MOV             R0, R8
139C72:  POP.W           {R8}
139C76:  POP             {R4-R7,PC}
