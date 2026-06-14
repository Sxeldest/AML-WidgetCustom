; =========================================================
; Game Engine Function: sub_E21B0
; Address            : 0xE21B0 - 0xE220A
; =========================================================

E21B0:  PUSH            {R4-R7,LR}
E21B2:  ADD             R7, SP, #0xC
E21B4:  PUSH.W          {R11}
E21B8:  MOV             R2, R0
E21BA:  LDR             R0, =(unk_91CE0 - 0xE21C6)
E21BC:  MOV             R5, R1
E21BE:  LDRH.W          R1, [R1,#9]
E21C2:  ADD             R0, PC; unk_91CE0
E21C4:  LDR.W           R4, [R5],#0xB
E21C8:  AND.W           R1, R1, #0xF
E21CC:  LDR             R6, [R7,#arg_0]
E21CE:  SUBS            R3, R4, R3
E21D0:  LDRB            R0, [R0,R1]
E21D2:  IT CC
E21D4:  MOVCC           R3, #0
E21D6:  LSRS.W          R1, R3, R0
E21DA:  SUB.W           R4, R3, R1
E21DE:  BEQ             loc_E21EA
E21E0:  MOV             R0, R2
E21E2:  MOV             R2, R5
E21E4:  BL              sub_DD992
E21E8:  MOV             R2, R0
E21EA:  MOV             R0, R6
E21EC:  MOV             R1, R2
E21EE:  BL              sub_E2210
E21F2:  CBZ             R4, loc_E2204
E21F4:  MOV             R1, R4
E21F6:  MOV             R2, R5
E21F8:  POP.W           {R11}
E21FC:  POP.W           {R4-R7,LR}
E2200:  B.W             sub_DD992
E2204:  POP.W           {R11}
E2208:  POP             {R4-R7,PC}
