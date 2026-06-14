; =========================================================
; Game Engine Function: _Z13findDataMatchPKcS0_
; Address            : 0x279EB0 - 0x279EF4
; =========================================================

279EB0:  PUSH            {R7,LR}
279EB2:  MOV             R7, SP
279EB4:  LDRB            R3, [R0]
279EB6:  CBZ             R3, loc_279EF0
279EB8:  LDRB.W          R12, [R1],#1
279EBC:  UXTB            R2, R3
279EBE:  CMP             R2, R12
279EC0:  BNE             loc_279EE8
279EC2:  CMP.W           R12, #0
279EC6:  BEQ             locret_279EF2
279EC8:  MOVS            R3, #0
279ECA:  LDRB.W          LR, [R1,R3]
279ECE:  CMP.W           LR, #0
279ED2:  BEQ             locret_279EF2
279ED4:  ADDS            R2, R0, R3
279ED6:  ADDS            R3, #1
279ED8:  LDRB            R2, [R2,#1]
279EDA:  CMP             R2, LR
279EDC:  BEQ             loc_279ECA
279EDE:  CMP.W           R12, #0
279EE2:  IT EQ
279EE4:  POPEQ           {R7,PC}
279EE6:  ADD             R0, R3
279EE8:  LDRB.W          R3, [R0,#1]!
279EEC:  CMP             R3, #0
279EEE:  BNE             loc_279EBC
279EF0:  MOVS            R0, #0
279EF2:  POP             {R7,PC}
