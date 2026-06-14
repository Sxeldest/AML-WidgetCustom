; =========================================================
; Game Engine Function: sub_13055C
; Address            : 0x13055C - 0x130674
; =========================================================

13055C:  PUSH            {R4-R7,LR}
13055E:  ADD             R7, SP, #0xC
130560:  PUSH.W          {R8,R9,R11}
130564:  MOV             R8, R0
130566:  LDRB            R0, [R1]
130568:  CBZ             R0, loc_130590
13056A:  MOV             R6, R1
13056C:  MOVS            R5, #0
13056E:  ADDS            R0, R6, R5
130570:  ADDS            R5, #1
130572:  LDRB            R0, [R0,#1]
130574:  CMP             R0, #0
130576:  BNE             loc_13056E
130578:  CMN.W           R5, #0x10
13057C:  BCS             loc_1305CC
13057E:  CMP             R5, #0xB
130580:  BCS             loc_13059A
130582:  LSLS            R0, R5, #1
130584:  MOV             R4, R8
130586:  STRB.W          R0, [R4],#1
13058A:  CBNZ            R5, loc_1305B6
13058C:  MOVS            R5, #0
13058E:  B               loc_1305C0
130590:  MOVS            R5, #0
130592:  MOV             R4, R8
130594:  STRB.W          R5, [R4],#1
130598:  B               loc_1305C0
13059A:  ADD.W           R0, R5, #0x10
13059E:  BIC.W           R9, R0, #0xF
1305A2:  MOV             R0, R9; unsigned int
1305A4:  BLX             j__Znwj; operator new(uint)
1305A8:  MOV             R4, R0
1305AA:  ADD.W           R0, R9, #1
1305AE:  STRD.W          R0, R5, [R8]
1305B2:  STR.W           R4, [R8,#8]
1305B6:  MOV             R0, R4; dest
1305B8:  MOV             R1, R6; src
1305BA:  MOV             R2, R5; n
1305BC:  BLX             j_memcpy
1305C0:  MOVS            R0, #0
1305C2:  STRB            R0, [R4,R5]
1305C4:  MOV             R0, R8
1305C6:  POP.W           {R8,R9,R11}
1305CA:  POP             {R4-R7,PC}
1305CC:  MOV             R0, R8
1305CE:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
1305D2:  BMI             loc_13057E
1305D4:  PUSH            {R4,R6,R7,LR}
1305D6:  ADD             R7, SP, #8
1305D8:  MOV             R4, R0
1305DA:  LDR             R0, [R0,#8]
1305DC:  CBZ             R0, def_1305FE; jumptable 001305FE default case
1305DE:  LDR             R0, [R0,#8]
1305E0:  CBZ             R0, def_1305FE; jumptable 001305FE default case
1305E2:  LDR             R0, [R0,#8]; lpsrc
1305E4:  CBZ             R0, def_1305FE; jumptable 001305FE default case
1305E6:  LDR             R1, =(off_234BA8 - 0x1305F0)
1305E8:  MOVS            R3, #0; s2d
1305EA:  LDR             R2, =(_ZTI8Keyboard - 0x1305F2); `typeinfo for'Keyboard ...
1305EC:  ADD             R1, PC; off_234BA8
1305EE:  ADD             R2, PC; lpdtype
1305F0:  LDR             R1, [R1]; lpstype
1305F2:  BLX             j___dynamic_cast
1305F6:  CBZ             R0, def_1305FE; jumptable 001305FE default case
1305F8:  LDR             R1, [R4,#0x70]
1305FA:  CMP             R1, #0xC; switch 13 cases
1305FC:  BHI             def_1305FE; jumptable 001305FE default case
1305FE:  TBB.W           [PC,R1]; switch jump
130602:  DCB 7; jump table for switch statement
130603:  DCB 0xC
130604:  DCB 0xE
130605:  DCB 0x13
130606:  DCB 0x18
130607:  DCB 0x1A
130608:  DCB 0x1C
130609:  DCB 0x1E
13060A:  DCB 0x23
13060B:  DCB 0x27
13060C:  DCB 0x2D
13060D:  DCB 0x31
13060E:  DCB 0x35
13060F:  ALIGN 2
130610:  LDRB.W          R1, [R4,#0x74]; jumptable 001305FE case 0
130614:  LDR             R0, [R0,#0x6C]
130616:  B               loc_130654
130618:  POP             {R4,R6,R7,PC}; jumptable 001305FE default case
13061A:  MOVS            R1, #0; jumptable 001305FE case 1
13061C:  B               loc_130620
13061E:  MOVS            R1, #1; jumptable 001305FE case 2
130620:  POP.W           {R4,R6,R7,LR}
130624:  B.W             sub_12F6D2
130628:  LDR             R0, [R0,#0x6C]; jumptable 001305FE case 3
13062A:  POP.W           {R4,R6,R7,LR}
13062E:  B.W             sub_12FD94
130632:  MOVS            R1, #4; jumptable 001305FE case 4
130634:  B               loc_130640
130636:  MOVS            R1, #5; jumptable 001305FE case 5
130638:  B               loc_130640
13063A:  MOVS            R1, #2; jumptable 001305FE case 6
13063C:  B               loc_130640
13063E:  MOVS            R1, #0; jumptable 001305FE case 7
130640:  POP.W           {R4,R6,R7,LR}
130644:  B.W             sub_12F3D0
130648:  POP.W           {R4,R6,R7,LR}; jumptable 001305FE case 8
13064C:  B.W             sub_12F66C
130650:  LDR             R0, [R0,#0x6C]; jumptable 001305FE case 9
130652:  MOVS            R1, #0x20 ; ' '
130654:  POP.W           {R4,R6,R7,LR}
130658:  B.W             sub_12FD4C
13065C:  POP.W           {R4,R6,R7,LR}; jumptable 001305FE case 10
130660:  B.W             sub_12F988
130664:  POP.W           {R4,R6,R7,LR}; jumptable 001305FE case 11
130668:  B.W             sub_12FC38
13066C:  POP.W           {R4,R6,R7,LR}; jumptable 001305FE case 12
130670:  B.W             sub_12FAF4
