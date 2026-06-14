; =========================================================
; Game Engine Function: sub_F77BE
; Address            : 0xF77BE - 0xF7806
; =========================================================

F77BE:  PUSH            {R4-R7,LR}
F77C0:  ADD             R7, SP, #0xC
F77C2:  PUSH.W          {R8}
F77C6:  SUB             SP, SP, #0x10
F77C8:  MOV             R5, R1
F77CA:  ADD             R1, SP, #0x20+var_14
F77CC:  MOV             R4, R0
F77CE:  MOV             R0, R5
F77D0:  MOV             R8, R3
F77D2:  BL              sub_F7806
F77D6:  MOV             R6, R0
F77D8:  LDR             R0, [R0]
F77DA:  CBZ             R0, loc_F77E0
F77DC:  MOVS            R1, #0
F77DE:  B               loc_F77FA
F77E0:  MOV             R0, SP
F77E2:  MOV             R1, R5
F77E4:  MOV             R2, R8
F77E6:  BL              sub_F7876
F77EA:  LDR             R3, [SP,#0x20+var_20]
F77EC:  MOV             R0, R5
F77EE:  LDR             R1, [SP,#0x20+var_14]
F77F0:  MOV             R2, R6
F77F2:  BL              sub_F78C4
F77F6:  LDR             R0, [SP,#0x20+var_20]
F77F8:  MOVS            R1, #1
F77FA:  STRB            R1, [R4,#4]
F77FC:  STR             R0, [R4]
F77FE:  ADD             SP, SP, #0x10
F7800:  POP.W           {R8}
F7804:  POP             {R4-R7,PC}
