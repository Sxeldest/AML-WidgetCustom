; =========================================================
; Game Engine Function: _ZN10ArrayState14SetupDrawStateEv
; Address            : 0x1BD3E0 - 0x1BD4CC
; =========================================================

1BD3E0:  LDRB.W          R1, [R0,#0x44]
1BD3E4:  CBZ             R1, loc_1BD40E
1BD3E6:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BD3F0)
1BD3E8:  LDR.W           R12, [R0,#0x48]
1BD3EC:  ADD             R1, PC; curShaderStateFlags_ptr
1BD3EE:  CMP.W           R12, #4
1BD3F2:  LDR             R2, [R1]; curShaderStateFlags
1BD3F4:  LDR             R3, [R2]
1BD3F6:  BIC.W           R1, R3, #0x40000
1BD3FA:  IT EQ
1BD3FC:  ORREQ.W         R1, R3, #0x40000
1BD400:  STR             R1, [R2]
1BD402:  LDR             R2, [R0,#0x54]
1BD404:  CMP             R2, #3
1BD406:  BNE             loc_1BD41C
1BD408:  ORR.W           R2, R1, #0x20000
1BD40C:  B               loc_1BD420
1BD40E:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BD414)
1BD410:  ADD             R1, PC; curShaderStateFlags_ptr
1BD412:  LDR             R2, [R1]; curShaderStateFlags
1BD414:  LDR             R1, [R2]
1BD416:  BIC.W           R1, R1, #0x40000
1BD41A:  STR             R1, [R2]
1BD41C:  BIC.W           R2, R1, #0x20000
1BD420:  PUSH            {R7,LR}
1BD422:  MOV             R7, SP
1BD424:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BD42A)
1BD426:  ADD             R1, PC; curShaderStateFlags_ptr
1BD428:  LDR             R1, [R1]; curShaderStateFlags
1BD42A:  STR             R2, [R1]
1BD42C:  LDRB.W          R1, [R0,#0x58]
1BD430:  CBZ             R1, loc_1BD43E
1BD432:  LDR             R3, [R0,#0x68]
1BD434:  CMP             R3, #2
1BD436:  BNE             loc_1BD43E
1BD438:  ORR.W           LR, R2, #0x400000
1BD43C:  B               loc_1BD442
1BD43E:  BIC.W           LR, R2, #0x400000
1BD442:  LDR             R3, =(curShaderStateFlags_ptr - 0x1BD44C)
1BD444:  LDR.W           R12, =(curEmulatorStateFlags_ptr - 0x1BD44E)
1BD448:  ADD             R3, PC; curShaderStateFlags_ptr
1BD44A:  ADD             R12, PC; curEmulatorStateFlags_ptr
1BD44C:  LDR             R3, [R3]; curShaderStateFlags
1BD44E:  LDR.W           R2, [R12]; curEmulatorStateFlags
1BD452:  STR.W           LR, [R3]
1BD456:  LDR             R3, [R2]
1BD458:  LDRB.W          R2, [R0,#0x6C]
1BD45C:  CBZ             R2, loc_1BD470
1BD45E:  LDR             R2, =(curEmulatorStateFlags_ptr - 0x1BD468)
1BD460:  ORR.W           R3, R3, #0x800000
1BD464:  ADD             R2, PC; curEmulatorStateFlags_ptr
1BD466:  LDR             R2, [R2]; curEmulatorStateFlags
1BD468:  STR             R3, [R2]
1BD46A:  BIC.W           R2, LR, #0x200000
1BD46E:  B               loc_1BD480
1BD470:  LDR             R2, =(curEmulatorStateFlags_ptr - 0x1BD47A)
1BD472:  BIC.W           R3, R3, #0x800000
1BD476:  ADD             R2, PC; curEmulatorStateFlags_ptr
1BD478:  LDR             R2, [R2]; curEmulatorStateFlags
1BD47A:  STR             R3, [R2]
1BD47C:  ORR.W           R2, LR, #0x200000
1BD480:  LDR             R3, =(curShaderStateFlags_ptr - 0x1BD48A)
1BD482:  BIC.W           R2, R2, #0x180
1BD486:  ADD             R3, PC; curShaderStateFlags_ptr
1BD488:  LDR             R3, [R3]; curShaderStateFlags
1BD48A:  STR             R2, [R3]
1BD48C:  LDRB.W          R3, [R0,#0x94]
1BD490:  CMP             R3, #0
1BD492:  POP.W           {R7,LR}
1BD496:  ITT NE
1BD498:  LDRBNE.W        R3, [R0,#0x80]
1BD49C:  CMPNE           R3, #0
1BD49E:  BEQ             loc_1BD4C0
1BD4A0:  LDR             R3, =(curShaderStateFlags_ptr - 0x1BD4AA)
1BD4A2:  LDR.W           R0, [R0,#0x84]
1BD4A6:  ADD             R3, PC; curShaderStateFlags_ptr
1BD4A8:  CMP             R0, #4
1BD4AA:  LDR.W           R12, [R3]; curShaderStateFlags
1BD4AE:  MOV.W           R3, #0x80
1BD4B2:  IT EQ
1BD4B4:  MOVEQ.W         R3, #0x100
1BD4B8:  ORR.W           R0, R3, R2
1BD4BC:  STR.W           R0, [R12]
1BD4C0:  CMP             R1, #0
1BD4C2:  IT NE
1BD4C4:  MOVNE           R1, #(stderr+1); bool
1BD4C6:  MOV             R0, R1; this
1BD4C8:  B.W             j_j__ZN9EmuShader12AssignShaderEb; j_EmuShader::AssignShader(bool)
