; =========================================================
; Game Engine Function: mpg123_replace_buffer
; Address            : 0x225A38 - 0x225A9E
; =========================================================

225A38:  PUSH            {R4-R7,LR}
225A3A:  ADD             R7, SP, #0xC
225A3C:  PUSH.W          {R8,R9,R11}
225A40:  MOV             R6, R1
225A42:  MOV             R5, R2
225A44:  CMP             R6, #0
225A46:  MOV             R4, R0
225A48:  ITT NE
225A4A:  LSRNE           R0, R5, #0xE
225A4C:  CMPNE           R0, #8
225A4E:  BLS             loc_225A8C
225A50:  MOVW            R0, #0xB2C0
225A54:  MOVW            R2, #0xB2A0
225A58:  LDR             R1, [R4,R0]
225A5A:  ADD.W           R8, R4, R2
225A5E:  ADD.W           R9, R4, R0
225A62:  CBZ             R1, loc_225A70
225A64:  LDR.W           R0, [R8]; p
225A68:  CMP             R0, #0
225A6A:  IT NE
225A6C:  BLXNE           free
225A70:  MOVS            R0, #0
225A72:  MOVW            R1, #0xB2A8
225A76:  STR.W           R0, [R9]
225A7A:  STR.W           R6, [R8]
225A7E:  STR             R0, [R4,R1]
225A80:  MOVW            R1, #0xB2AC
225A84:  STR             R5, [R4,R1]
225A86:  POP.W           {R8,R9,R11}
225A8A:  POP             {R4-R7,PC}
225A8C:  MOVW            R0, #0xB468
225A90:  MOVS            R1, #6
225A92:  STR             R1, [R4,R0]
225A94:  MOV.W           R0, #0xFFFFFFFF
225A98:  POP.W           {R8,R9,R11}
225A9C:  POP             {R4-R7,PC}
