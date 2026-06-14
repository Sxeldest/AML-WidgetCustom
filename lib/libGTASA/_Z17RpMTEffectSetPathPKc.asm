; =========================================================
; Game Engine Function: _Z17RpMTEffectSetPathPKc
; Address            : 0x1C56DC - 0x1C5778
; =========================================================

1C56DC:  PUSH            {R4-R7,LR}
1C56DE:  ADD             R7, SP, #0xC
1C56E0:  PUSH.W          {R11}
1C56E4:  SUB             SP, SP, #8
1C56E6:  MOV             R4, R0
1C56E8:  LDR             R0, =(RwEngineInstance_ptr - 0x1C56EE)
1C56EA:  ADD             R0, PC; RwEngineInstance_ptr
1C56EC:  LDR             R5, [R0]; RwEngineInstance
1C56EE:  LDR             R0, [R5]
1C56F0:  LDR.W           R1, [R0,#0x118]
1C56F4:  MOV             R0, R4
1C56F6:  BLX             R1
1C56F8:  LDR             R1, =(_rpMultiTextureModule_ptr - 0x1C56FE)
1C56FA:  ADD             R1, PC; _rpMultiTextureModule_ptr
1C56FC:  LDR             R1, [R1]; _rpMultiTextureModule
1C56FE:  LDR             R2, [R1]
1C5700:  LDR             R1, [R5]
1C5702:  ADDS            R5, R0, #1
1C5704:  ADDS            R3, R1, R2
1C5706:  LDR             R6, [R3,#0xC]
1C5708:  CMP             R0, R6
1C570A:  BLT             loc_1C5748
1C570C:  MOVS            R2, #0x20 ; ' '
1C570E:  LDR             R0, [R3,#0x10]
1C5710:  LDR.W           R3, [R1,#0x134]
1C5714:  ADD.W           R6, R2, R5,LSL#1
1C5718:  MOV             R1, R6
1C571A:  BLX             R3
1C571C:  CBZ             R0, loc_1C5756
1C571E:  LDR             R1, =(_rpMultiTextureModule_ptr - 0x1C5726)
1C5720:  LDR             R2, =(RwEngineInstance_ptr - 0x1C5728)
1C5722:  ADD             R1, PC; _rpMultiTextureModule_ptr
1C5724:  ADD             R2, PC; RwEngineInstance_ptr
1C5726:  LDR             R1, [R1]; _rpMultiTextureModule
1C5728:  LDR             R3, [R2]; RwEngineInstance
1C572A:  LDR             R2, [R1]
1C572C:  LDR             R6, [R3]
1C572E:  ADD             R2, R6
1C5730:  STR             R0, [R2,#0x10]
1C5732:  ADD             R0, R5
1C5734:  LDR             R2, [R1]
1C5736:  LDR             R6, [R3]
1C5738:  ADD             R2, R6
1C573A:  STR             R0, [R2,#0x14]
1C573C:  LDR             R0, [R1]
1C573E:  LDR             R2, [R3]
1C5740:  ADD             R0, R2
1C5742:  STR             R5, [R0,#0xC]
1C5744:  LDR             R2, [R1]
1C5746:  LDR             R1, [R3]
1C5748:  ADDS            R0, R1, R2
1C574A:  MOV             R1, R4; void *
1C574C:  MOV             R2, R5; size_t
1C574E:  LDR             R0, [R0,#0x10]; void *
1C5750:  BLX             memcpy_1
1C5754:  B               loc_1C576E
1C5756:  MOVS            R0, #0x13
1C5758:  MOVS            R4, #0
1C575A:  MOVT            R0, #0x8000; int
1C575E:  MOV             R1, R6
1C5760:  STR             R4, [SP,#0x18+var_18]
1C5762:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1C5766:  STR             R0, [SP,#0x18+var_14]
1C5768:  MOV             R0, SP
1C576A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1C576E:  MOV             R0, R4
1C5770:  ADD             SP, SP, #8
1C5772:  POP.W           {R11}
1C5776:  POP             {R4-R7,PC}
