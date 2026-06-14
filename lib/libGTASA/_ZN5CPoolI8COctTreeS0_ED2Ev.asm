; =========================================================
; Game Engine Function: _ZN5CPoolI8COctTreeS0_ED2Ev
; Address            : 0x45CE1C - 0x45CE56
; =========================================================

45CE1C:  PUSH            {R4,R5,R7,LR}
45CE1E:  ADD             R7, SP, #8
45CE20:  MOV             R4, R0
45CE22:  LDR             R0, [R4,#8]
45CE24:  CMP             R0, #1
45CE26:  BLT             loc_45CE52
45CE28:  LDRB            R0, [R4,#0x10]
45CE2A:  CBZ             R0, loc_45CE46
45CE2C:  LDR             R0, [R4]; void *
45CE2E:  CMP             R0, #0
45CE30:  IT NE
45CE32:  BLXNE           _ZdaPv; operator delete[](void *)
45CE36:  MOV             R5, R4
45CE38:  LDR.W           R0, [R5,#4]!; void *
45CE3C:  CMP             R0, #0
45CE3E:  IT NE
45CE40:  BLXNE           _ZdaPv; operator delete[](void *)
45CE44:  B               loc_45CE48
45CE46:  ADDS            R5, R4, #4
45CE48:  MOVS            R0, #0
45CE4A:  STR             R0, [R4]
45CE4C:  STR             R0, [R5]
45CE4E:  STRD.W          R0, R0, [R4,#8]
45CE52:  MOV             R0, R4
45CE54:  POP             {R4,R5,R7,PC}
