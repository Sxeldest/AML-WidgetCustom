; =========================================================
; Game Engine Function: sub_E2F64
; Address            : 0xE2F64 - 0xE2F7E
; =========================================================

E2F64:  PUSH            {R4,R5,R7,LR}
E2F66:  ADD             R7, SP, #8
E2F68:  MOV             R4, R1
E2F6A:  BL              sub_E2F7E
E2F6E:  MOV             R5, R0
E2F70:  MOV             R0, R4
E2F72:  BL              sub_E2F7E
E2F76:  EORS            R0, R5
E2F78:  EOR.W           R0, R0, #1
E2F7C:  POP             {R4,R5,R7,PC}
