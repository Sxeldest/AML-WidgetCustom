; =========================================================
; Game Engine Function: sub_F2EB8
; Address            : 0xF2EB8 - 0xF2EE4
; =========================================================

F2EB8:  PUSH            {R4,R6,R7,LR}
F2EBA:  ADD             R7, SP, #8
F2EBC:  MOV             R4, R0
F2EBE:  LDR             R0, [R1,#0x10]
F2EC0:  CBZ             R0, loc_F2ECE
F2EC2:  CMP             R1, R0
F2EC4:  BEQ             loc_F2ED4
F2EC6:  LDR             R1, [R0]
F2EC8:  LDR             R1, [R1,#8]
F2ECA:  BLX             R1
F2ECC:  B               loc_F2ED0
F2ECE:  MOVS            R0, #0
F2ED0:  STR             R0, [R4,#0x10]
F2ED2:  B               loc_F2EE0
F2ED4:  STR             R4, [R4,#0x10]
F2ED6:  LDR             R0, [R1,#0x10]
F2ED8:  LDR             R1, [R0]
F2EDA:  LDR             R2, [R1,#0xC]
F2EDC:  MOV             R1, R4
F2EDE:  BLX             R2
F2EE0:  MOV             R0, R4
F2EE2:  POP             {R4,R6,R7,PC}
