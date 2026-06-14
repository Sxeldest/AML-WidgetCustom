; =========================================================
; Game Engine Function: sub_47DF9E
; Address            : 0x47DF9E - 0x47E008
; =========================================================

47DF9E:  PUSH            {R4-R7,LR}
47DFA0:  ADD             R7, SP, #0xC
47DFA2:  PUSH.W          {R8-R11}
47DFA6:  SUB             SP, SP, #0xC
47DFA8:  MOV             R5, R0
47DFAA:  MOV             R8, R3
47DFAC:  LDR.W           R6, [R5,#0x184]
47DFB0:  MOV             R9, R2
47DFB2:  MOV             R10, R1
47DFB4:  LDRB            R0, [R6,#0x18]
47DFB6:  CBZ             R0, loc_47DFBE
47DFB8:  ADD.W           R11, R6, #8
47DFBC:  B               loc_47DFD4
47DFBE:  LDR.W           R0, [R5,#0x188]
47DFC2:  ADD.W           R11, R6, #8
47DFC6:  MOV             R1, R11
47DFC8:  LDR             R2, [R0,#0xC]
47DFCA:  MOV             R0, R5
47DFCC:  BLX             R2
47DFCE:  CBZ             R0, loc_47E000
47DFD0:  MOVS            R0, #1
47DFD2:  STRB            R0, [R6,#0x18]
47DFD4:  LDR.W           R0, [R5,#0x18C]
47DFD8:  ADD.W           R2, R6, #0x1C
47DFDC:  LDR.W           R4, [R5,#0x118]
47DFE0:  MOV             R1, R11
47DFE2:  LDR.W           R12, [R0,#4]
47DFE6:  MOV             R0, R5
47DFE8:  MOV             R3, R4
47DFEA:  STRD.W          R10, R9, [SP,#0x28+var_28]
47DFEE:  STR.W           R8, [SP,#0x28+var_20]
47DFF2:  BLX             R12
47DFF4:  LDR             R0, [R6,#0x1C]
47DFF6:  CMP             R0, R4
47DFF8:  ITTT CS
47DFFA:  MOVCS           R0, #0
47DFFC:  STRCS           R0, [R6,#0x1C]
47DFFE:  STRBCS          R0, [R6,#0x18]
47E000:  ADD             SP, SP, #0xC
47E002:  POP.W           {R8-R11}
47E006:  POP             {R4-R7,PC}
