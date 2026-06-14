; =========================================================
; Game Engine Function: _ZN9CPathFind19CompleteNewInteriorEP12CNodeAddress
; Address            : 0x31A60C - 0x31AC48
; =========================================================

31A60C:  PUSH            {R4-R7,LR}
31A60E:  ADD             R7, SP, #0xC
31A610:  PUSH.W          {R8-R11}
31A614:  SUB             SP, SP, #0x3C
31A616:  STR             R0, [SP,#0x58+var_2C]
31A618:  MOVW            R9, #0xFFFF
31A61C:  LDR.W           R0, =(NumNodesGiven_ptr - 0x31A62C)
31A620:  CMP             R1, #0
31A622:  IT NE
31A624:  STRHNE.W        R9, [R1]
31A628:  ADD             R0, PC; NumNodesGiven_ptr
31A62A:  LDR             R0, [R0]; NumNodesGiven
31A62C:  LDR             R0, [R0]
31A62E:  CMP             R0, #0
31A630:  BEQ.W           loc_31AC36
31A634:  LDR.W           R1, =(NewInteriorSlot_ptr - 0x31A640)
31A638:  LDR.W           R2, =(NumLinksToExteriorNodes_ptr - 0x31A642)
31A63C:  ADD             R1, PC; NewInteriorSlot_ptr
31A63E:  ADD             R2, PC; NumLinksToExteriorNodes_ptr
31A640:  LDR             R1, [R1]; NewInteriorSlot
31A642:  LDR             R2, [R2]; NumLinksToExteriorNodes
31A644:  LDR             R1, [R1]
31A646:  LDR             R2, [R2]
31A648:  CMP             R2, #1
31A64A:  BLT             loc_31A676
31A64C:  LDR.W           R2, =(aExteriorNodeLinkedTo_ptr - 0x31A658)
31A650:  LDR.W           R10, [SP,#0x58+var_2C]
31A654:  ADD             R2, PC; aExteriorNodeLinkedTo_ptr
31A656:  LDR             R2, [R2]; aExteriorNodeLinkedTo
31A658:  LDR             R2, [R2]
31A65A:  UXTH            R3, R2
31A65C:  LSRS            R6, R2, #0x10
31A65E:  ADD.W           R3, R10, R3,LSL#2
31A662:  LSLS            R6, R6, #3
31A664:  SUB.W           R2, R6, R2,LSR#16
31A668:  LDR.W           R3, [R3,#0x804]
31A66C:  ADD.W           R2, R3, R2,LSL#2
31A670:  LDRB            R2, [R2,#0x17]
31A672:  STR             R2, [SP,#0x58+var_24]
31A674:  B               loc_31A680
31A676:  ADD.W           R2, R1, #0x64 ; 'd'
31A67A:  STR             R2, [SP,#0x58+var_24]
31A67C:  LDR.W           R10, [SP,#0x58+var_2C]
31A680:  LDR.W           R2, =(InteriorIDBeingBuilt_ptr - 0x31A694)
31A684:  RSB.W           R0, R0, R0,LSL#3
31A688:  ADD.W           R1, R10, R1,LSL#2; unsigned int
31A68C:  MOVW            R3, #0x3588
31A690:  ADD             R2, PC; InteriorIDBeingBuilt_ptr
31A692:  LSLS            R0, R0, #2; byte_count
31A694:  LDR             R2, [R2]; InteriorIDBeingBuilt
31A696:  LDR             R2, [R2]
31A698:  STR             R2, [R1,R3]
31A69A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31A69E:  LDR.W           R1, =(NewInteriorSlot_ptr - 0x31A6AA)
31A6A2:  LDR.W           R2, =(NumNodesGiven_ptr - 0x31A6AC)
31A6A6:  ADD             R1, PC; NewInteriorSlot_ptr
31A6A8:  ADD             R2, PC; NumNodesGiven_ptr
31A6AA:  LDR             R1, [R1]; NewInteriorSlot
31A6AC:  LDR             R2, [R2]; NumNodesGiven
31A6AE:  LDR             R1, [R1]
31A6B0:  ADDS            R1, #0x40 ; '@'
31A6B2:  STR             R1, [SP,#0x58+var_28]
31A6B4:  ADD.W           R1, R10, R1,LSL#2
31A6B8:  STR.W           R0, [R1,#0x804]
31A6BC:  LDR             R3, [R2]
31A6BE:  CMP             R3, #1
31A6C0:  MOV             R2, R3
31A6C2:  STR             R2, [SP,#0x58+var_30]
31A6C4:  BLT.W           loc_31A9DA
31A6C8:  LDR.W           R2, =(YCoorGiven_ptr - 0x31A6E0)
31A6CC:  ADDW            R3, R1, #0x804
31A6D0:  LDR.W           R1, =(XCoorGiven_ptr - 0x31A6E2)
31A6D4:  VMOV.F32        S0, #8.0
31A6D8:  LDR.W           R9, =(ZCoorGiven_ptr - 0x31A6E6)
31A6DC:  ADD             R2, PC; YCoorGiven_ptr
31A6DE:  ADD             R1, PC; XCoorGiven_ptr
31A6E0:  MOVS            R5, #0x18
31A6E2:  ADD             R9, PC; ZCoorGiven_ptr
31A6E4:  LDR.W           LR, [R2]; YCoorGiven
31A6E8:  LDR.W           R2, =(DontWanderGiven_ptr - 0x31A6FC)
31A6EC:  MOV.W           R10, #0
31A6F0:  LDR.W           R12, [R1]; XCoorGiven
31A6F4:  LDR.W           R11, [R9]; ZCoorGiven
31A6F8:  ADD             R2, PC; DontWanderGiven_ptr
31A6FA:  LDR             R1, [R2]; DontWanderGiven
31A6FC:  STR             R1, [SP,#0x58+var_34]
31A6FE:  B               loc_31A710
31A700:  ADDS            R5, #0x1C
31A702:  ADD.W           R11, R11, #4
31A706:  ADD.W           LR, LR, #4
31A70A:  LDR             R0, [R3]
31A70C:  ADD.W           R12, R12, #4
31A710:  VLDR            S2, [R11]
31A714:  ADD             R0, R5
31A716:  VLDR            S4, [LR]
31A71A:  VMUL.F32        S2, S2, S0
31A71E:  VLDR            S6, [R12]
31A722:  VMUL.F32        S4, S4, S0
31A726:  VMUL.F32        S6, S6, S0
31A72A:  VCVT.S32.F32    S2, S2
31A72E:  VCVT.S32.F32    S4, S4
31A732:  VCVT.S32.F32    S6, S6
31A736:  VMOV            R2, S4
31A73A:  STRH.W          R2, [R0,#-0xE]
31A73E:  VMOV            R2, S6
31A742:  STRH.W          R2, [R0,#-0x10]
31A746:  VMOV            R2, S2
31A74A:  STRH.W          R2, [R0,#-0xC]
31A74E:  LDR             R0, [R3]
31A750:  ADD             R0, R5
31A752:  STRH.W          R10, [R0,#-4]
31A756:  LDR             R1, [SP,#0x58+var_28]
31A758:  STRH.W          R1, [R0,#-6]
31A75C:  MOVS            R1, #0
31A75E:  LDR             R0, [R3]
31A760:  ADD             R0, R5
31A762:  STRB.W          R1, [R0,#-2]
31A766:  LDR             R0, [R3]
31A768:  LDR             R1, [SP,#0x58+var_24]
31A76A:  ADD             R0, R5
31A76C:  STRB.W          R1, [R0,#-1]
31A770:  LDR             R0, [R3]
31A772:  LDRH            R2, [R0,R5]
31A774:  BIC.W           R2, R2, #0x10
31A778:  STRH            R2, [R0,R5]
31A77A:  LDR             R0, [R3]
31A77C:  ADD.W           R9, R0, R5
31A780:  LDRH            R2, [R0,R5]
31A782:  LDRB.W          R8, [R9,#2]
31A786:  ORR.W           R2, R2, #0x20 ; ' '
31A78A:  STRH            R2, [R0,R5]
31A78C:  STRB.W          R8, [R9,#2]
31A790:  LDR             R0, [R3]
31A792:  ADDS            R6, R0, R5
31A794:  LDRH            R2, [R0,R5]
31A796:  LDRB            R4, [R6,#2]
31A798:  ORR.W           R2, R2, #0x100
31A79C:  STRH            R2, [R0,R5]
31A79E:  STRB            R4, [R6,#2]
31A7A0:  LDR             R0, [R3]
31A7A2:  ADDS            R4, R0, R5
31A7A4:  LDRH            R2, [R0,R5]
31A7A6:  LDRB            R6, [R4,#2]
31A7A8:  BIC.W           R2, R2, #0x40 ; '@'
31A7AC:  STRH            R2, [R0,R5]
31A7AE:  STRB            R6, [R4,#2]
31A7B0:  LDR             R0, [R3]
31A7B2:  ADDS            R4, R0, R5
31A7B4:  LDRH            R2, [R0,R5]
31A7B6:  LDRB            R6, [R4,#2]
31A7B8:  BIC.W           R2, R2, #0x80
31A7BC:  STRH            R2, [R0,R5]
31A7BE:  STRB            R6, [R4,#2]
31A7C0:  LDR             R0, [R3]
31A7C2:  ADDS            R4, R0, R5
31A7C4:  LDRH            R2, [R0,R5]
31A7C6:  LDRB            R6, [R4,#2]
31A7C8:  BIC.W           R2, R2, #0x200
31A7CC:  STRH            R2, [R0,R5]
31A7CE:  STRB            R6, [R4,#2]
31A7D0:  LDR             R0, [R3]
31A7D2:  LDR             R1, [SP,#0x58+var_34]
31A7D4:  ADDS            R2, R0, R5
31A7D6:  LDRB            R4, [R2,#2]
31A7D8:  LDRB.W          R6, [R1,R10]
31A7DC:  ADD.W           R10, R10, #1
31A7E0:  LDRH            R1, [R0,R5]
31A7E2:  ORR.W           R1, R1, R4,LSL#16
31A7E6:  MOV             R4, #0xFFFBFF
31A7EE:  ANDS            R1, R4
31A7F0:  ORR.W           R1, R1, R6,LSL#10
31A7F4:  STRH            R1, [R0,R5]
31A7F6:  LSRS            R0, R1, #0x10
31A7F8:  STRB            R0, [R2,#2]
31A7FA:  LDR             R0, [R3]
31A7FC:  ADDS            R2, R0, R5
31A7FE:  LDRH            R1, [R0,R5]
31A800:  LDRB            R4, [R2,#2]
31A802:  ORR.W           R1, R1, #0x800
31A806:  STRH            R1, [R0,R5]
31A808:  STRB            R4, [R2,#2]
31A80A:  LDR             R0, [R3]
31A80C:  ADDS            R2, R0, R5
31A80E:  LDRH            R1, [R0,R5]
31A810:  LDRB            R4, [R2,#2]
31A812:  BIC.W           R1, R1, #0x3000
31A816:  STRH            R1, [R0,R5]
31A818:  STRB            R4, [R2,#2]
31A81A:  LDR             R0, [R3]
31A81C:  ADDS            R1, R0, R5
31A81E:  LDRH            R4, [R0,R5]
31A820:  LDRB            R2, [R1,#2]
31A822:  STRH            R4, [R0,R5]
31A824:  ORR.W           R0, R4, R2,LSL#16
31A828:  ORR.W           R0, R0, #0xF0000
31A82C:  LSRS            R0, R0, #0x10
31A82E:  STRB            R0, [R1,#2]
31A830:  LDR             R0, [R3]
31A832:  ADDS            R1, R0, R5
31A834:  LDRH            R4, [R0,R5]
31A836:  LDRB            R2, [R1,#2]
31A838:  STRH            R4, [R0,R5]
31A83A:  ORR.W           R0, R4, R2,LSL#16
31A83E:  BFC.W           R0, #0x14, #0xC
31A842:  LSRS            R0, R0, #0x10
31A844:  STRB            R0, [R1,#2]
31A846:  MOVW            R1, #0x7FFE; unsigned int
31A84A:  LDR             R0, [R3]
31A84C:  ADD             R0, R5
31A84E:  STRH.W          R1, [R0,#-0xA]
31A852:  LDR             R0, [SP,#0x58+var_30]
31A854:  CMP             R10, R0
31A856:  BLT.W           loc_31A700
31A85A:  LDR.W           R0, =(NumNodesGiven_ptr - 0x31A862)
31A85E:  ADD             R0, PC; NumNodesGiven_ptr
31A860:  LDR             R0, [R0]; NumNodesGiven
31A862:  LDR             R6, [R0]
31A864:  CMP             R6, #1
31A866:  BLT.W           loc_31A9E0
31A86A:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A874)
31A86E:  MOVS            R2, #0
31A870:  ADD             R0, PC; ConnectsToGiven_ptr
31A872:  LDR             R1, [R0]; ConnectsToGiven
31A874:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A87C)
31A878:  ADD             R0, PC; ConnectsToGiven_ptr
31A87A:  LDR             R3, [R0]; ConnectsToGiven
31A87C:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A884)
31A880:  ADD             R0, PC; ConnectsToGiven_ptr
31A882:  LDR             R0, [R0]; ConnectsToGiven
31A884:  STR             R0, [SP,#0x58+var_24]
31A886:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A88E)
31A88A:  ADD             R0, PC; ConnectsToGiven_ptr
31A88C:  LDR             R0, [R0]; ConnectsToGiven
31A88E:  STR             R0, [SP,#0x58+var_28]
31A890:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A898)
31A894:  ADD             R0, PC; ConnectsToGiven_ptr
31A896:  LDR             R0, [R0]; ConnectsToGiven
31A898:  STR             R0, [SP,#0x58+var_38]
31A89A:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A8A2)
31A89E:  ADD             R0, PC; ConnectsToGiven_ptr
31A8A0:  LDR             R0, [R0]; ConnectsToGiven
31A8A2:  STR             R0, [SP,#0x58+var_40]
31A8A4:  LDR.W           R0, =(ConnectsToGiven_ptr - 0x31A8AC)
31A8A8:  ADD             R0, PC; ConnectsToGiven_ptr
31A8AA:  LDR             R0, [R0]; ConnectsToGiven
31A8AC:  STRD.W          R0, R6, [SP,#0x58+var_4C]
31A8B0:  MOVS            R0, #0
31A8B2:  LDRSB           R6, [R1,R0]
31A8B4:  CMP             R6, #0
31A8B6:  BLT             loc_31A966
31A8B8:  ADD.W           R5, R6, R6,LSL#1
31A8BC:  UXTB.W          R10, R2
31A8C0:  LDRB.W          LR, [R3,R5,LSL#1]
31A8C4:  CMP             LR, R10
31A8C6:  BEQ             loc_31A966
31A8C8:  LDR             R6, [SP,#0x58+var_24]
31A8CA:  ADD.W           R4, R6, R5,LSL#1
31A8CE:  LDRB.W          R9, [R4,#1]!
31A8D2:  CMP             R9, R10
31A8D4:  BEQ             loc_31A966
31A8D6:  LDR             R6, [SP,#0x58+var_28]
31A8D8:  ADD.W           R12, R6, R5,LSL#1
31A8DC:  LDRB.W          R11, [R12,#2]!
31A8E0:  CMP             R11, R10
31A8E2:  BEQ             loc_31A966
31A8E4:  LDR             R6, [SP,#0x58+var_38]
31A8E6:  ADD.W           R6, R6, R5,LSL#1
31A8EA:  LDRB.W          R8, [R6,#3]!
31A8EE:  STR             R6, [SP,#0x58+var_34]
31A8F0:  CMP             R8, R10
31A8F2:  MOV             R6, R8
31A8F4:  STR             R6, [SP,#0x58+var_30]
31A8F6:  BEQ             loc_31A966
31A8F8:  LDR             R6, [SP,#0x58+var_40]
31A8FA:  ADD.W           R6, R6, R5,LSL#1
31A8FE:  LDRB.W          R8, [R6,#4]!
31A902:  STR             R6, [SP,#0x58+var_3C]
31A904:  CMP             R8, R10
31A906:  BEQ             loc_31A966
31A908:  LDR             R6, [SP,#0x58+var_4C]
31A90A:  STR.W           R8, [SP,#0x58+var_44]
31A90E:  ADD.W           R6, R6, R5,LSL#1
31A912:  LDRB.W          R8, [R6,#5]!
31A916:  STR             R6, [SP,#0x58+var_50]
31A918:  CMP             R8, R10
31A91A:  MOV             R10, R8
31A91C:  LDR.W           R8, [SP,#0x58+var_44]
31A920:  BEQ             loc_31A966
31A922:  SXTB.W          R6, LR
31A926:  CMP             R6, #0
31A928:  BLT             loc_31A960
31A92A:  SXTB.W          R5, R9
31A92E:  CMP.W           R5, #0xFFFFFFFF
31A932:  BLE             loc_31A964
31A934:  SXTB.W          R5, R11
31A938:  CMP             R5, #0
31A93A:  MOV             R4, R12
31A93C:  BLT             loc_31A964
31A93E:  LDR             R6, [SP,#0x58+var_30]
31A940:  LDR             R4, [SP,#0x58+var_34]
31A942:  SXTB            R6, R6
31A944:  CMP             R6, #0
31A946:  BLT             loc_31A964
31A948:  LDR             R4, [SP,#0x58+var_3C]
31A94A:  SXTB.W          R6, R8
31A94E:  CMP             R6, #0
31A950:  BLT             loc_31A964
31A952:  LDR             R4, [SP,#0x58+var_50]
31A954:  SXTB.W          R6, R10
31A958:  CMP             R6, #0
31A95A:  IT LT
31A95C:  STRBLT          R2, [R4]
31A95E:  B               loc_31A966
31A960:  ADD.W           R4, R3, R5,LSL#1
31A964:  STRB            R2, [R4]
31A966:  ADDS            R0, #1
31A968:  CMP             R0, #6
31A96A:  BNE             loc_31A8B2
31A96C:  LDR             R6, [SP,#0x58+var_48]
31A96E:  ADDS            R2, #1
31A970:  ADDS            R1, #6
31A972:  CMP             R2, R6
31A974:  BLT             loc_31A8B0
31A976:  CMP             R6, #1
31A978:  BLT             loc_31A9E0
31A97A:  LDR             R0, =(ConnectsToGiven_ptr - 0x31A98C)
31A97C:  MOV.W           R11, #0
31A980:  LDR.W           R10, [SP,#0x58+var_2C]
31A984:  MOV.W           R12, #1
31A988:  ADD             R0, PC; ConnectsToGiven_ptr
31A98A:  MOVS            R2, #0
31A98C:  MOVW            R9, #0xFFFF
31A990:  LDR             R0, [R0]; ConnectsToGiven
31A992:  ADDS            R0, #2
31A994:  LDRB.W          R3, [R0,#-2]
31A998:  ADDS            R2, #1
31A99A:  LDRB.W          R1, [R0,#-1]
31A99E:  CMP             R2, R6
31A9A0:  LDRB            R5, [R0]
31A9A2:  EOR.W           R3, R12, R3,LSR#7
31A9A6:  LDRB.W          R8, [R0,#1]
31A9AA:  EOR.W           R4, R12, R1,LSR#7
31A9AE:  ADD             R3, R11
31A9B0:  LDRB            R1, [R0,#2]
31A9B2:  ADD             R3, R4
31A9B4:  LDRB.W          LR, [R0,#3]
31A9B8:  EOR.W           R5, R12, R5,LSR#7
31A9BC:  ADD             R3, R5
31A9BE:  EOR.W           R4, R12, R8,LSR#7
31A9C2:  ADD             R3, R4
31A9C4:  EOR.W           R1, R12, R1,LSR#7
31A9C8:  ADD             R1, R3
31A9CA:  EOR.W           R3, R12, LR,LSR#7
31A9CE:  ADD.W           R11, R1, R3
31A9D2:  ADD.W           R0, R0, #6
31A9D6:  BLT             loc_31A994
31A9D8:  B               loc_31A9EC
31A9DA:  MOV.W           R11, #0
31A9DE:  B               loc_31A9EC
31A9E0:  MOV.W           R11, #0
31A9E4:  LDR.W           R10, [SP,#0x58+var_2C]
31A9E8:  MOVW            R9, #0xFFFF
31A9EC:  ADD.W           R8, R11, #0xC0
31A9F0:  MOV.W           R0, R8,LSL#2; byte_count
31A9F4:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31A9F8:  LDR             R1, =(NewInteriorSlot_ptr - 0x31A9FE)
31A9FA:  ADD             R1, PC; NewInteriorSlot_ptr
31A9FC:  LDR             R4, [R1]; NewInteriorSlot
31A9FE:  LDR             R1, [R4]
31AA00:  ADD.W           R1, R10, R1,LSL#2; unsigned int
31AA04:  STR.W           R0, [R1,#0xB44]
31AA08:  MOV             R0, R8; byte_count
31AA0A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31AA0E:  LDR             R1, [R4]
31AA10:  ADD.W           R1, R10, R1,LSL#2; unsigned int
31AA14:  STR.W           R0, [R1,#0xC64]
31AA18:  MOV             R0, R8; byte_count
31AA1A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
31AA1E:  LDR             R2, =(NumNodesGiven_ptr - 0x31AA26)
31AA20:  LDR             R1, [R4]
31AA22:  ADD             R2, PC; NumNodesGiven_ptr
31AA24:  ADD.W           R3, R10, R1,LSL#2
31AA28:  LDR             R2, [R2]; NumNodesGiven
31AA2A:  STR.W           R0, [R3,#0xD84]
31AA2E:  LDR             R0, [R2]
31AA30:  MOVS            R2, #0
31AA32:  STR             R2, [SP,#0x58+var_20]
31AA34:  CMP             R0, #1
31AA36:  MOV             R0, R11
31AA38:  BLT.W           loc_31AB80
31AA3C:  LDR             R0, =(ConnectsToGiven_ptr - 0x31AA4C)
31AA3E:  ADD.W           R9, SP, #0x58+var_20
31AA42:  STR.W           R11, [SP,#0x58+var_44]
31AA46:  MOVS            R2, #0
31AA48:  ADD             R0, PC; ConnectsToGiven_ptr
31AA4A:  MOV.W           R11, #1
31AA4E:  MOVS            R5, #0x10
31AA50:  LDR             R0, [R0]; ConnectsToGiven
31AA52:  ADDS            R6, R0, #5
31AA54:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA5A)
31AA56:  ADD             R0, PC; NewInteriorSlot_ptr
31AA58:  LDR             R0, [R0]; NewInteriorSlot
31AA5A:  STR             R0, [SP,#0x58+var_30]
31AA5C:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA62)
31AA5E:  ADD             R0, PC; NewInteriorSlot_ptr
31AA60:  LDR             R0, [R0]; NewInteriorSlot
31AA62:  STR             R0, [SP,#0x58+var_34]
31AA64:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA6A)
31AA66:  ADD             R0, PC; NewInteriorSlot_ptr
31AA68:  LDR             R0, [R0]; NewInteriorSlot
31AA6A:  STR             R0, [SP,#0x58+var_38]
31AA6C:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA72)
31AA6E:  ADD             R0, PC; NewInteriorSlot_ptr
31AA70:  LDR             R0, [R0]; NewInteriorSlot
31AA72:  STR             R0, [SP,#0x58+var_3C]
31AA74:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA7A)
31AA76:  ADD             R0, PC; NewInteriorSlot_ptr
31AA78:  LDR             R0, [R0]; NewInteriorSlot
31AA7A:  STR             R0, [SP,#0x58+var_40]
31AA7C:  LDR             R0, =(NumNodesGiven_ptr - 0x31AA82)
31AA7E:  ADD             R0, PC; NumNodesGiven_ptr
31AA80:  LDR             R0, [R0]; NumNodesGiven
31AA82:  STR             R0, [SP,#0x58+var_24]
31AA84:  LDR             R0, =(NewInteriorSlot_ptr - 0x31AA8A)
31AA86:  ADD             R0, PC; NewInteriorSlot_ptr
31AA88:  LDR             R0, [R0]; NewInteriorSlot
31AA8A:  STR             R0, [SP,#0x58+var_28]
31AA8C:  B               loc_31AAA0
31AA8E:  LDR             R0, [SP,#0x58+var_28]
31AA90:  ADDS            R5, #0x1C
31AA92:  LDR             R2, [SP,#0x58+var_20]
31AA94:  ADD.W           R11, R11, #1
31AA98:  ADDS            R6, #6
31AA9A:  LDR.W           R10, [SP,#0x58+var_2C]
31AA9E:  LDR             R1, [R0]
31AAA0:  ADD.W           R0, R1, #0x40 ; '@'; int
31AAA4:  ADD.W           R3, R10, R0,LSL#2
31AAA8:  SUB.W           R10, R11, #1
31AAAC:  LDR.W           R4, [R3,#0x804]
31AAB0:  STRH            R2, [R4,R5]
31AAB2:  LDR.W           R2, [R3,#0x804]
31AAB6:  ADD             R2, R5
31AAB8:  LDRH.W          R3, [R2,#8]!
31AABC:  LDRB            R4, [R2,#2]
31AABE:  BIC.W           R3, R3, #0xF
31AAC2:  STRH            R3, [R2]
31AAC4:  STRB            R4, [R2,#2]
31AAC6:  LDRSB.W         R3, [R6,#-5]; int
31AACA:  CMP             R3, #0
31AACC:  BLT             loc_31AADC
31AACE:  STRD.W          R1, R9, [SP,#0x58+var_58]; int
31AAD2:  SXTB.W          R1, R10; signed __int8
31AAD6:  MOV             R2, R0; int
31AAD8:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AADC:  LDRSB.W         R3, [R6,#-4]; int
31AAE0:  CMP.W           R3, #0xFFFFFFFF
31AAE4:  BLE             loc_31AAFA
31AAE6:  LDR             R0, [SP,#0x58+var_30]
31AAE8:  SXTB.W          R1, R10; signed __int8
31AAEC:  LDR             R0, [R0]
31AAEE:  STRD.W          R0, R9, [SP,#0x58+var_58]; int
31AAF2:  ADDS            R0, #0x40 ; '@'; int
31AAF4:  MOV             R2, R0; int
31AAF6:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AAFA:  LDRSB.W         R3, [R6,#-3]; int
31AAFE:  CMP             R3, #0
31AB00:  BLT             loc_31AB16
31AB02:  LDR             R0, [SP,#0x58+var_34]
31AB04:  SXTB.W          R1, R10; signed __int8
31AB08:  LDR             R0, [R0]
31AB0A:  STRD.W          R0, R9, [SP,#0x58+var_58]; int
31AB0E:  ADDS            R0, #0x40 ; '@'; int
31AB10:  MOV             R2, R0; int
31AB12:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AB16:  LDRSB.W         R3, [R6,#-2]; int
31AB1A:  CMP             R3, #0
31AB1C:  BLT             loc_31AB32
31AB1E:  LDR             R0, [SP,#0x58+var_38]
31AB20:  SXTB.W          R1, R10; signed __int8
31AB24:  LDR             R0, [R0]
31AB26:  STRD.W          R0, R9, [SP,#0x58+var_58]; int
31AB2A:  ADDS            R0, #0x40 ; '@'; int
31AB2C:  MOV             R2, R0; int
31AB2E:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AB32:  LDRSB.W         R3, [R6,#-1]; int
31AB36:  CMP             R3, #0
31AB38:  BLT             loc_31AB4E
31AB3A:  LDR             R0, [SP,#0x58+var_3C]
31AB3C:  SXTB.W          R1, R10; signed __int8
31AB40:  LDR             R0, [R0]
31AB42:  STRD.W          R0, R9, [SP,#0x58+var_58]; int
31AB46:  ADDS            R0, #0x40 ; '@'; int
31AB48:  MOV             R2, R0; int
31AB4A:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AB4E:  LDRSB.W         R3, [R6]; int
31AB52:  CMP             R3, #0
31AB54:  BLT             loc_31AB6A
31AB56:  LDR             R0, [SP,#0x58+var_40]
31AB58:  SXTB.W          R1, R10; signed __int8
31AB5C:  LDR             R0, [R0]
31AB5E:  STRD.W          R0, R9, [SP,#0x58+var_58]; int
31AB62:  ADDS            R0, #0x40 ; '@'; int
31AB64:  MOV             R2, R0; int
31AB66:  BLX             j__Z29SetOneAdjacentNodeForThisNodeiaiiiRi; SetOneAdjacentNodeForThisNode(int,signed char,int,int,int,int &)
31AB6A:  LDR             R0, [SP,#0x58+var_24]
31AB6C:  LDR             R0, [R0]
31AB6E:  CMP             R11, R0
31AB70:  BLT             loc_31AA8E
31AB72:  LDR.W           R11, [SP,#0x58+var_44]
31AB76:  MOVW            R9, #0xFFFF
31AB7A:  LDR.W           R10, [SP,#0x58+var_2C]
31AB7E:  MOV             R0, R11
31AB80:  LDR             R1, =(NewInteriorSlot_ptr - 0x31AB86)
31AB82:  ADD             R1, PC; NewInteriorSlot_ptr
31AB84:  LDR             R1, [R1]; NewInteriorSlot
31AB86:  LDR             R1, [R1]
31AB88:  ADD.W           R1, R10, R1,LSL#2
31AB8C:  LDR.W           R1, [R1,#0xB44]
31AB90:  STRH.W          R9, [R1,R0,LSL#2]
31AB94:  ADDS            R0, #1
31AB96:  CMP             R0, R8
31AB98:  BLT             loc_31AB80
31AB9A:  LDR             R0, =(NewInteriorSlot_ptr - 0x31ABA8)
31AB9C:  MOVW            R6, #0x1204
31ABA0:  LDR             R1, =(NumNodesGiven_ptr - 0x31ABAC)
31ABA2:  MOVS            R5, #0
31ABA4:  ADD             R0, PC; NewInteriorSlot_ptr
31ABA6:  LDR             R2, =(NumLinksToExteriorNodes_ptr - 0x31ABB0)
31ABA8:  ADD             R1, PC; NumNodesGiven_ptr
31ABAA:  LDR             R0, [R0]; NewInteriorSlot
31ABAC:  ADD             R2, PC; NumLinksToExteriorNodes_ptr
31ABAE:  LDR             R1, [R1]; NumNodesGiven
31ABB0:  LDR             R2, [R2]; NumLinksToExteriorNodes
31ABB2:  LDR             R0, [R0]
31ABB4:  LDR             R1, [R1]
31ABB6:  ADD.W           R3, R10, R0,LSL#2
31ABBA:  STR             R5, [R3,R6]
31ABBC:  MOVW            R6, #0x10E4
31ABC0:  STR             R1, [R3,R6]
31ABC2:  MOVW            R6, #0x1324
31ABC6:  STR             R1, [R3,R6]
31ABC8:  MOVW            R1, #0x1444
31ABCC:  STR             R5, [R3,R1]
31ABCE:  MOVW            R1, #0x1564
31ABD2:  STR.W           R11, [R3,R1]
31ABD6:  LDR             R1, [R2]
31ABD8:  CMP             R1, #1
31ABDA:  BLT             loc_31AC36
31ABDC:  LDR             R1, =(aInteriorNodeLinkedToExterior_ptr - 0x31ABE6)
31ABDE:  MOVS            R4, #0
31ABE0:  LDR             R2, =(aExteriorNodeLinkedTo_ptr - 0x31ABE8)
31ABE2:  ADD             R1, PC; aInteriorNodeLinkedToExterior_ptr
31ABE4:  ADD             R2, PC; aExteriorNodeLinkedTo_ptr
31ABE6:  LDR             R1, [R1]; aInteriorNodeLinkedToExterior
31ABE8:  STR             R1, [SP,#0x58+var_24]
31ABEA:  LDR             R1, =(NumLinksToExteriorNodes_ptr - 0x31ABF4)
31ABEC:  LDR.W           R9, [R2]; aExteriorNodeLinkedTo
31ABF0:  ADD             R1, PC; NumLinksToExteriorNodes_ptr
31ABF2:  LDR.W           R10, [R1]; NumLinksToExteriorNodes
31ABF6:  LDR             R1, =(NewInteriorSlot_ptr - 0x31ABFC)
31ABF8:  ADD             R1, PC; NewInteriorSlot_ptr
31ABFA:  LDR.W           R11, [R1]; NewInteriorSlot
31ABFE:  B               loc_31AC04
31AC00:  LDR.W           R0, [R11]
31AC04:  LDR             R1, [SP,#0x58+var_24]
31AC06:  ADDS            R0, #0x40 ; '@'
31AC08:  LDR.W           R5, [R9,R4,LSL#2]
31AC0C:  LDR.W           R8, [SP,#0x58+var_2C]
31AC10:  LDR.W           R1, [R1,R4,LSL#2]
31AC14:  MOV             R2, R5
31AC16:  PKHBT.W         R6, R0, R1,LSL#16
31AC1A:  MOV             R0, R8
31AC1C:  MOV             R1, R6
31AC1E:  BLX             j__ZN9CPathFind36AddDynamicLinkBetween2Nodes_For1NodeE12CNodeAddressS0_; CPathFind::AddDynamicLinkBetween2Nodes_For1Node(CNodeAddress,CNodeAddress)
31AC22:  MOV             R0, R8
31AC24:  MOV             R1, R5
31AC26:  MOV             R2, R6
31AC28:  BLX             j__ZN9CPathFind36AddDynamicLinkBetween2Nodes_For1NodeE12CNodeAddressS0_; CPathFind::AddDynamicLinkBetween2Nodes_For1Node(CNodeAddress,CNodeAddress)
31AC2C:  LDR.W           R0, [R10]
31AC30:  ADDS            R4, #1
31AC32:  CMP             R4, R0
31AC34:  BLT             loc_31AC00
31AC36:  LDR             R0, =(bInteriorBeingBuilt_ptr - 0x31AC3E)
31AC38:  MOVS            R1, #0
31AC3A:  ADD             R0, PC; bInteriorBeingBuilt_ptr
31AC3C:  LDR             R0, [R0]; bInteriorBeingBuilt
31AC3E:  STRB            R1, [R0]
31AC40:  ADD             SP, SP, #0x3C ; '<'
31AC42:  POP.W           {R8-R11}
31AC46:  POP             {R4-R7,PC}
