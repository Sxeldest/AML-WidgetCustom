; =========================================================
; Game Engine Function: INT123_synth_ntom_real_mono
; Address            : 0x238EC2 - 0x238F2E
; =========================================================

238EC2:  PUSH            {R4-R7,LR}
238EC4:  ADD             R7, SP, #0xC
238EC6:  PUSH.W          {R8,R9,R11}
238ECA:  SUB.W           SP, SP, #0x1000
238ECE:  MOV             R4, R1
238ED0:  MOVW            R5, #0xB2A0
238ED4:  MOVW            R6, #0xB2A8
238ED8:  MOV             R1, SP
238EDA:  LDR.W           R9, [R4,R5]
238EDE:  MOV             R2, R4
238EE0:  LDR.W           R8, [R4,R6]
238EE4:  STR             R1, [R4,R5]
238EE6:  MOVS            R1, #0
238EE8:  STR             R1, [R4,R6]
238EEA:  MOVS            R1, #0
238EEC:  MOVS            R3, #1
238EEE:  BLX             j_INT123_synth_ntom_real
238EF2:  STR.W           R9, [R4,R5]
238EF6:  ADDS            R0, R4, R6
238EF8:  LDR             R5, [R4,R6]
238EFA:  CMP             R5, #0x10
238EFC:  BCC             loc_238F1C
238EFE:  ADD.W           R1, R9, R8
238F02:  MOVS            R2, #0
238F04:  MOV             R3, SP
238F06:  VLDR            D16, [R3]
238F0A:  ADDS            R2, #1
238F0C:  ADDS            R3, #0x10
238F0E:  VSTR            D16, [R1]
238F12:  ADDS            R1, #8
238F14:  LDR             R5, [R0]
238F16:  CMP.W           R2, R5,LSR#4
238F1A:  BCC             loc_238F06
238F1C:  ADD.W           R1, R8, R5,LSR#1
238F20:  STR             R1, [R0]
238F22:  MOVS            R0, #0
238F24:  ADD.W           SP, SP, #0x1000
238F28:  POP.W           {R8,R9,R11}
238F2C:  POP             {R4-R7,PC}
