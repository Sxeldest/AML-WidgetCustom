; =========================================================
; Game Engine Function: sub_152EC6
; Address            : 0x152EC6 - 0x152EE2
; =========================================================

152EC6:  PUSH            {R4,R6,R7,LR}
152EC8:  ADD             R7, SP, #8
152ECA:  LDR             R1, [R0,#8]; void *
152ECC:  MOV             R4, R0
152ECE:  BL              sub_152EE2
152ED2:  LDR             R0, [R4]; void *
152ED4:  MOVS            R1, #0
152ED6:  STR             R1, [R4]
152ED8:  CBZ             R0, loc_152EDE
152EDA:  BLX             j__ZdlPv; operator delete(void *)
152EDE:  MOV             R0, R4
152EE0:  POP             {R4,R6,R7,PC}
