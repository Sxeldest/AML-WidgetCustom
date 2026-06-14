; =========================================================
; Game Engine Function: _Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_
; Address            : 0x213DE6 - 0x213E14
; =========================================================

213DE6:  PUSH            {R4-R7,LR}
213DE8:  ADD             R7, SP, #0xC
213DEA:  PUSH.W          {R8,R9,R11}
213DEE:  MOV             R8, R0
213DF0:  MOV             R9, R2
213DF2:  MOV             R5, R8
213DF4:  MOV             R6, R1
213DF6:  LDR.W           R0, [R5,#8]!
213DFA:  CMP             R0, R5
213DFC:  BEQ             loc_213E0C
213DFE:  LDR.W           R4, [R0],#-0x40
213E02:  MOV             R1, R9
213E04:  BLX             R6
213E06:  CMP             R0, #0
213E08:  MOV             R0, R4
213E0A:  BNE             loc_213DFA
213E0C:  MOV             R0, R8
213E0E:  POP.W           {R8,R9,R11}
213E12:  POP             {R4-R7,PC}
