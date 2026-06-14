; =========================================================
; Game Engine Function: sub_18E6C8
; Address            : 0x18E6C8 - 0x18E7C8
; =========================================================

18E6C8:  CMP             R1, #0
18E6CA:  BEQ             locret_18E7C6
18E6CC:  PUSH            {R4-R7,LR}
18E6CE:  ADD             R7, SP, #0x14+var_8
18E6D0:  PUSH.W          {R8}
18E6D4:  SUB             SP, SP, #0x118
18E6D6:  LDR             R2, =(aS_0 - 0x18E6E2); "%s" ...
18E6D8:  ADD             R6, SP, #0x130+var_11C
18E6DA:  MOV             R3, R1
18E6DC:  MOV             R8, R0
18E6DE:  ADD             R2, PC; "%s"
18E6E0:  MOV             R0, R6
18E6E2:  MOV.W           R1, #0x104
18E6E6:  BL              sub_18E69E
18E6EA:  MOV             R5, SP
18E6EC:  MOV             R0, R6
18E6EE:  MOV             R1, R5
18E6F0:  BL              sub_18E49E
18E6F4:  LDR             R0, =(unk_BEB55 - 0x18E6FC)
18E6F6:  MOVS            R1, #0
18E6F8:  ADD             R0, PC; unk_BEB55
18E6FA:  LDRB            R2, [R5,R1]
18E6FC:  MOVS            R3, #0
18E6FE:  LDRB            R6, [R0,R3]
18E700:  ADDS            R3, #1
18E702:  CMP             R3, #0x64 ; 'd'
18E704:  EOR.W           R2, R2, R6
18E708:  EOR.W           R2, R2, #0x2F ; '/'
18E70C:  BNE             loc_18E6FE
18E70E:  STRB            R2, [R5,R1]
18E710:  ADDS            R1, #1
18E712:  CMP             R1, #5
18E714:  BNE             loc_18E6FA
18E716:  MOVS            R1, #5
18E718:  LDRB            R2, [R5,R1]
18E71A:  MOVS            R3, #0
18E71C:  LDRB            R6, [R0,R3]
18E71E:  ADDS            R3, #1
18E720:  CMP             R3, #0x64 ; 'd'
18E722:  EOR.W           R2, R2, R6
18E726:  EOR.W           R2, R2, #0x45 ; 'E'
18E72A:  BNE             loc_18E71C
18E72C:  STRB            R2, [R5,R1]
18E72E:  ADDS            R1, #1
18E730:  CMP             R1, #0xA
18E732:  BNE             loc_18E718
18E734:  MOVS            R1, #0xA
18E736:  LDRB            R2, [R5,R1]
18E738:  MOVS            R3, #0
18E73A:  LDRB            R6, [R0,R3]
18E73C:  ADDS            R3, #1
18E73E:  CMP             R3, #0x64 ; 'd'
18E740:  EOR.W           R2, R2, R6
18E744:  EOR.W           R2, R2, #0x6F ; 'o'
18E748:  BNE             loc_18E73A
18E74A:  STRB            R2, [R5,R1]
18E74C:  ADDS            R1, #1
18E74E:  CMP             R1, #0xF
18E750:  BNE             loc_18E736
18E752:  MOVS            R1, #0xF
18E754:  MOV             R2, #0xFFFFFFDB
18E758:  LDRB            R3, [R5,R1]
18E75A:  MOVS            R6, #0
18E75C:  LDRB            R4, [R0,R6]
18E75E:  ADDS            R6, #1
18E760:  CMP             R6, #0x64 ; 'd'
18E762:  EOR.W           R3, R3, R4
18E766:  EOR.W           R3, R3, R2
18E76A:  BNE             loc_18E75C
18E76C:  STRB            R3, [R5,R1]
18E76E:  ADDS            R1, #1
18E770:  CMP             R1, #0x14
18E772:  BNE             loc_18E758
18E774:  LDR             R1, =(unk_BEBB9 - 0x18E77C)
18E776:  MOVS            R0, #0
18E778:  ADD             R1, PC; unk_BEBB9
18E77A:  LDRB            R2, [R5,R0]
18E77C:  LDRB            R3, [R1,R0]
18E77E:  EORS            R2, R3
18E780:  STRB            R2, [R5,R0]
18E782:  ADDS            R0, #1
18E784:  CMP             R0, #0x14
18E786:  BNE             loc_18E77A
18E788:  MOVS            R0, #0
18E78A:  LDRB            R1, [R5,R0]
18E78C:  MOVS            R2, #0x30 ; '0'
18E78E:  CMP             R1, #0x9F
18E790:  IT HI
18E792:  MOVHI           R2, #0x37 ; '7'
18E794:  ADD.W           R2, R2, R1,LSR#4
18E798:  STRB.W          R2, [R8,R0,LSL#1]
18E79C:  AND.W           R1, R1, #0xF
18E7A0:  MOVS            R2, #0x30 ; '0'
18E7A2:  CMP             R1, #9
18E7A4:  IT HI
18E7A6:  MOVHI           R2, #0x37 ; '7'
18E7A8:  ADD             R1, R2
18E7AA:  ADD.W           R2, R8, R0,LSL#1
18E7AE:  ADDS            R0, #1
18E7B0:  CMP             R0, #0x14
18E7B2:  STRB            R1, [R2,#1]
18E7B4:  BNE             loc_18E78A
18E7B6:  MOVS            R0, #0
18E7B8:  STRB.W          R0, [R8,#0x28]
18E7BC:  ADD             SP, SP, #0x118
18E7BE:  POP.W           {R8}
18E7C2:  POP.W           {R4-R7,LR}
18E7C6:  BX              LR
