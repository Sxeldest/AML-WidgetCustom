; =========================================================
; Game Engine Function: sub_F7BFA
; Address            : 0xF7BFA - 0xF7C48
; =========================================================

F7BFA:  PUSH            {R4-R7,LR}
F7BFC:  ADD             R7, SP, #0xC
F7BFE:  PUSH.W          {R8}
F7C02:  SUB             SP, SP, #0x18
F7C04:  MOV             R5, R1
F7C06:  ADD             R1, SP, #0x28+var_14
F7C08:  MOV             R4, R0
F7C0A:  MOV             R0, R5
F7C0C:  MOV             R8, R3
F7C0E:  BL              sub_F7806
F7C12:  MOV             R6, R0
F7C14:  LDR             R0, [R0]
F7C16:  CBZ             R0, loc_F7C1C
F7C18:  MOVS            R1, #0
F7C1A:  B               loc_F7C3C
F7C1C:  LDRD.W          R3, R0, [R7,#arg_0]
F7C20:  MOV             R1, R5
F7C22:  MOV             R2, R8
F7C24:  STR             R0, [SP,#0x28+var_28]
F7C26:  ADD             R0, SP, #0x28+var_20
F7C28:  BL              sub_F7C48
F7C2C:  LDR             R3, [SP,#0x28+var_20]
F7C2E:  MOV             R0, R5
F7C30:  LDR             R1, [SP,#0x28+var_14]
F7C32:  MOV             R2, R6
F7C34:  BL              sub_F78C4
F7C38:  LDR             R0, [SP,#0x28+var_20]
F7C3A:  MOVS            R1, #1
F7C3C:  STRB            R1, [R4,#4]
F7C3E:  STR             R0, [R4]
F7C40:  ADD             SP, SP, #0x18
F7C42:  POP.W           {R8}
F7C46:  POP             {R4-R7,PC}
