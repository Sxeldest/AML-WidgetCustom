; =========================================================
; Game Engine Function: sub_E52C6
; Address            : 0xE52C6 - 0xE5348
; =========================================================

E52C6:  PUSH            {R4-R7,LR}
E52C8:  ADD             R7, SP, #0xC
E52CA:  PUSH.W          {R8-R10}
E52CE:  MOV             R9, R0
E52D0:  LDR             R0, [R1,#0x44]
E52D2:  CBZ             R0, loc_E5344
E52D4:  MOV             R6, R1
E52D6:  LDR             R1, [R0]
E52D8:  MOV             R5, R3
E52DA:  MOV             R10, R2
E52DC:  LDR             R1, [R1,#0x18]
E52DE:  BLX             R1
E52E0:  MOV             R4, R0
E52E2:  LDR             R0, [R6,#0x40]
E52E4:  MOV.W           R8, #0xFFFFFFFF
E52E8:  CBZ             R0, loc_E52F4
E52EA:  ORRS.W          R0, R10, R5
E52EE:  BEQ             loc_E5308
E52F0:  CMP             R4, #1
E52F2:  BGE             loc_E5308
E52F4:  MOVS            R5, #0
E52F6:  MOV.W           R0, #0xFFFFFFFF
E52FA:  STR.W           R5, [R9]
E52FE:  STRD.W          R8, R0, [R9,#8]
E5302:  POP.W           {R8-R10}
E5306:  POP             {R4-R7,PC}
E5308:  LDR             R0, [R6]
E530A:  LDR             R1, [R0,#0x18]
E530C:  MOV             R0, R6
E530E:  BLX             R1
E5310:  MOVS            R5, #0
E5312:  CMP             R0, #0
E5314:  BNE             loc_E52F6
E5316:  LDR             R2, [R7,#whence]; whence
E5318:  CMP             R2, #2
E531A:  BHI             loc_E52F6
E531C:  LDR             R0, [R6,#0x40]; stream
E531E:  MOVS            R1, #0
E5320:  CMP             R4, #0
E5322:  IT GT
E5324:  MULGT.W         R1, R4, R10; off
E5328:  MOVS            R5, #0
E532A:  BLX             fseeko
E532E:  CMP             R0, #0
E5330:  MOV.W           R0, #0xFFFFFFFF
E5334:  BNE             loc_E52FA
E5336:  LDR             R0, [R6,#0x40]; stream
E5338:  BLX             ftello
E533C:  LDR             R5, [R6,#0x48]
E533E:  MOV             R8, R0
E5340:  ASRS            R0, R0, #0x1F
E5342:  B               loc_E52FA
E5344:  BL              sub_E5754
