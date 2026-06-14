; =========================================================
; Game Engine Function: _ZN21CWidgetButtonAnimated6UpdateEv
; Address            : 0x2B47F4 - 0x2B4846
; =========================================================

2B47F4:  PUSH            {R4,R6,R7,LR}
2B47F6:  ADD             R7, SP, #8
2B47F8:  MOV             R4, R0
2B47FA:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B47FE:  LDR.W           R0, [R4,#0x90]
2B4802:  TST.W           R0, #2
2B4806:  ITT NE
2B4808:  LDRBNE.W        R1, [R4,#0x4D]
2B480C:  CMPNE           R1, #0
2B480E:  BEQ             loc_2B4838
2B4810:  LDR             R0, [R4]
2B4812:  MOVS            R1, #0
2B4814:  LDR             R2, [R0,#0x34]
2B4816:  MOV             R0, R4
2B4818:  BLX             R2
2B481A:  LDR.W           R1, [R4,#0x90]
2B481E:  CMP             R0, #1
2B4820:  BNE             loc_2B4836
2B4822:  ORR.W           R0, R1, #4
2B4826:  TST.W           R1, #4
2B482A:  IT NE
2B482C:  BICNE.W         R0, R1, #4
2B4830:  STR.W           R0, [R4,#0x90]
2B4834:  B               loc_2B4838
2B4836:  MOV             R0, R1
2B4838:  LSLS            R0, R0, #0x1B
2B483A:  ITE PL
2B483C:  LDRPL.W         R0, [R4,#0x1BC]
2B4840:  MOVMI           R0, #0
2B4842:  STR             R0, [R4,#4]
2B4844:  POP             {R4,R6,R7,PC}
