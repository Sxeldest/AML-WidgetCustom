; =========================================================
; Game Engine Function: sub_A3D60
; Address            : 0xA3D60 - 0xA3E34
; =========================================================

A3D60:  PUSH            {R4-R7,LR}
A3D62:  ADD             R7, SP, #0xC
A3D64:  PUSH.W          {R8}
A3D68:  LDRD.W          R12, R8, [R1,#4]
A3D6C:  CMP             R12, R8
A3D6E:  BGE             loc_A3D8C
A3D70:  LDR             R2, [R1]
A3D72:  ADD.W           LR, R12, #1
A3D76:  STR.W           LR, [R1,#4]
A3D7A:  LDRB.W          R2, [R2,R12]
A3D7E:  LSLS            R2, R2, #8
A3D80:  CMP             LR, R8
A3D82:  BLT             loc_A3D94
A3D84:  MOVS            R3, #0
A3D86:  ORRS            R3, R2
A3D88:  BNE             loc_A3DA6
A3D8A:  B               loc_A3E0C
A3D8C:  MOVS            R2, #0
A3D8E:  MOV             LR, R12
A3D90:  CMP             LR, R8
A3D92:  BGE             loc_A3D84
A3D94:  LDR             R3, [R1]
A3D96:  ADD.W           R4, LR, #1
A3D9A:  STR             R4, [R1,#4]
A3D9C:  LDRB.W          R3, [R3,LR]
A3DA0:  MOV             LR, R4
A3DA2:  ORRS            R3, R2
A3DA4:  BEQ             loc_A3E0C
A3DA6:  CMP             LR, R8
A3DA8:  BGE             loc_A3DBA
A3DAA:  LDR             R2, [R1]
A3DAC:  ADD.W           R4, LR, #1
A3DB0:  STR             R4, [R1,#4]
A3DB2:  LDRB.W          R2, [R2,LR]
A3DB6:  MOV             LR, R4
A3DB8:  B               loc_A3DBC
A3DBA:  MOVS            R2, #0
A3DBC:  MLA.W           R5, R2, R3, LR
A3DC0:  CMP             R8, R5
A3DC2:  MOV             R6, R5
A3DC4:  IT LT
A3DC6:  MOVLT           R6, R8
A3DC8:  CMP             R5, #0
A3DCA:  IT MI
A3DCC:  MOVMI           R6, R8
A3DCE:  CBZ             R2, loc_A3DF4
A3DD0:  MOVS            R4, #0
A3DD2:  B               loc_A3DE8
A3DD4:  LDR             R5, [R1]
A3DD6:  ADDS            R3, R6, #1
A3DD8:  STR             R3, [R1,#4]
A3DDA:  LDRB            R5, [R5,R6]
A3DDC:  MOV             R6, R3
A3DDE:  LSLS            R3, R4, #8
A3DE0:  ORR.W           R4, R3, R5
A3DE4:  SUBS            R2, #1
A3DE6:  BEQ             loc_A3DF0
A3DE8:  CMP             R6, R8
A3DEA:  BLT             loc_A3DD4
A3DEC:  MOVS            R5, #0
A3DEE:  B               loc_A3DDE
A3DF0:  SUBS            R2, R4, #1
A3DF2:  B               loc_A3DF8
A3DF4:  MOV.W           R2, #0xFFFFFFFF
A3DF8:  ADD             R2, R6
A3DFA:  CMP             R8, R2
A3DFC:  MOV             LR, R2
A3DFE:  IT LT
A3E00:  MOVLT           LR, R8
A3E02:  CMP             R2, #0
A3E04:  IT MI
A3E06:  MOVMI           LR, R8
A3E08:  STR.W           LR, [R1,#4]
A3E0C:  MOVS            R2, #0
A3E0E:  STRD.W          R2, R2, [R0]
A3E12:  STR             R2, [R0,#8]
A3E14:  SUB.W           R2, LR, R12
A3E18:  ORRS.W          R3, R2, R12
A3E1C:  BMI             loc_A3E2E
A3E1E:  CMP             R8, R12
A3E20:  ITTTT GE
A3E22:  CMPGE           R8, LR
A3E24:  LDRGE           R1, [R1]
A3E26:  STRGE           R2, [R0,#8]
A3E28:  ADDGE           R1, R12
A3E2A:  IT GE
A3E2C:  STRGE           R1, [R0]
A3E2E:  POP.W           {R8}
A3E32:  POP             {R4-R7,PC}
