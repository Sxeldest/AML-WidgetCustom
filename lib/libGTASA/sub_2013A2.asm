; =========================================================
; Game Engine Function: sub_2013A2
; Address            : 0x2013A2 - 0x201404
; =========================================================

2013A2:  PUSH            {R4-R7,LR}
2013A4:  ADD             R7, SP, #0xC
2013A6:  PUSH.W          {R8}
2013AA:  LDRB            R3, [R2]
2013AC:  LDRB            R5, [R1]
2013AE:  LDR             R6, [R0,#4]
2013B0:  ADDS            R0, R5, R3
2013B2:  STRB            R0, [R1]
2013B4:  CMP             R6, #2
2013B6:  BLT             loc_2013FE
2013B8:  ADD.W           R12, R1, R6
2013BC:  ADD.W           LR, R2, #1
2013C0:  ADDS            R1, #1
2013C2:  LDRB.W          R8, [LR],#1
2013C6:  UXTB            R0, R0
2013C8:  SUBS            R2, R0, R3
2013CA:  SUB.W           R4, R8, R3
2013CE:  MOV             R6, R2
2013D0:  IT MI
2013D2:  NEGMI           R6, R2
2013D4:  CMP             R4, #0
2013D6:  MOV             R5, R4
2013D8:  IT MI
2013DA:  NEGMI           R5, R4
2013DC:  CMP             R6, R5
2013DE:  ITT LT
2013E0:  MOVLT           R0, R8
2013E2:  MOVLT           R5, R6
2013E4:  ADDS            R2, R2, R4
2013E6:  IT MI
2013E8:  NEGMI           R2, R2
2013EA:  LDRB            R4, [R1]
2013EC:  CMP             R2, R5
2013EE:  IT LT
2013F0:  MOVLT           R0, R3
2013F2:  MOV             R3, R8
2013F4:  ADD             R0, R4
2013F6:  STRB.W          R0, [R1],#1
2013FA:  CMP             R1, R12
2013FC:  BCC             loc_2013C2
2013FE:  POP.W           {R8}
201402:  POP             {R4-R7,PC}
