; =========================================================
; Game Engine Function: sub_82284
; Address            : 0x82284 - 0x8231C
; =========================================================

82284:  PUSH            {R4,R6,R7,LR}
82286:  ADD             R7, SP, #8
82288:  MOV             LR, R0
8228A:  MOV             R12, R0
8228C:  LDR.W           R0, [LR,#4]!
82290:  CBZ             R0, loc_822B8
82292:  LDR             R1, [R1]
82294:  MOV             R4, LR
82296:  MOV             R2, R0
82298:  LDR             R3, [R2,#0x10]
8229A:  CMP             R3, R1
8229C:  MOV             R3, R2
8229E:  IT CC
822A0:  ADDCC           R3, #4
822A2:  LDR             R3, [R3]
822A4:  IT CS
822A6:  MOVCS           R4, R2
822A8:  CMP             R3, #0
822AA:  MOV             R2, R3
822AC:  BNE             loc_82298
822AE:  CMP             R4, LR
822B0:  BEQ             loc_822B8
822B2:  LDR             R2, [R4,#0x10]
822B4:  CMP             R1, R2
822B6:  BCS             loc_822BC
822B8:  MOVS            R0, #0
822BA:  POP             {R4,R6,R7,PC}
822BC:  LDR             R2, [R4,#4]
822BE:  CBZ             R2, loc_822CA
822C0:  MOV             R1, R2
822C2:  LDR             R2, [R2]
822C4:  CMP             R2, #0
822C6:  BNE             loc_822C0
822C8:  B               loc_822E6
822CA:  MOV             R3, R4
822CC:  LDR.W           R1, [R3,#8]!
822D0:  LDR             R2, [R1]
822D2:  CMP             R2, R4
822D4:  BEQ             loc_822E6
822D6:  LDR.W           LR, [R3]
822DA:  MOV             R3, LR
822DC:  LDR.W           R1, [R3,#8]!
822E0:  LDR             R2, [R1]
822E2:  CMP             R2, LR
822E4:  BNE             loc_822D6
822E6:  LDR.W           R2, [R12]
822EA:  CMP             R2, R4
822EC:  IT EQ
822EE:  STREQ.W         R1, [R12]
822F2:  LDR.W           R1, [R12,#8]
822F6:  SUBS            R1, #1
822F8:  STR.W           R1, [R12,#8]
822FC:  MOV             R1, R4
822FE:  BL              sub_8231C
82302:  LDR             R0, [R4,#0x14]
82304:  MOVS            R1, #0
82306:  STR             R1, [R4,#0x14]
82308:  CMP             R0, #0
8230A:  ITTT NE
8230C:  LDRNE           R1, [R0]
8230E:  LDRNE           R1, [R1,#4]
82310:  BLXNE           R1
82312:  MOV             R0, R4; void *
82314:  BLX             j__ZdlPv; operator delete(void *)
82318:  MOVS            R0, #1
8231A:  POP             {R4,R6,R7,PC}
