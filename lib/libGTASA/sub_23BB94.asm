; =========================================================
; Game Engine Function: sub_23BB94
; Address            : 0x23BB94 - 0x23BBD6
; =========================================================

23BB94:  PUSH            {R4,R6,R7,LR}
23BB96:  ADD             R7, SP, #8
23BB98:  SUB             SP, SP, #8
23BB9A:  MOV             R4, R1
23BB9C:  MOVW            R1, #0xB2E0
23BBA0:  LDR             R1, [R0,R1]
23BBA2:  MOVS            R2, #1
23BBA4:  LDR             R3, [R1,#8]
23BBA6:  SUB.W           R1, R7, #-var_9
23BBAA:  BLX             R3
23BBAC:  ADDS.W          R1, R0, #0xA
23BBB0:  BEQ             loc_23BBC8
23BBB2:  CMP             R0, #1
23BBB4:  BNE             loc_23BBD0
23BBB6:  LDR             R0, [R4]
23BBB8:  LDRB.W          R1, [R7,#var_9]
23BBBC:  ORR.W           R0, R1, R0,LSL#8
23BBC0:  STR             R0, [R4]
23BBC2:  MOVS            R0, #1
23BBC4:  ADD             SP, SP, #8
23BBC6:  POP             {R4,R6,R7,PC}
23BBC8:  MOV             R0, #0xFFFFFFF6
23BBCC:  ADD             SP, SP, #8
23BBCE:  POP             {R4,R6,R7,PC}
23BBD0:  MOVS            R0, #0
23BBD2:  ADD             SP, SP, #8
23BBD4:  POP             {R4,R6,R7,PC}
