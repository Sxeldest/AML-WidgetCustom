; =========================================================
; Game Engine Function: sub_20118C
; Address            : 0x20118C - 0x2011FE
; =========================================================

20118C:  PUSH            {R4,R6,R7,LR}
20118E:  ADD             R7, SP, #8
201190:  LDR.W           LR, [R0,#4]
201194:  CMP.W           LR, #0
201198:  BEQ             locret_2011FC
20119A:  CMP.W           LR, #0x10
20119E:  BCC             loc_2011E0
2011A0:  BIC.W           R12, LR, #0xF
2011A4:  CMP.W           R12, #0
2011A8:  BEQ             loc_2011E0
2011AA:  ADD.W           R0, R2, LR
2011AE:  CMP             R0, R1
2011B0:  ITT HI
2011B2:  ADDHI.W         R0, R1, LR
2011B6:  CMPHI           R0, R2
2011B8:  BHI             loc_2011E0
2011BA:  ADD.W           R0, R1, R12
2011BE:  ADD.W           R3, R2, R12
2011C2:  MOV             R4, R12
2011C4:  VLD1.8          {D16-D17}, [R1]
2011C8:  SUBS            R4, #0x10
2011CA:  VLD1.8          {D18-D19}, [R2]!
2011CE:  VADD.I8         Q8, Q9, Q8
2011D2:  VST1.8          {D16-D17}, [R1]!
2011D6:  BNE             loc_2011C4
2011D8:  CMP             LR, R12
2011DA:  IT EQ
2011DC:  POPEQ           {R4,R6,R7,PC}
2011DE:  B               loc_2011E8
2011E0:  MOV.W           R12, #0
2011E4:  MOV             R3, R2
2011E6:  MOV             R0, R1
2011E8:  SUB.W           R1, LR, R12
2011EC:  LDRB            R2, [R0]
2011EE:  SUBS            R1, #1
2011F0:  LDRB.W          R4, [R3],#1
2011F4:  ADD             R2, R4
2011F6:  STRB.W          R2, [R0],#1
2011FA:  BNE             loc_2011EC
2011FC:  POP             {R4,R6,R7,PC}
