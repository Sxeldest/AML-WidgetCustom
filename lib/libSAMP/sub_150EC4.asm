; =========================================================
; Game Engine Function: sub_150EC4
; Address            : 0x150EC4 - 0x150EF2
; =========================================================

150EC4:  PUSH            {R4-R7,LR}
150EC6:  ADD             R7, SP, #0xC
150EC8:  PUSH.W          {R11}
150ECC:  CBZ             R1, loc_150EEC
150ECE:  MOV             R4, R1
150ED0:  MOVS            R5, #0
150ED2:  LDR             R0, [R4,#0xC]
150ED4:  LDR             R6, [R4]
150ED6:  STR             R5, [R4,#0xC]
150ED8:  CBZ             R0, loc_150EE0
150EDA:  LDR             R1, [R0]
150EDC:  LDR             R1, [R1,#4]
150EDE:  BLX             R1
150EE0:  MOV             R0, R4; void *
150EE2:  BLX             j__ZdlPv; operator delete(void *)
150EE6:  CMP             R6, #0
150EE8:  MOV             R4, R6
150EEA:  BNE             loc_150ED2
150EEC:  POP.W           {R11}
150EF0:  POP             {R4-R7,PC}
