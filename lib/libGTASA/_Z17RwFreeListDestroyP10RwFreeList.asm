; =========================================================
; Game Engine Function: _Z17RwFreeListDestroyP10RwFreeList
; Address            : 0x1E46F0 - 0x1E4766
; =========================================================

1E46F0:  PUSH            {R4-R7,LR}
1E46F2:  ADD             R7, SP, #0xC
1E46F4:  PUSH.W          {R11}
1E46F8:  MOV             R4, R0
1E46FA:  LDRD.W          R0, R1, [R4,#0x1C]
1E46FE:  MOV             R5, R4
1E4700:  STR             R0, [R1]
1E4702:  LDRD.W          R0, R1, [R4,#0x1C]
1E4706:  STR             R1, [R0,#4]
1E4708:  LDR.W           R0, [R5,#0x10]!
1E470C:  CMP             R0, R5
1E470E:  BEQ             loc_1E4730
1E4710:  LDR             R1, =(RwEngineInstance_ptr - 0x1E4716)
1E4712:  ADD             R1, PC; RwEngineInstance_ptr
1E4714:  LDR             R6, [R1]; RwEngineInstance
1E4716:  LDRD.W          R1, R2, [R0]
1E471A:  STR             R1, [R2]
1E471C:  LDRD.W          R1, R2, [R0]
1E4720:  STR             R2, [R1,#4]
1E4722:  LDR             R1, [R6]
1E4724:  LDR.W           R1, [R1,#0x130]
1E4728:  BLX             R1
1E472A:  LDR             R0, [R5]
1E472C:  CMP             R0, R5
1E472E:  BNE             loc_1E4716
1E4730:  LDRB            R0, [R4,#0x18]
1E4732:  LSLS            R0, R0, #0x1F
1E4734:  BNE             loc_1E475E
1E4736:  LDR             R0, =(RwEngineInstance_ptr - 0x1E473E)
1E4738:  LDR             R1, =(dword_6BD054 - 0x1E4740)
1E473A:  ADD             R0, PC; RwEngineInstance_ptr
1E473C:  ADD             R1, PC; dword_6BD054
1E473E:  LDR             R2, [R0]; RwEngineInstance
1E4740:  LDR             R0, [R1]
1E4742:  LDR             R1, [R2]
1E4744:  CMP             R0, R4
1E4746:  IT NE
1E4748:  CMPNE           R0, #0
1E474A:  BNE             loc_1E4756
1E474C:  LDR.W           R1, [R1,#0x130]
1E4750:  MOV             R0, R4
1E4752:  BLX             R1
1E4754:  B               loc_1E475E
1E4756:  LDR.W           R2, [R1,#0x140]
1E475A:  MOV             R1, R4
1E475C:  BLX             R2
1E475E:  MOVS            R0, #1
1E4760:  POP.W           {R11}
1E4764:  POP             {R4-R7,PC}
