; =========================================================
; Game Engine Function: sub_EFC1E
; Address            : 0xEFC1E - 0xEFC70
; =========================================================

EFC1E:  PUSH            {R4-R7,LR}
EFC20:  ADD             R7, SP, #0xC
EFC22:  PUSH.W          {R11}
EFC26:  MOVW            R1, #0x270F
EFC2A:  MOV             R4, R0
EFC2C:  MOVS            R0, #0
EFC2E:  SUBS            R1, R1, R2
EFC30:  MOV             R5, R2
EFC32:  SBCS            R0, R3
EFC34:  BCC             loc_EFC60
EFC36:  UXTH            R0, R5
EFC38:  MOVW            R1, #0x147B
EFC3C:  LSRS            R0, R0, #2
EFC3E:  MULS            R0, R1
EFC40:  LSRS            R6, R0, #0x11
EFC42:  MOV             R0, R4
EFC44:  MOV             R1, R6
EFC46:  BL              sub_EFC70
EFC4A:  MOVS            R0, #0x64 ; 'd'
EFC4C:  MLS.W           R0, R6, R0, R5
EFC50:  UXTH            R1, R0
EFC52:  MOV             R0, R4
EFC54:  POP.W           {R11}
EFC58:  POP.W           {R4-R7,LR}
EFC5C:  B.W             sub_EFC70
EFC60:  MOV             R0, R4
EFC62:  MOV             R2, R5
EFC64:  POP.W           {R11}
EFC68:  POP.W           {R4-R7,LR}
EFC6C:  B.W             sub_EF194
