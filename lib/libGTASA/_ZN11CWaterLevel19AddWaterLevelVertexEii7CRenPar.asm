; =========================================================
; Game Engine Function: _ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar
; Address            : 0x594640 - 0x59474C
; =========================================================

594640:  PUSH            {R4-R7,LR}
594642:  ADD             R7, SP, #0xC
594644:  PUSH.W          {R8}
594648:  LDR.W           R12, [R7,#arg_4]
59464C:  MOV             R8, #0xFFFFF448
594654:  CMP             R0, R8
594656:  BGT             loc_594696
594658:  MOVW            R0, #0xFFFF
59465C:  BIC.W           R12, R12, R0
594660:  MOV.W           R3, #0x3F800000
594664:  MOV.W           LR, #0
594668:  MOVS            R2, #0
59466A:  MOV             R0, R8
59466C:  CMP             R1, R8
59466E:  BLE             loc_5946C0
594670:  MOVW            R4, #0xBB7
594674:  CMP             R1, R4
594676:  ITTT GT
594678:  MOVGT           R2, #0
59467A:  MOVGT.W         R3, #0x3F800000
59467E:  MOVGT.W         LR, #0
594682:  CMP             R1, R4
594684:  MOVW            R5, #0xFFFF
594688:  ITT GT
59468A:  BICGT.W         R12, R12, R5
59468E:  MOVWGT          R1, #0xBB8
594692:  MOV             R8, R1
594694:  B               loc_5946D2
594696:  MOVW            R5, #0xBB7
59469A:  LDR.W           LR, [R7,#arg_0]
59469E:  CMP             R0, R5
5946A0:  MOVW            R6, #0xFFFF
5946A4:  ITTT GT
5946A6:  MOVGT           R2, #0
5946A8:  MOVGT.W         R3, #0x3F800000
5946AC:  MOVGT.W         LR, #0
5946B0:  CMP             R0, R5
5946B2:  ITT GT
5946B4:  BICGT.W         R12, R12, R6
5946B8:  MOVWGT          R0, #0xBB8
5946BC:  CMP             R1, R8
5946BE:  BGT             loc_594670
5946C0:  MOVW            R1, #0xFFFF
5946C4:  BIC.W           R12, R12, R1
5946C8:  MOV.W           R3, #0x3F800000
5946CC:  MOV.W           LR, #0
5946D0:  MOVS            R2, #0
5946D2:  LDR             R1, =(_ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr - 0x5946D8)
5946D4:  ADD             R1, PC; _ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr
5946D6:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterVertices ...
5946D8:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterVertices
5946DA:  CMP             R1, #1
5946DC:  BLT             loc_594714
5946DE:  LDR             R5, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5946E8)
5946E0:  VMOV            S0, R2
5946E4:  ADD             R5, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5946E6:  LDR             R5, [R5]; CWaterLevel::m_aVertices ...
5946E8:  ADDS            R6, R5, #2
5946EA:  MOVS            R5, #0
5946EC:  LDRSH.W         R4, [R6,#-2]; CWaterLevel::m_aVertices
5946F0:  CMP             R0, R4
5946F2:  ITT EQ
5946F4:  LDRSHEQ.W       R4, [R6]
5946F8:  CMPEQ           R8, R4
5946FA:  BNE             loc_59470C
5946FC:  ADDS            R4, R6, #2
5946FE:  VLDR            S2, [R4]
594702:  VCMP.F32        S2, S0
594706:  VMRS            APSR_nzcv, FPSCR
59470A:  BEQ             loc_594748
59470C:  ADDS            R5, #1
59470E:  ADDS            R6, #0x14
594710:  CMP             R5, R1
594712:  BLT             loc_5946EC
594714:  LDR             R4, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x594720)
594716:  ADD.W           R6, R1, R1,LSL#2
59471A:  LDR             R5, =(_ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr - 0x594722)
59471C:  ADD             R4, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59471E:  ADD             R5, PC; _ZN11CWaterLevel21m_nNumOfWaterVerticesE_ptr
594720:  LDR             R4, [R4]; CWaterLevel::m_aVertices ...
594722:  LDR             R5, [R5]; CWaterLevel::m_nNumOfWaterVertices ...
594724:  STRH.W          R0, [R4,R6,LSL#2]
594728:  ADD.W           R0, R4, R6,LSL#2
59472C:  STRH.W          R12, [R0,#0x10]
594730:  ADD.W           R12, R0, #4
594734:  STM.W           R12, {R2,R3,LR}
594738:  STRH.W          R8, [R0,#2]
59473C:  ADDS            R0, R1, #1
59473E:  STR             R0, [R5]; CWaterLevel::m_nNumOfWaterVertices
594740:  MOV             R0, R1
594742:  POP.W           {R8}
594746:  POP             {R4-R7,PC}
594748:  MOV             R1, R5
59474A:  B               loc_594740
