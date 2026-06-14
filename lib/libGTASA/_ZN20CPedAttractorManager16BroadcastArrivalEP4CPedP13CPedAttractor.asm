; =========================================================
; Game Engine Function: _ZN20CPedAttractorManager16BroadcastArrivalEP4CPedP13CPedAttractor
; Address            : 0x4AA708 - 0x4AA8BA
; =========================================================

4AA708:  PUSH            {R4-R7,LR}
4AA70A:  ADD             R7, SP, #0xC
4AA70C:  PUSH.W          {R11}
4AA710:  MOV             R5, R2
4AA712:  MOV             R4, R1
4AA714:  MOV             R6, R0
4AA716:  CMP             R5, #0
4AA718:  BEQ.W           def_4AA738; jumptable 004AA738 default case
4AA71C:  MOV             R0, R6; this
4AA71E:  MOV             R1, R4; CPed *
4AA720:  BLX             j__ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPed; CPedAttractorManager::IsPedRegisteredWithEffect(CPed *)
4AA724:  CMP             R0, #1
4AA726:  BNE.W           def_4AA738; jumptable 004AA738 default case
4AA72A:  LDR             R0, [R5]
4AA72C:  LDR             R1, [R0]
4AA72E:  MOV             R0, R5
4AA730:  BLX             R1
4AA732:  CMP             R0, #9; switch 10 cases
4AA734:  BHI.W           def_4AA738; jumptable 004AA738 default case
4AA738:  TBB.W           [PC,R0]; switch jump
4AA73C:  DCB 5; jump table for switch statement
4AA73D:  DCB 0x18
4AA73E:  DCB 0x2B
4AA73F:  DCB 0x3D
4AA740:  DCB 0x4E
4AA741:  DCB 0x5F
4AA742:  DCB 0x70
4AA743:  DCB 0x81
4AA744:  DCB 0x92
4AA745:  DCB 0xA3
4AA746:  LDR             R1, [R6,#0x10]; jumptable 004AA738 case 0
4AA748:  CMP             R1, #1
4AA74A:  BLT.W           def_4AA738; jumptable 004AA738 default case
4AA74E:  LDR             R2, [R6,#0x14]
4AA750:  MOVS            R0, #0
4AA752:  MOVS            R3, #0
4AA754:  LDR.W           R6, [R2,R3,LSL#2]
4AA758:  ADDS            R3, #1
4AA75A:  CMP             R6, R5
4AA75C:  IT EQ
4AA75E:  MOVEQ           R0, R6
4AA760:  CMP             R3, R1
4AA762:  BGE.W           loc_4AA8A2
4AA766:  CMP             R6, R5
4AA768:  BNE             loc_4AA754
4AA76A:  B               loc_4AA8A2
4AA76C:  LDR             R1, [R6,#4]; jumptable 004AA738 case 1
4AA76E:  CMP             R1, #1
4AA770:  BLT.W           def_4AA738; jumptable 004AA738 default case
4AA774:  LDR             R2, [R6,#8]
4AA776:  MOVS            R0, #0
4AA778:  MOVS            R3, #0
4AA77A:  LDR.W           R6, [R2,R3,LSL#2]
4AA77E:  ADDS            R3, #1
4AA780:  CMP             R6, R5
4AA782:  IT EQ
4AA784:  MOVEQ           R0, R6
4AA786:  CMP             R3, R1
4AA788:  BGE.W           loc_4AA8A2
4AA78C:  CMP             R6, R5
4AA78E:  BNE             loc_4AA77A
4AA790:  B               loc_4AA8A2
4AA792:  LDR             R1, [R6,#0x1C]; jumptable 004AA738 case 2
4AA794:  CMP             R1, #1
4AA796:  BLT.W           def_4AA738; jumptable 004AA738 default case
4AA79A:  LDR             R2, [R6,#0x20]
4AA79C:  MOVS            R0, #0
4AA79E:  MOVS            R3, #0
4AA7A0:  LDR.W           R6, [R2,R3,LSL#2]
4AA7A4:  ADDS            R3, #1
4AA7A6:  CMP             R6, R5
4AA7A8:  IT EQ
4AA7AA:  MOVEQ           R0, R6
4AA7AC:  CMP             R3, R1
4AA7AE:  BGE             loc_4AA8A2
4AA7B0:  CMP             R6, R5
4AA7B2:  BNE             loc_4AA7A0
4AA7B4:  B               loc_4AA8A2
4AA7B6:  LDR             R1, [R6,#0x28]; jumptable 004AA738 case 3
4AA7B8:  CMP             R1, #1
4AA7BA:  BLT             def_4AA738; jumptable 004AA738 default case
4AA7BC:  LDR             R2, [R6,#0x2C]
4AA7BE:  MOVS            R0, #0
4AA7C0:  MOVS            R3, #0
4AA7C2:  LDR.W           R6, [R2,R3,LSL#2]
4AA7C6:  ADDS            R3, #1
4AA7C8:  CMP             R6, R5
4AA7CA:  IT EQ
4AA7CC:  MOVEQ           R0, R6
4AA7CE:  CMP             R3, R1
4AA7D0:  BGE             loc_4AA8A2
4AA7D2:  CMP             R6, R5
4AA7D4:  BNE             loc_4AA7C2
4AA7D6:  B               loc_4AA8A2
4AA7D8:  LDR             R1, [R6,#0x34]; jumptable 004AA738 case 4
4AA7DA:  CMP             R1, #1
4AA7DC:  BLT             def_4AA738; jumptable 004AA738 default case
4AA7DE:  LDR             R2, [R6,#0x38]
4AA7E0:  MOVS            R0, #0
4AA7E2:  MOVS            R3, #0
4AA7E4:  LDR.W           R6, [R2,R3,LSL#2]
4AA7E8:  ADDS            R3, #1
4AA7EA:  CMP             R6, R5
4AA7EC:  IT EQ
4AA7EE:  MOVEQ           R0, R6
4AA7F0:  CMP             R3, R1
4AA7F2:  BGE             loc_4AA8A2
4AA7F4:  CMP             R6, R5
4AA7F6:  BNE             loc_4AA7E4
4AA7F8:  B               loc_4AA8A2
4AA7FA:  LDR             R1, [R6,#0x40]; jumptable 004AA738 case 5
4AA7FC:  CMP             R1, #1
4AA7FE:  BLT             def_4AA738; jumptable 004AA738 default case
4AA800:  LDR             R2, [R6,#0x44]
4AA802:  MOVS            R0, #0
4AA804:  MOVS            R3, #0
4AA806:  LDR.W           R6, [R2,R3,LSL#2]
4AA80A:  ADDS            R3, #1
4AA80C:  CMP             R6, R5
4AA80E:  IT EQ
4AA810:  MOVEQ           R0, R6
4AA812:  CMP             R3, R1
4AA814:  BGE             loc_4AA8A2
4AA816:  CMP             R6, R5
4AA818:  BNE             loc_4AA806
4AA81A:  B               loc_4AA8A2
4AA81C:  LDR             R1, [R6,#0x4C]; jumptable 004AA738 case 6
4AA81E:  CMP             R1, #1
4AA820:  BLT             def_4AA738; jumptable 004AA738 default case
4AA822:  LDR             R2, [R6,#0x50]
4AA824:  MOVS            R0, #0
4AA826:  MOVS            R3, #0
4AA828:  LDR.W           R6, [R2,R3,LSL#2]
4AA82C:  ADDS            R3, #1
4AA82E:  CMP             R6, R5
4AA830:  IT EQ
4AA832:  MOVEQ           R0, R6
4AA834:  CMP             R3, R1
4AA836:  BGE             loc_4AA8A2
4AA838:  CMP             R6, R5
4AA83A:  BNE             loc_4AA828
4AA83C:  B               loc_4AA8A2
4AA83E:  LDR             R1, [R6,#0x58]; jumptable 004AA738 case 7
4AA840:  CMP             R1, #1
4AA842:  BLT             def_4AA738; jumptable 004AA738 default case
4AA844:  LDR             R2, [R6,#0x5C]
4AA846:  MOVS            R0, #0
4AA848:  MOVS            R3, #0
4AA84A:  LDR.W           R6, [R2,R3,LSL#2]
4AA84E:  ADDS            R3, #1
4AA850:  CMP             R6, R5
4AA852:  IT EQ
4AA854:  MOVEQ           R0, R6
4AA856:  CMP             R3, R1
4AA858:  BGE             loc_4AA8A2
4AA85A:  CMP             R6, R5
4AA85C:  BNE             loc_4AA84A
4AA85E:  B               loc_4AA8A2
4AA860:  LDR             R1, [R6,#0x64]; jumptable 004AA738 case 8
4AA862:  CMP             R1, #1
4AA864:  BLT             def_4AA738; jumptable 004AA738 default case
4AA866:  LDR             R2, [R6,#0x68]
4AA868:  MOVS            R0, #0
4AA86A:  MOVS            R3, #0
4AA86C:  LDR.W           R6, [R2,R3,LSL#2]
4AA870:  ADDS            R3, #1
4AA872:  CMP             R6, R5
4AA874:  IT EQ
4AA876:  MOVEQ           R0, R6
4AA878:  CMP             R3, R1
4AA87A:  BGE             loc_4AA8A2
4AA87C:  CMP             R6, R5
4AA87E:  BNE             loc_4AA86C
4AA880:  B               loc_4AA8A2
4AA882:  LDR             R1, [R6,#0x70]; jumptable 004AA738 case 9
4AA884:  CMP             R1, #1
4AA886:  BLT             def_4AA738; jumptable 004AA738 default case
4AA888:  LDR             R2, [R6,#0x74]
4AA88A:  MOVS            R0, #0
4AA88C:  MOVS            R3, #0
4AA88E:  LDR.W           R6, [R2,R3,LSL#2]
4AA892:  ADDS            R3, #1
4AA894:  CMP             R6, R5
4AA896:  IT EQ
4AA898:  MOVEQ           R0, R6; this
4AA89A:  CMP             R3, R1
4AA89C:  BGE             loc_4AA8A2
4AA89E:  CMP             R6, R5
4AA8A0:  BNE             loc_4AA88E
4AA8A2:  CBZ             R0, def_4AA738; jumptable 004AA738 default case
4AA8A4:  MOV             R1, R4; CPed *
4AA8A6:  BLX             j__ZN13CPedAttractor16BroadcastArrivalEP4CPed; CPedAttractor::BroadcastArrival(CPed *)
4AA8AA:  MOVS            R0, #1
4AA8AC:  POP.W           {R11}
4AA8B0:  POP             {R4-R7,PC}
4AA8B2:  MOVS            R0, #0; jumptable 004AA738 default case
4AA8B4:  POP.W           {R11}
4AA8B8:  POP             {R4-R7,PC}
