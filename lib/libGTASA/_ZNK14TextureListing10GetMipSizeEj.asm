; =========================================================
; Game Engine Function: _ZNK14TextureListing10GetMipSizeEj
; Address            : 0x1E76D8 - 0x1E77E6
; =========================================================

1E76D8:  PUSH            {R4,R6,R7,LR}
1E76DA:  ADD             R7, SP, #8
1E76DC:  LDRH            R4, [R0,#6]
1E76DE:  MOV.W           LR, #1
1E76E2:  LDRH            R2, [R0,#4]
1E76E4:  MOV.W           R12, #1
1E76E8:  LDRH            R3, [R0,#2]
1E76EA:  MOVS            R0, #0
1E76EC:  BFC.W           R4, #0xF, #0x11
1E76F0:  LSRS            R2, R1
1E76F2:  CMP             R2, #1
1E76F4:  LSR.W           R1, R4, R1
1E76F8:  IT GT
1E76FA:  MOVGT           LR, R2
1E76FC:  CMP             R1, #1
1E76FE:  MOVW            R4, #0x83F1
1E7702:  IT GT
1E7704:  MOVGT           R12, R1
1E7706:  CMP             R3, R4
1E7708:  BGT             loc_1E772C
1E770A:  MOVW            R4, #0x8032
1E770E:  CMP             R3, R4
1E7710:  BGT             loc_1E7774
1E7712:  MOVW            R1, #0x1401
1E7716:  CMP             R3, R1
1E7718:  BEQ             loc_1E77B4
1E771A:  MOVW            R1, #0x1909
1E771E:  CMP             R3, R1
1E7720:  BEQ             loc_1E77BC
1E7722:  MOVW            R1, #0x190A
1E7726:  CMP             R3, R1
1E7728:  BEQ             loc_1E7790
1E772A:  B               locret_1E77B2
1E772C:  SUB.W           R4, R3, #0x8C00; switch 4 cases
1E7730:  CMP             R4, #3
1E7732:  BHI             def_1E7734; jumptable 001E7734 default case
1E7734:  TBB.W           [PC,R4]; switch jump
1E7738:  DCB 2; jump table for switch statement
1E7739:  DCB 0x30
1E773A:  DCB 2
1E773B:  DCB 0x30
1E773C:  CMP.W           R12, #8; jumptable 001E7734 cases 35840,35842
1E7740:  MOV.W           R0, #0x20 ; ' '
1E7744:  IT LE
1E7746:  MOVLE           R1, #8
1E7748:  CMP.W           LR, #8
1E774C:  IT GT
1E774E:  LSLGT           R0, R2, #2
1E7750:  B               loc_1E77AC
1E7752:  MOVW            R4, #0x83F2; jumptable 001E7734 default case
1E7756:  SUBS            R4, R3, R4
1E7758:  CMP             R4, #2
1E775A:  BCS             loc_1E77C2
1E775C:  MOVS            R0, #4
1E775E:  CMP.W           LR, #4
1E7762:  IT LE
1E7764:  MOVLE           R2, R0
1E7766:  CMP.W           R12, #4
1E776A:  IT LE
1E776C:  MOVLE           R1, R0
1E776E:  MUL.W           R0, R1, R2
1E7772:  POP             {R4,R6,R7,PC}
1E7774:  MOVW            R4, #0x8033
1E7778:  SUBS            R4, R3, R4
1E777A:  CMP             R4, #2
1E777C:  BCC             loc_1E7790
1E777E:  MOVW            R4, #0x83F0
1E7782:  SUBS            R4, R3, R4
1E7784:  CMP             R4, #2
1E7786:  BCC             loc_1E77CC
1E7788:  MOVW            R1, #0x8363
1E778C:  CMP             R3, R1
1E778E:  BNE             locret_1E77B2
1E7790:  MUL.W           R0, LR, R12
1E7794:  LSLS            R0, R0, #1
1E7796:  POP             {R4,R6,R7,PC}
1E7798:  CMP.W           R12, #8; jumptable 001E7734 cases 35841,35843
1E779C:  MOV.W           R0, #0x20 ; ' '
1E77A0:  IT LE
1E77A2:  MOVLE           R1, #8
1E77A4:  CMP.W           LR, #0x10
1E77A8:  IT GT
1E77AA:  LSLGT           R0, R2, #1
1E77AC:  MULS            R0, R1
1E77AE:  ADDS            R0, #7
1E77B0:  LSRS            R0, R0, #3
1E77B2:  POP             {R4,R6,R7,PC}
1E77B4:  MUL.W           R0, LR, R12
1E77B8:  LSLS            R0, R0, #2
1E77BA:  POP             {R4,R6,R7,PC}
1E77BC:  MUL.W           R0, R12, LR
1E77C0:  POP             {R4,R6,R7,PC}
1E77C2:  MOVW            R4, #0x8D64
1E77C6:  CMP             R3, R4
1E77C8:  IT NE
1E77CA:  POPNE           {R4,R6,R7,PC}
1E77CC:  MOVS            R0, #4
1E77CE:  CMP.W           LR, #4
1E77D2:  IT LE
1E77D4:  MOVLE           R2, R0
1E77D6:  CMP.W           R12, #4
1E77DA:  IT LE
1E77DC:  MOVLE           R1, R0
1E77DE:  MUL.W           R0, R1, R2
1E77E2:  LSRS            R0, R0, #1
1E77E4:  POP             {R4,R6,R7,PC}
