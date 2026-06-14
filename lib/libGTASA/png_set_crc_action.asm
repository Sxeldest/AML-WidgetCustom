; =========================================================
; Game Engine Function: png_set_crc_action
; Address            : 0x1F93C0 - 0x1F9446
; =========================================================

1F93C0:  PUSH            {R4,R5,R7,LR}
1F93C2:  ADD             R7, SP, #8
1F93C4:  MOV             R4, R0
1F93C6:  MOV             R5, R2
1F93C8:  CMP             R4, #0
1F93CA:  IT EQ
1F93CC:  POPEQ           {R4,R5,R7,PC}
1F93CE:  SUBS            R0, R1, #2; switch 4 cases
1F93D0:  CMP             R0, #3
1F93D2:  BHI             def_1F93D4; jumptable 001F93D4 default case
1F93D4:  TBB.W           [PC,R0]; switch jump
1F93D8:  DCB 2; jump table for switch statement
1F93D9:  DCB 0xB
1F93DA:  DCB 0x11
1F93DB:  DCB 0x17
1F93DC:  ADR             R1, aCanTDiscardCri; jumptable 001F93D4 case 2
1F93DE:  MOV             R0, R4
1F93E0:  BLX             j_png_warning
1F93E4:  LDR.W           R0, [R4,#0x138]; jumptable 001F93D4 default case
1F93E8:  BIC.W           R0, R0, #0xC00
1F93EC:  B               loc_1F9402
1F93EE:  LDR.W           R0, [R4,#0x138]; jumptable 001F93D4 case 3
1F93F2:  MOVS            R1, #1
1F93F4:  BFI.W           R0, R1, #0xA, #2
1F93F8:  B               loc_1F9402
1F93FA:  LDR.W           R0, [R4,#0x138]; jumptable 001F93D4 case 4
1F93FE:  ORR.W           R0, R0, #0xC00
1F9402:  STR.W           R0, [R4,#0x138]
1F9406:  SUBS            R0, R5, #1; jumptable 001F93D4 case 5
1F9408:  CMP             R0, #4
1F940A:  BHI             def_1F940C; jumptable 001F940C default case, case 2
1F940C:  TBB.W           [PC,R0]; switch jump
1F9410:  DCB 3; jump table for switch statement
1F9411:  DCB 9
1F9412:  DCB 0xE
1F9413:  DCB 0x14
1F9414:  DCB 0x1A
1F9415:  ALIGN 2
1F9416:  LDR.W           R0, [R4,#0x138]; jumptable 001F940C case 1
1F941A:  MOVS            R1, #2
1F941C:  BFI.W           R0, R1, #8, #2
1F9420:  B               loc_1F9440
1F9422:  LDR.W           R0, [R4,#0x138]; jumptable 001F940C default case, case 2
1F9426:  BIC.W           R0, R0, #0x300
1F942A:  B               loc_1F9440
1F942C:  LDR.W           R0, [R4,#0x138]; jumptable 001F940C case 3
1F9430:  MOVS            R1, #1
1F9432:  BFI.W           R0, R1, #8, #2
1F9436:  B               loc_1F9440
1F9438:  LDR.W           R0, [R4,#0x138]; jumptable 001F940C case 4
1F943C:  ORR.W           R0, R0, #0x300
1F9440:  STR.W           R0, [R4,#0x138]
1F9444:  POP             {R4,R5,R7,PC}; jumptable 001F940C case 5
