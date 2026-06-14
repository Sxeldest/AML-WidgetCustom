; =========================================================
; Game Engine Function: ec_dec_bits
; Address            : 0x193FD4 - 0x194042
; =========================================================

193FD4:  PUSH            {R4-R7,LR}
193FD6:  ADD             R7, SP, #0xC
193FD8:  PUSH.W          {R11}
193FDC:  LDRD.W          R2, R3, [R0,#0xC]
193FE0:  CMP             R3, R1
193FE2:  BCS             loc_194024
193FE4:  CMP             R3, #0x11
193FE6:  MOV             R4, R3
193FE8:  IT LE
193FEA:  MOVLE           R4, #0x11
193FEC:  LDRD.W          R12, LR, [R0,#4]
193FF0:  ADDS            R4, #7
193FF2:  SUBS            R4, R4, R3
193FF4:  BIC.W           R4, R4, #7
193FF8:  ADD             R4, R3
193FFA:  CMP             LR, R12
193FFC:  BCS             loc_194010
193FFE:  ADD.W           LR, LR, #1
194002:  STR.W           LR, [R0,#8]
194006:  LDR             R5, [R0]
194008:  SUB.W           R6, R12, LR
19400C:  LDRB            R5, [R5,R6]
19400E:  B               loc_194012
194010:  MOVS            R5, #0
194012:  LSLS            R5, R3
194014:  ORRS            R2, R5
194016:  ADD.W           R5, R3, #8
19401A:  CMP             R3, #0x11
19401C:  MOV             R3, R5
19401E:  BLT             loc_193FFA
194020:  ADD.W           R3, R4, #8
194024:  SUBS            R3, R3, R1
194026:  STR             R3, [R0,#0x10]
194028:  LDR             R3, [R0,#0x14]
19402A:  LSR.W           R6, R2, R1
19402E:  STR             R6, [R0,#0xC]
194030:  ADD             R3, R1
194032:  STR             R3, [R0,#0x14]
194034:  MOVS            R0, #1
194036:  LSLS            R0, R1
194038:  SUBS            R0, #1
19403A:  ANDS            R0, R2
19403C:  POP.W           {R11}
194040:  POP             {R4-R7,PC}
