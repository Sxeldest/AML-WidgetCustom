; =========================================================
; Game Engine Function: _ZN12FxSystemBP_c17FreePrtFromSystemEP10FxSystem_c
; Address            : 0x36DFC4 - 0x36E004
; =========================================================

36DFC4:  PUSH            {R4-R7,LR}
36DFC6:  ADD             R7, SP, #0xC
36DFC8:  PUSH.W          {R11}
36DFCC:  MOV             R5, R0
36DFCE:  MOV             R4, R1
36DFD0:  LDRSB.W         R0, [R5,#0x1B]
36DFD4:  CMP             R0, #1
36DFD6:  BLT             loc_36DFF4
36DFD8:  MOVS            R6, #0
36DFDA:  LDR             R0, [R5,#0x1C]
36DFDC:  LDR.W           R0, [R0,R6,LSL#2]
36DFE0:  LDR             R1, [R0]
36DFE2:  LDR             R2, [R1,#0x1C]
36DFE4:  MOV             R1, R4
36DFE6:  BLX             R2
36DFE8:  CBNZ            R0, loc_36DFFC
36DFEA:  LDRSB.W         R0, [R5,#0x1B]
36DFEE:  ADDS            R6, #1
36DFF0:  CMP             R6, R0
36DFF2:  BLT             loc_36DFDA
36DFF4:  MOVS            R0, #0
36DFF6:  POP.W           {R11}
36DFFA:  POP             {R4-R7,PC}
36DFFC:  MOVS            R0, #1
36DFFE:  POP.W           {R11}
36E002:  POP             {R4-R7,PC}
