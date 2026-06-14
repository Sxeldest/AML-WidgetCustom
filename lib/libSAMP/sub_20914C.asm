; =========================================================
; Game Engine Function: sub_20914C
; Address            : 0x20914C - 0x209214
; =========================================================

20914C:  PUSH            {R4-R7,LR}
20914E:  ADD             R7, SP, #0xC
209150:  PUSH.W          {R8-R11}
209154:  STR             R0, [R2]
209156:  LDRB            R0, [R7,#arg_C]
209158:  LDR             R4, [R7,#arg_4]
20915A:  LDR.W           R12, [R7,#arg_0]
20915E:  LSLS            R0, R0, #0x1E
209160:  STR             R3, [R4]
209162:  BPL             loc_209182
209164:  SUB.W           R0, R12, R3
209168:  CMP             R0, #2
20916A:  BGE             loc_209170
20916C:  MOVS            R0, #1
20916E:  B               loc_20920E
209170:  ADDS            R0, R3, #1
209172:  STR             R0, [R4]
209174:  MOVS            R0, #0xFE
209176:  STRB            R0, [R3]
209178:  LDR             R0, [R4]
20917A:  ADDS            R3, R0, #1
20917C:  STR             R3, [R4]
20917E:  MOVS            R3, #0xFF
209180:  STRB            R3, [R0]
209182:  LDR.W           R10, [R7,#arg_8]
209186:  MOVW            R8, #0x7FF
20918A:  LDR             R0, [R2]
20918C:  MOV.W           R11, #0
209190:  MOV.W           R9, #0x37 ; '7'
209194:  CMP             R0, R1
209196:  BCS             loc_20920C
209198:  LDR             R3, [R0]
20919A:  MOVS            R0, #2
20919C:  BIC.W           R5, R3, R8
2091A0:  CMP.W           R5, #0xD800
2091A4:  BEQ             loc_20920E
2091A6:  CMP             R3, R10
2091A8:  BHI             loc_20920E
2091AA:  LDR             R0, [R4]
2091AC:  CMP.W           R11, R3,LSR#16
2091B0:  SUB.W           R5, R12, R0
2091B4:  BNE             loc_2091C2
2091B6:  CMP             R5, #2
2091B8:  BLT             loc_20916C
2091BA:  ADDS            R5, R0, #1
2091BC:  STR             R5, [R4]
2091BE:  LSRS            R5, R3, #8
2091C0:  B               loc_2091FA
2091C2:  CMP             R5, #4
2091C4:  BLT             loc_20916C
2091C6:  ADDS            R5, R0, #1
2091C8:  STR             R5, [R4]
2091CA:  MOV.W           R5, #0x7C0
2091CE:  MOVS            R6, #0xD8
2091D0:  AND.W           R5, R5, R3,LSR#10
2091D4:  ADD.W           R5, R5, #0x3FC0
2091D8:  ORR.W           LR, R6, R5,LSR#8
2091DC:  STRB.W          LR, [R0]
2091E0:  LDR             R0, [R4]
2091E2:  ADDS            R6, R0, #1
2091E4:  STR             R6, [R4]
2091E6:  UBFX.W          R6, R3, #0xA, #6
2091EA:  ADD             R5, R6
2091EC:  STRB            R5, [R0]
2091EE:  LDR             R0, [R4]
2091F0:  ADDS            R5, R0, #1
2091F2:  STR             R5, [R4]
2091F4:  LSRS            R5, R3, #8
2091F6:  BFI.W           R5, R9, #2, #0x1E
2091FA:  STRB            R5, [R0]
2091FC:  LDR             R0, [R4]
2091FE:  ADDS            R5, R0, #1
209200:  STR             R5, [R4]
209202:  STRB            R3, [R0]
209204:  LDR             R0, [R2]
209206:  ADDS            R0, #4
209208:  STR             R0, [R2]
20920A:  B               loc_209194
20920C:  MOVS            R0, #0
20920E:  POP.W           {R8-R11}
209212:  POP             {R4-R7,PC}
