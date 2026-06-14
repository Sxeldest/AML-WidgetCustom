; =========================================================
; Game Engine Function: sub_851AA
; Address            : 0x851AA - 0x85270
; =========================================================

851AA:  PUSH            {R4-R7,LR}
851AC:  ADD             R7, SP, #0xC
851AE:  PUSH.W          {R8}
851B2:  MOV             R4, R0
851B4:  MOV             R8, R0
851B6:  LDR.W           R2, [R4,#0x34]!
851BA:  LDR             R6, [R4,#4]
851BC:  SUBS            R0, R6, R2
851BE:  BEQ             loc_851E8
851C0:  MOVW            R3, #0xAAAB
851C4:  ADDS            R2, #0x10
851C6:  MOVT            R3, #0x2AAA
851CA:  MOVS            R5, #0
851CC:  SMMUL.W         R0, R0, R3
851D0:  ASRS            R3, R0, #2
851D2:  ADD.W           R0, R3, R0,LSR#31
851D6:  CMP             R0, #1
851D8:  IT LS
851DA:  MOVLS           R0, #1
851DC:  LDR             R3, [R2]
851DE:  CBZ             R3, loc_8520C
851E0:  ADDS            R5, #1
851E2:  ADDS            R2, #0x18
851E4:  CMP             R0, R5
851E6:  BNE             loc_851DC
851E8:  LDR.W           R0, [R8,#0x3C]
851EC:  CMP             R6, R0
851EE:  BCS             loc_85200
851F0:  MOV             R0, R1
851F2:  LDR.W           R2, [R0,#0x10]!
851F6:  CBZ             R2, loc_85228
851F8:  CMP             R1, R2
851FA:  BEQ             loc_85232
851FC:  STR             R2, [R6,#0x10]
851FE:  B               loc_8522C
85200:  MOV             R0, R4
85202:  BL              sub_85478
85206:  LDR.W           R0, [R8,#0x38]
8520A:  B               loc_85246
8520C:  MOVS            R0, #0
8520E:  MOV             R6, R2
85210:  STR.W           R0, [R6],#-0x10
85214:  MOV             R3, R1
85216:  LDR.W           R4, [R3,#0x10]!
8521A:  CBZ             R4, loc_85224
8521C:  CMP             R1, R4
8521E:  BEQ             loc_85260
85220:  STR             R4, [R2]
85222:  MOV             R2, R3
85224:  STR             R0, [R2]
85226:  B               loc_85258
85228:  ADD.W           R0, R6, #0x10
8522C:  MOVS            R1, #0
8522E:  STR             R1, [R0]
85230:  B               loc_8523E
85232:  STR             R6, [R6,#0x10]
85234:  LDR             R0, [R0]
85236:  LDR             R1, [R0]
85238:  LDR             R2, [R1,#0xC]
8523A:  MOV             R1, R6
8523C:  BLX             R2
8523E:  ADD.W           R0, R6, #0x18
85242:  STR.W           R0, [R8,#0x38]
85246:  LDR             R1, [R4]
85248:  SUBS            R0, R0, R1
8524A:  MOV             R1, #0xAAAAAAAB
85252:  ASRS            R0, R0, #3
85254:  MULS            R0, R1
85256:  SUBS            R5, R0, #1
85258:  MOV             R0, R5
8525A:  POP.W           {R8}
8525E:  POP             {R4-R7,PC}
85260:  STR.W           R6, [R2],#-0x10
85264:  LDR             R0, [R3]
85266:  LDR             R1, [R0]
85268:  LDR             R3, [R1,#0xC]
8526A:  MOV             R1, R2
8526C:  BLX             R3
8526E:  B               loc_85258
