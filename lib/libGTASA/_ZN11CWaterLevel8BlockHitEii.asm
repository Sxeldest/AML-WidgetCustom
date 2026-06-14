; =========================================================
; Game Engine Function: _ZN11CWaterLevel8BlockHitEii
; Address            : 0x59863C - 0x5986B2
; =========================================================

59863C:  PUSH            {R4,R5,R7,LR}
59863E:  ADD             R7, SP, #8
598640:  MOV             R4, R1
598642:  CMP             R4, #0xB
598644:  MOV             R5, R0
598646:  IT LE
598648:  CMPLE           R5, #0xB
59864A:  BGT             loc_59866A
59864C:  ORR.W           R0, R4, R5
598650:  CMP             R0, #0
598652:  BLT             loc_59866A
598654:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x59865C)
598656:  MOV             R1, R4; int
598658:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
59865A:  LDR             R0, [R0]; CGame::currArea ...
59865C:  LDR             R2, [R0]; CGame::currArea
59865E:  MOV             R0, R5; this
598660:  CMP             R2, #0
598662:  IT NE
598664:  MOVNE           R2, #1; int
598666:  BLX             j__ZN11CWaterLevel29MarkQuadsAndPolysToBeRenderedEiib; CWaterLevel::MarkQuadsAndPolysToBeRendered(int,int,bool)
59866A:  SUBS            R0, R4, #1
59866C:  SUBS            R2, R5, #1
59866E:  CMP             R0, #9
598670:  MOV.W           R0, #0
598674:  IT HI
598676:  MOVHI           R0, #1
598678:  MOVS            R1, #0
59867A:  CMP             R2, #9
59867C:  IT HI
59867E:  MOVHI           R1, #1
598680:  ORRS            R0, R1
598682:  BEQ             locret_5986B0
598684:  LDR             R0, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x59868A)
598686:  ADD             R0, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
598688:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
59868A:  LDR             R0, [R0]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
59868C:  CMP             R0, #0x45 ; 'E'
59868E:  IT GT
598690:  POPGT           {R4,R5,R7,PC}
598692:  LDR             R1, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr - 0x59869C)
598694:  LDR             R2, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x59869E)
598696:  LDR             R3, =(_ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr - 0x5986A0)
598698:  ADD             R1, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldXE_ptr
59869A:  ADD             R2, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
59869C:  ADD             R3, PC; _ZN11CWaterLevel33m_BlocksToBeRenderedOutsideWorldYE_ptr
59869E:  LDR             R1, [R1]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldX ...
5986A0:  LDR             R2, [R2]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
5986A2:  LDR             R3, [R3]; CWaterLevel::m_BlocksToBeRenderedOutsideWorldY ...
5986A4:  STRH.W          R5, [R1,R0,LSL#1]
5986A8:  STRH.W          R4, [R3,R0,LSL#1]
5986AC:  ADDS            R0, #1
5986AE:  STR             R0, [R2]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
5986B0:  POP             {R4,R5,R7,PC}
