; =========================================================
; Game Engine Function: sub_157E1C
; Address            : 0x157E1C - 0x157E40
; =========================================================

157E1C:  PUSH            {R4,R6,R7,LR}
157E1E:  ADD             R7, SP, #8
157E20:  SUB.W           SP, SP, #0x800
157E24:  LDR             R3, [R1]
157E26:  ADD.W           R4, SP, #0x808+var_807
157E2A:  MOV             R2, R0
157E2C:  MOV             R0, R4
157E2E:  BL              sub_157FA8
157E32:  MOVS            R0, #2; int
157E34:  MOV             R1, R4; s
157E36:  BL              sub_159B70
157E3A:  ADD.W           SP, SP, #0x800
157E3E:  POP             {R4,R6,R7,PC}
