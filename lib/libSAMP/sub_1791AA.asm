; =========================================================
; Game Engine Function: sub_1791AA
; Address            : 0x1791AA - 0x17926E
; =========================================================

1791AA:  PUSH            {R4,R5,R7,LR}
1791AC:  ADD             R7, SP, #8
1791AE:  LDRD.W          R1, LR, [R0,#4]
1791B2:  CMP             R1, LR
1791B4:  BGE             loc_179246
1791B6:  LDR.W           R12, [R0]
1791BA:  ADDS            R3, R1, #1
1791BC:  STR             R3, [R0,#4]
1791BE:  LDRB.W          R2, [R12,R1]
1791C2:  SUB.W           R4, R2, #0x20 ; ' '
1791C6:  UXTB            R4, R4
1791C8:  CMP             R4, #0xD6
1791CA:  BHI             loc_1791D2
1791CC:  SUB.W           R1, R2, #0x8B
1791D0:  B               loc_179248
1791D2:  ADD.W           R4, R2, #9
1791D6:  UXTB            R4, R4
1791D8:  CMP             R4, #3
1791DA:  BHI             loc_1791EC
1791DC:  LSLS            R2, R2, #8
1791DE:  CMP             R3, LR
1791E0:  BGE             loc_179210
1791E2:  ADDS            R1, #2
1791E4:  STR             R1, [R0,#4]
1791E6:  LDRB.W          R0, [R12,R3]
1791EA:  B               loc_179212
1791EC:  ADDS            R4, R2, #5
1791EE:  UXTB            R4, R4
1791F0:  CMP             R4, #3
1791F2:  BHI             loc_17921C
1791F4:  MOVS            R4, #0
1791F6:  SUB.W           R2, R4, R2,LSL#8
1791FA:  CMP             R3, LR
1791FC:  ITTT LT
1791FE:  ADDLT           R1, #2
179200:  STRLT           R1, [R0,#4]
179202:  LDRBLT.W        R4, [R12,R3]
179206:  SUBS            R0, R2, R4
179208:  MOVW            R1, #0xFA94
17920C:  ADD             R1, R0
17920E:  B               loc_179248
179210:  MOVS            R0, #0
179212:  ADD             R0, R2
179214:  MOVW            R1, #0xF694
179218:  SUBS            R1, R0, R1
17921A:  B               loc_179248
17921C:  CMP             R2, #0x1C
17921E:  BEQ             loc_17924C
179220:  CMP             R2, #0x1D
179222:  BNE             loc_179246
179224:  MOVS            R1, #0
179226:  MOVS            R2, #4
179228:  CMP             R3, LR
17922A:  BGE             loc_179238
17922C:  ADDS            R5, R3, #1
17922E:  STR             R5, [R0,#4]
179230:  LDRB.W          R4, [R12,R3]
179234:  MOV             R3, R5
179236:  B               loc_17923A
179238:  MOVS            R4, #0
17923A:  LSLS            R1, R1, #8
17923C:  SUBS            R2, #1
17923E:  ORR.W           R1, R1, R4
179242:  BNE             loc_179228
179244:  B               loc_179248
179246:  MOVS            R1, #0
179248:  MOV             R0, R1
17924A:  POP             {R4,R5,R7,PC}
17924C:  MOVS            R1, #0
17924E:  MOVS            R2, #2
179250:  CMP             R3, LR
179252:  BGE             loc_179260
179254:  ADDS            R5, R3, #1
179256:  STR             R5, [R0,#4]
179258:  LDRB.W          R4, [R12,R3]
17925C:  MOV             R3, R5
17925E:  B               loc_179262
179260:  MOVS            R4, #0
179262:  LSLS            R1, R1, #8
179264:  SUBS            R2, #1
179266:  ORR.W           R1, R1, R4
17926A:  BNE             loc_179250
17926C:  B               loc_179248
