; =========================================================
; Game Engine Function: sub_108EA0
; Address            : 0x108EA0 - 0x108EEE
; =========================================================

108EA0:  PUSH            {R4,R6,R7,LR}
108EA2:  ADD             R7, SP, #8
108EA4:  CBZ             R0, locret_108ED6
108EA6:  MOV             R4, R0
108EA8:  MOVW            R0, #:lower16:(loc_2141EC+1)
108EAC:  LDR             R1, [R4]
108EAE:  MOVT            R0, #:upper16:(loc_2141EC+1)
108EB2:  CMP             R1, #2
108EB4:  BEQ             loc_108ED8
108EB6:  CMP             R1, #1
108EB8:  BNE             locret_108ED6
108EBA:  LDR             R1, =(off_23494C - 0x108EC0)
108EBC:  ADD             R1, PC; off_23494C
108EBE:  LDR             R1, [R1]; dword_23DF24
108EC0:  LDR             R1, [R1]
108EC2:  ADD             R1, R0
108EC4:  MOV             R0, R4
108EC6:  BLX             R1
108EC8:  LDR             R4, [R4,#4]
108ECA:  CBZ             R4, locret_108ED6
108ECC:  MOV             R0, #0x1D846D
108ED4:  B               loc_108EDC
108ED6:  POP             {R4,R6,R7,PC}
108ED8:  ADD.W           R0, R0, #0x420
108EDC:  LDR             R1, =(off_23494C - 0x108EE2)
108EDE:  ADD             R1, PC; off_23494C
108EE0:  LDR             R1, [R1]; dword_23DF24
108EE2:  LDR             R1, [R1]
108EE4:  ADD             R1, R0
108EE6:  MOV             R0, R4
108EE8:  POP.W           {R4,R6,R7,LR}
108EEC:  BX              R1
