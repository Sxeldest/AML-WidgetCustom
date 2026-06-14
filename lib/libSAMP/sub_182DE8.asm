; =========================================================
; Game Engine Function: sub_182DE8
; Address            : 0x182DE8 - 0x182E2E
; =========================================================

182DE8:  PUSH            {R4-R7,LR}
182DEA:  ADD             R7, SP, #0xC
182DEC:  PUSH.W          {R11}
182DF0:  LDR             R4, =(unk_381C10 - 0x182DFA)
182DF2:  MOV             R6, R0
182DF4:  MOV             R5, R1
182DF6:  ADD             R4, PC; unk_381C10
182DF8:  MOV             R0, R4; mutex
182DFA:  BLX             EnterCriticalSection_0
182DFE:  ADDW            R0, R6, #0x9A8
182E02:  BL              sub_184892
182E06:  STR             R5, [R0]
182E08:  MOVS            R2, #1
182E0A:  LDR.W           R0, [R6,#0x9B4]
182E0E:  LDR.W           R1, [R6,#0x9BC]
182E12:  STRB            R2, [R0,#4]
182E14:  ADDS            R1, #1
182E16:  LDR             R0, [R0,#8]
182E18:  STR.W           R0, [R6,#0x9B4]
182E1C:  MOV             R0, R4
182E1E:  STR.W           R1, [R6,#0x9BC]
182E22:  POP.W           {R11}
182E26:  POP.W           {R4-R7,LR}
182E2A:  B.W             sub_2243C4
