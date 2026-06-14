; =========================================================
; Game Engine Function: sub_85278
; Address            : 0x85278 - 0x85322
; =========================================================

85278:  PUSH            {R4-R7,LR}
8527A:  ADD             R7, SP, #0xC
8527C:  PUSH.W          {R8}
85280:  MOV             R8, R0
85282:  LDR             R0, =(off_114D34 - 0x8528A)
85284:  MOV             R4, R1
85286:  ADD             R0, PC; off_114D34
85288:  LDR             R0, [R0]; off_1ABF40
8528A:  LDR             R5, [R0]
8528C:  MOV             R0, R1
8528E:  BL              sub_7DB44
85292:  MOVS            R1, #2
85294:  MOV.W           R2, #0x41000000
85298:  BLX             R5
8529A:  LDR.W           R5, [R8,#0x40]
8529E:  ADD.W           R6, R8, #0x44 ; 'D'
852A2:  CMP             R5, R6
852A4:  BEQ             loc_852DC
852A6:  LDR             R0, [R5,#0x14]
852A8:  LDR             R1, [R0]
852AA:  LDR             R2, [R1,#8]
852AC:  MOV             R1, R4
852AE:  BLX             R2
852B0:  LDR             R0, [R5,#4]
852B2:  CBZ             R0, loc_852BE
852B4:  MOV             R5, R0
852B6:  LDR             R0, [R0]
852B8:  CMP             R0, #0
852BA:  BNE             loc_852B4
852BC:  B               loc_852A2
852BE:  MOV             R0, R5
852C0:  LDR.W           R1, [R0,#8]!
852C4:  LDR             R2, [R1]
852C6:  CMP             R2, R5
852C8:  MOV             R5, R1
852CA:  BEQ             loc_852A2
852CC:  LDR             R1, [R0]
852CE:  MOV             R0, R1
852D0:  LDR.W           R5, [R0,#8]!
852D4:  LDR             R2, [R5]
852D6:  CMP             R2, R1
852D8:  BNE             loc_852CC
852DA:  B               loc_852A2
852DC:  LDR.W           R6, [R8,#0x4C]
852E0:  ADD.W           R5, R8, #0x50 ; 'P'
852E4:  CMP             R6, R5
852E6:  BEQ             loc_8531C
852E8:  LDR             R0, [R6,#0x14]
852EA:  MOV             R1, R4
852EC:  BL              sub_7DED0
852F0:  LDR             R0, [R6,#4]
852F2:  CBZ             R0, loc_852FE
852F4:  MOV             R6, R0
852F6:  LDR             R0, [R0]
852F8:  CMP             R0, #0
852FA:  BNE             loc_852F4
852FC:  B               loc_852E4
852FE:  MOV             R0, R6
85300:  LDR.W           R1, [R0,#8]!
85304:  LDR             R2, [R1]
85306:  CMP             R2, R6
85308:  MOV             R6, R1
8530A:  BEQ             loc_852E4
8530C:  LDR             R1, [R0]
8530E:  MOV             R0, R1
85310:  LDR.W           R6, [R0,#8]!
85314:  LDR             R2, [R6]
85316:  CMP             R2, R1
85318:  BNE             loc_8530C
8531A:  B               loc_852E4
8531C:  POP.W           {R8}
85320:  POP             {R4-R7,PC}
