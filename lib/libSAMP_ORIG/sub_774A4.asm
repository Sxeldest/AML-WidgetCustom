; =========================================================
; Game Engine Function: sub_774A4
; Address            : 0x774A4 - 0x77524
; =========================================================

774A4:  PUSH            {R4-R7,LR}
774A6:  ADD             R7, SP, #0xC
774A8:  PUSH.W          {R8,R9,R11}
774AC:  MOV             R8, R0
774AE:  MOV             R9, R0
774B0:  LDR.W           R4, [R8,#0x1C]!
774B4:  ADD.W           R5, R8, #4
774B8:  CMP             R4, R5
774BA:  BEQ             loc_774FA
774BC:  LDR             R6, [R4,#0x1C]
774BE:  CBZ             R6, loc_774CE
774C0:  LDR             R1, [R6,#4]
774C2:  MOV             R0, R6
774C4:  BL              sub_78142
774C8:  MOV             R0, R6; void *
774CA:  BLX             j__ZdlPv; operator delete(void *)
774CE:  LDR             R0, [R4,#4]
774D0:  CBZ             R0, loc_774DC
774D2:  MOV             R4, R0
774D4:  LDR             R0, [R0]
774D6:  CMP             R0, #0
774D8:  BNE             loc_774D2
774DA:  B               loc_774B8
774DC:  MOV             R0, R4
774DE:  LDR.W           R1, [R0,#8]!
774E2:  LDR             R2, [R1]
774E4:  CMP             R2, R4
774E6:  MOV             R4, R1
774E8:  BEQ             loc_774B8
774EA:  LDR             R1, [R0]
774EC:  MOV             R0, R1
774EE:  LDR.W           R4, [R0,#8]!
774F2:  LDR             R2, [R4]
774F4:  CMP             R2, R1
774F6:  BNE             loc_774EA
774F8:  B               loc_774B8
774FA:  LDR.W           R1, [R9,#0x20]
774FE:  MOV             R0, R8
77500:  BL              sub_78110
77504:  LDR.W           R1, [R9,#0x14]
77508:  ADD.W           R0, R9, #0x10
7750C:  BL              sub_78142
77510:  LDR.W           R1, [R9,#8]
77514:  ADD.W           R0, R9, #4
77518:  BL              sub_78174
7751C:  MOV             R0, R9
7751E:  POP.W           {R8,R9,R11}
77522:  POP             {R4-R7,PC}
