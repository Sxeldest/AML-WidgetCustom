; =========================================================
; Game Engine Function: sub_143CA0
; Address            : 0x143CA0 - 0x143D2A
; =========================================================

143CA0:  PUSH            {R4,R6,R7,LR}
143CA2:  ADD             R7, SP, #8
143CA4:  SUB             SP, SP, #8
143CA6:  MOV             R4, R0
143CA8:  MOVS            R0, #0
143CAA:  SUB.W           R1, R7, #-var_9; int
143CAE:  STRB.W          R0, [R7,#var_9]
143CB2:  MOV             R0, R4; int
143CB4:  MOVS            R2, #8
143CB6:  MOVS            R3, #1
143CB8:  BL              sub_17D786
143CBC:  LDRB.W          R1, [R7,#var_9]
143CC0:  SUB.W           R0, R1, #0x1C
143CC4:  UXTB            R0, R0
143CC6:  CMP             R0, #0xE5
143CC8:  BCC             loc_143D20
143CCA:  LDR             R2, [R4]
143CCC:  LDR             R0, [R4,#8]
143CCE:  CMP             R0, R2
143CD0:  BGE             loc_143CEA
143CD2:  LDR             R2, [R4,#0xC]
143CD4:  ASRS            R3, R0, #3
143CD6:  LDRB            R2, [R2,R3]
143CD8:  ADDS            R3, R0, #1
143CDA:  AND.W           R0, R0, #7
143CDE:  STR             R3, [R4,#8]
143CE0:  LSL.W           R0, R2, R0
143CE4:  UXTB            R0, R0
143CE6:  LSRS            R2, R0, #7
143CE8:  B               loc_143CEC
143CEA:  MOVS            R2, #0
143CEC:  LDR             R0, =(off_2349A8 - 0x143CF2)
143CEE:  ADD             R0, PC; off_2349A8
143CF0:  LDR             R0, [R0]; dword_381BF4
143CF2:  LDR             R0, [R0]
143CF4:  LDRB.W          R3, [R0,#0x84]
143CF8:  CBNZ            R3, loc_143D1A
143CFA:  CMP             R1, #1
143CFC:  BNE             loc_143D1A
143CFE:  LDR             R0, =(off_234A24 - 0x143D04)
143D00:  ADD             R0, PC; off_234A24
143D02:  LDR             R0, [R0]; dword_23DEEC
143D04:  LDR             R0, [R0]
143D06:  CBZ             R0, loc_143D20
143D08:  LDR             R0, [R0,#0x58]
143D0A:  CBZ             R0, loc_143D20
143D0C:  LDR.W           R1, [R0,#0x84]
143D10:  CBZ             R1, loc_143D20
143D12:  CBZ             R2, loc_143D24
143D14:  BL              sub_12F8D4
143D18:  B               loc_143D20
143D1A:  MOVS            R3, #1
143D1C:  BL              sub_17C2A4
143D20:  ADD             SP, SP, #8
143D22:  POP             {R4,R6,R7,PC}
143D24:  BL              sub_12F5E0
143D28:  B               loc_143D20
