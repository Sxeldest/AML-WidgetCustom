; =========================================================
; Game Engine Function: _Z19_rwStreamInitializeP8RwStreami12RwStreamType18RwStreamAccessTypePKv
; Address            : 0x1E566C - 0x1E5738
; =========================================================

1E566C:  PUSH            {R4,R5,R7,LR}
1E566E:  ADD             R7, SP, #8
1E5670:  SUB             SP, SP, #8
1E5672:  MOV             R4, R0
1E5674:  CBZ             R4, loc_1E56A6
1E5676:  SUBS            R0, R2, #1; switch 4 cases
1E5678:  STRD.W          R2, R3, [R4]
1E567C:  CMP             R0, #3
1E567E:  STR             R1, [R4,#0x20]
1E5680:  BHI             def_1E5684; jumptable 001E5684 default case
1E5682:  LDR             R5, [R7,#arg_0]
1E5684:  TBB.W           [PC,R0]; switch jump
1E5688:  DCB 2; jump table for switch statement
1E5689:  DCB 0x11
1E568A:  DCB 0x1B
1E568B:  DCB 0x23
1E568C:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5692); jumptable 001E5684 case 1
1E568E:  ADD             R0, PC; RwEngineInstance_ptr
1E5690:  LDR             R0, [R0]; RwEngineInstance
1E5692:  LDR             R0, [R0]
1E5694:  LDR.W           R1, [R0,#0xEC]
1E5698:  MOV             R0, R5
1E569A:  BLX             R1
1E569C:  ADDS            R0, #1
1E569E:  ITE NE
1E56A0:  STRNE           R5, [R4,#0xC]
1E56A2:  MOVEQ           R4, #0
1E56A4:  B               loc_1E5732
1E56A6:  MOVS            R4, #0
1E56A8:  B               loc_1E5732
1E56AA:  CMP             R3, #3; jumptable 001E5684 case 2
1E56AC:  BEQ             loc_1E56FA
1E56AE:  CMP             R3, #2
1E56B0:  BEQ             loc_1E5702
1E56B2:  CMP             R3, #1
1E56B4:  BNE             loc_1E56E6
1E56B6:  LDR             R0, =(RwEngineInstance_ptr - 0x1E56BE)
1E56B8:  ADR             R1, dword_1E574C
1E56BA:  ADD             R0, PC; RwEngineInstance_ptr
1E56BC:  B               loc_1E5708
1E56BE:  CMP             R3, #3; jumptable 001E5684 case 3
1E56C0:  BEQ             loc_1E571E
1E56C2:  CMP             R3, #2
1E56C4:  BEQ             loc_1E572A
1E56C6:  CMP             R3, #1
1E56C8:  BNE             loc_1E56E6
1E56CA:  MOVS            R0, #0
1E56CC:  B               loc_1E5720
1E56CE:  VLD1.8          {D16-D17}, [R5]!; jumptable 001E5684 case 4
1E56D2:  ADD.W           R1, R4, #0xC
1E56D6:  LDR             R0, [R5]
1E56D8:  VST1.8          {D16-D17}, [R1]
1E56DC:  STR             R0, [R4,#0x1C]
1E56DE:  B               loc_1E5732
1E56E0:  MOVS            R4, #0; jumptable 001E5684 default case
1E56E2:  MOVS            R0, #0xE
1E56E4:  B               loc_1E56EA
1E56E6:  MOVS            R4, #0
1E56E8:  MOVS            R0, #0xD; int
1E56EA:  STR             R4, [SP,#0x10+var_10]
1E56EC:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E56F0:  STR             R0, [SP,#0x10+var_C]
1E56F2:  MOV             R0, SP
1E56F4:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E56F8:  B               loc_1E5732
1E56FA:  LDR             R0, =(RwEngineInstance_ptr - 0x1E5702)
1E56FC:  ADR             R1, dword_1E573C
1E56FE:  ADD             R0, PC; RwEngineInstance_ptr
1E5700:  B               loc_1E5708
1E5702:  LDR             R0, =(RwEngineInstance_ptr - 0x1E570A)
1E5704:  ADR             R1, dword_1E5744
1E5706:  ADD             R0, PC; RwEngineInstance_ptr
1E5708:  LDR             R0, [R0]; RwEngineInstance
1E570A:  LDR             R0, [R0]
1E570C:  LDR.W           R2, [R0,#0xC8]
1E5710:  MOV             R0, R5
1E5712:  BLX             R2
1E5714:  CMP             R0, #0
1E5716:  ITE NE
1E5718:  STRNE           R0, [R4,#0xC]
1E571A:  MOVEQ           R4, #0
1E571C:  B               loc_1E5732
1E571E:  LDR             R0, [R5,#4]
1E5720:  STR             R0, [R4,#0xC]
1E5722:  LDR             R0, [R5,#4]
1E5724:  STR             R0, [R4,#0x10]
1E5726:  LDR             R0, [R5]
1E5728:  B               loc_1E5730
1E572A:  MOVS            R0, #0
1E572C:  STRD.W          R0, R0, [R4,#0xC]
1E5730:  STR             R0, [R4,#0x14]
1E5732:  MOV             R0, R4
1E5734:  ADD             SP, SP, #8
1E5736:  POP             {R4,R5,R7,PC}
