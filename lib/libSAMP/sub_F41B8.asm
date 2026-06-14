; =========================================================
; Game Engine Function: sub_F41B8
; Address            : 0xF41B8 - 0xF41F6
; =========================================================

F41B8:  PUSH            {R4-R7,LR}
F41BA:  ADD             R7, SP, #0xC
F41BC:  PUSH.W          {R8}
F41C0:  SUB             SP, SP, #0xD8
F41C2:  LDR.W           R8, [R0]
F41C6:  MOV             R5, R0
F41C8:  MOV             R0, R8
F41CA:  BL              sub_F5428
F41CE:  CBNZ            R0, loc_F41EE
F41D0:  LDM.W           R5, {R1-R3}
F41D4:  ADD.W           R0, R5, #0xC
F41D8:  MOVS            R5, #0xD4
F41DA:  MOV             R4, SP
F41DC:  LDR.W           R6, [R0],#4
F41E0:  SUBS            R5, #4
F41E2:  STR.W           R6, [R4],#4
F41E6:  BNE             loc_F41DC
F41E8:  MOV             R0, R8
F41EA:  BL              sub_F53E0
F41EE:  ADD             SP, SP, #0xD8
F41F0:  POP.W           {R8}
F41F4:  POP             {R4-R7,PC}
