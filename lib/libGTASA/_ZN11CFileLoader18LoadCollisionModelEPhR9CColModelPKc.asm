; =========================================================
; Game Engine Function: _ZN11CFileLoader18LoadCollisionModelEPhR9CColModelPKc
; Address            : 0x3EF5D0 - 0x3EF8D4
; =========================================================

3EF5D0:  PUSH            {R4-R7,LR}
3EF5D2:  ADD             R7, SP, #0xC
3EF5D4:  PUSH.W          {R8-R11}
3EF5D8:  SUB             SP, SP, #0xC
3EF5DA:  MOV             R10, R0
3EF5DC:  MOV             R8, R1
3EF5DE:  LDR.W           R0, [R10]
3EF5E2:  STR.W           R0, [R8,#0x24]
3EF5E6:  VLDR            D16, [R10,#4]
3EF5EA:  LDR.W           R0, [R10,#0xC]
3EF5EE:  STR.W           R0, [R8,#0x20]
3EF5F2:  VSTR            D16, [R8,#0x18]
3EF5F6:  VLDR            D16, [R10,#0x10]
3EF5FA:  LDR.W           R0, [R10,#0x18]
3EF5FE:  STR.W           R0, [R8,#8]
3EF602:  VSTR            D16, [R8]
3EF606:  VLDR            D16, [R10,#0x1C]
3EF60A:  LDR.W           R0, [R10,#0x24]
3EF60E:  STR.W           R0, [R8,#0x14]
3EF612:  MOVS            R0, #0x34 ; '4'; unsigned int
3EF614:  VSTR            D16, [R8,#0xC]
3EF618:  BLX             _Znwj; operator new(uint)
3EF61C:  MOV             R11, R0
3EF61E:  BLX             j__ZN14CCollisionDataC2Ev; CCollisionData::CCollisionData(void)
3EF622:  STR.W           R11, [R8,#0x2C]
3EF626:  ADD.W           R9, R10, #0x2C ; ','
3EF62A:  LDR.W           R1, [R10,#0x28]
3EF62E:  STRH.W          R1, [R11]
3EF632:  LSLS            R0, R1, #0x10
3EF634:  CMP             R0, #1
3EF636:  BLT             loc_3EF6A8
3EF638:  LDR.W           R0, [R11,#8]
3EF63C:  CBZ             R0, loc_3EF650
3EF63E:  LDR             R1, =(RwEngineInstance_ptr - 0x3EF644)
3EF640:  ADD             R1, PC; RwEngineInstance_ptr
3EF642:  LDR             R1, [R1]; RwEngineInstance
3EF644:  LDR             R1, [R1]
3EF646:  LDR.W           R1, [R1,#0x130]
3EF64A:  BLX             R1
3EF64C:  LDRH.W          R1, [R11]; unsigned int
3EF650:  SXTH            R0, R1
3EF652:  ADD.W           R0, R0, R0,LSL#2
3EF656:  LSLS            R0, R0, #2; byte_count
3EF658:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EF65C:  LDRSH.W         R1, [R11]
3EF660:  STR.W           R0, [R11,#8]
3EF664:  CMP             R1, #1
3EF666:  BLT             loc_3EF6AE
3EF668:  MOVS            R4, #0
3EF66A:  MOV.W           R9, #1
3EF66E:  B               loc_3EF67A
3EF670:  ADD.W           R9, R9, #1
3EF674:  LDR.W           R0, [R11,#8]
3EF678:  ADDS            R4, #0x14
3EF67A:  ADD.W           R5, R10, R4
3EF67E:  ADD             R0, R4; this
3EF680:  LDRB.W          R6, [R5,#0x3F]
3EF684:  LDRB.W          R3, [R5,#0x3C]; unsigned __int8
3EF688:  LDR             R1, [R5,#0x2C]; float
3EF68A:  LDRB.W          R2, [R5,#0x3D]
3EF68E:  STRD.W          R2, R6, [SP,#0x28+var_28]; unsigned __int8
3EF692:  ADD.W           R2, R5, #0x30 ; '0'; CVector *
3EF696:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
3EF69A:  LDRSH.W         R0, [R11]
3EF69E:  CMP             R9, R0
3EF6A0:  BLT             loc_3EF670
3EF6A2:  ADD.W           R9, R5, #0x40 ; '@'
3EF6A6:  B               loc_3EF6AE
3EF6A8:  MOVS            R0, #0
3EF6AA:  STR.W           R0, [R11,#8]
3EF6AE:  MOV             R10, R9
3EF6B0:  LDR.W           R0, [R10],#4
3EF6B4:  STRB.W          R0, [R11,#6]
3EF6B8:  LSLS            R1, R0, #0x18
3EF6BA:  CMP             R1, #1
3EF6BC:  BLT             loc_3EF6D8
3EF6BE:  SXTB            R0, R0
3EF6C0:  CMP             R0, #1
3EF6C2:  BLT             loc_3EF6DE
3EF6C4:  IT LE
3EF6C6:  MOVLE           R0, #1
3EF6C8:  MOVS            R1, #4
3EF6CA:  ADD.W           R0, R0, R0,LSL#1
3EF6CE:  ORR.W           R0, R1, R0,LSL#3
3EF6D2:  ADD.W           R10, R9, R0
3EF6D6:  B               loc_3EF6DE
3EF6D8:  MOVS            R0, #0
3EF6DA:  STR.W           R0, [R11,#0x10]
3EF6DE:  MOVS            R0, #0
3EF6E0:  MOV             R6, R10
3EF6E2:  STR.W           R0, [R11,#0x10]
3EF6E6:  STRB.W          R0, [R11,#6]
3EF6EA:  LDR.W           R1, [R6],#4
3EF6EE:  STRH.W          R1, [R11,#2]
3EF6F2:  LSLS            R2, R1, #0x10
3EF6F4:  CMP             R2, #1
3EF6F6:  BLT             loc_3EF78A
3EF6F8:  LDR.W           R0, [R11,#0xC]
3EF6FC:  CBZ             R0, loc_3EF710
3EF6FE:  LDR             R1, =(RwEngineInstance_ptr - 0x3EF704)
3EF700:  ADD             R1, PC; RwEngineInstance_ptr
3EF702:  LDR             R1, [R1]; RwEngineInstance
3EF704:  LDR             R1, [R1]
3EF706:  LDR.W           R1, [R1,#0x130]
3EF70A:  BLX             R1
3EF70C:  LDRH.W          R1, [R11,#2]; unsigned int
3EF710:  SXTH            R0, R1
3EF712:  RSB.W           R0, R0, R0,LSL#3
3EF716:  LSLS            R0, R0, #2; byte_count
3EF718:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EF71C:  LDRSH.W         R1, [R11,#2]
3EF720:  STR.W           R0, [R11,#0xC]
3EF724:  CMP             R1, #1
3EF726:  BLT             loc_3EF794
3EF728:  LDRB.W          R2, [R10,#0x1F]
3EF72C:  LDRB.W          R3, [R10,#0x1C]; unsigned __int8
3EF730:  LDRB.W          R1, [R10,#0x1D]
3EF734:  STRD.W          R1, R2, [SP,#0x28+var_28]; unsigned __int8
3EF738:  ADD.W           R2, R10, #0x10; CVector *
3EF73C:  MOV             R1, R6; CVector *
3EF73E:  BLX             j__ZN7CColBox3SetERK7CVectorS2_hhh; CColBox::Set(CVector const&,CVector const&,uchar,uchar,uchar)
3EF742:  LDRSH.W         R0, [R11,#2]
3EF746:  CMP             R0, #2
3EF748:  BLT             loc_3EF790
3EF74A:  MOVS            R6, #1
3EF74C:  MOVS            R4, #0
3EF74E:  ADD.W           R2, R10, R4
3EF752:  LDR.W           R0, [R11,#0xC]
3EF756:  LDRB.W          R5, [R2,#0x3B]
3EF75A:  ADD             R0, R4
3EF75C:  LDRB.W          R3, [R2,#0x38]; unsigned __int8
3EF760:  ADDS            R0, #0x1C; this
3EF762:  LDRB.W          R1, [R2,#0x39]
3EF766:  STRD.W          R1, R5, [SP,#0x28+var_28]; unsigned __int8
3EF76A:  ADD.W           R1, R2, #0x20 ; ' '; CVector *
3EF76E:  ADDS            R2, #0x2C ; ','; CVector *
3EF770:  BLX             j__ZN7CColBox3SetERK7CVectorS2_hhh; CColBox::Set(CVector const&,CVector const&,uchar,uchar,uchar)
3EF774:  LDRSH.W         R0, [R11,#2]
3EF778:  ADDS            R6, #1
3EF77A:  ADDS            R4, #0x1C
3EF77C:  CMP             R6, R0
3EF77E:  BLT             loc_3EF74E
3EF780:  ADD.W           R0, R10, R4
3EF784:  ADD.W           R6, R0, #0x20 ; ' '
3EF788:  B               loc_3EF794
3EF78A:  STR.W           R0, [R11,#0xC]
3EF78E:  B               loc_3EF794
3EF790:  ADD.W           R6, R10, #0x20 ; ' '
3EF794:  MOV             R10, R6
3EF796:  LDR.W           R9, [R10],#4
3EF79A:  CMP.W           R9, #1
3EF79E:  BLT             loc_3EF806
3EF7A0:  LDR.W           R0, [R11,#0x14]
3EF7A4:  CBZ             R0, loc_3EF7B4
3EF7A6:  LDR             R1, =(RwEngineInstance_ptr - 0x3EF7AC)
3EF7A8:  ADD             R1, PC; RwEngineInstance_ptr
3EF7AA:  LDR             R1, [R1]; RwEngineInstance
3EF7AC:  LDR             R1, [R1]
3EF7AE:  LDR.W           R1, [R1,#0x130]
3EF7B2:  BLX             R1
3EF7B4:  ADD.W           R5, R9, R9,LSL#1
3EF7B8:  LSLS            R0, R5, #1; byte_count
3EF7BA:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EF7BE:  STR.W           R0, [R11,#0x14]
3EF7C2:  CMP.W           R9, #1
3EF7C6:  VLDR            D16, [R10]
3EF7CA:  LDR.W           R1, [R10,#8]
3EF7CE:  STR             R1, [R0,#8]
3EF7D0:  VSTR            D16, [R0]
3EF7D4:  MOV.W           R0, #4
3EF7D8:  ADD.W           R0, R0, R5,LSL#2
3EF7DC:  BEQ             loc_3EF800
3EF7DE:  SUB.W           R1, R9, #1
3EF7E2:  MOVS            R2, #0xC
3EF7E4:  LDR.W           R3, [R11,#0x14]
3EF7E8:  ADDS            R5, R6, R2
3EF7EA:  SUBS            R1, #1
3EF7EC:  VLDR            D16, [R5,#4]
3EF7F0:  ADD             R3, R2
3EF7F2:  ADD.W           R2, R2, #0xC
3EF7F6:  LDR             R5, [R5,#0xC]
3EF7F8:  STR             R5, [R3,#8]
3EF7FA:  VSTR            D16, [R3]
3EF7FE:  BNE             loc_3EF7E4
3EF800:  ADD.W           R10, R6, R0
3EF804:  B               loc_3EF80C
3EF806:  MOVS            R0, #0
3EF808:  STR.W           R0, [R11,#0x14]
3EF80C:  LDR.W           R1, [R10],#4
3EF810:  STRH.W          R1, [R11,#4]
3EF814:  LSLS            R0, R1, #0x10
3EF816:  CMP             R0, #1
3EF818:  BLT             loc_3EF87E
3EF81A:  LDR.W           R0, [R11,#0x18]
3EF81E:  CBZ             R0, loc_3EF832
3EF820:  LDR             R1, =(RwEngineInstance_ptr - 0x3EF826)
3EF822:  ADD             R1, PC; RwEngineInstance_ptr
3EF824:  LDR             R1, [R1]; RwEngineInstance
3EF826:  LDR             R1, [R1]
3EF828:  LDR.W           R1, [R1,#0x130]
3EF82C:  BLX             R1
3EF82E:  LDRH.W          R1, [R11,#4]; unsigned int
3EF832:  SXTH            R0, R1
3EF834:  LSLS            R0, R0, #4; byte_count
3EF836:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
3EF83A:  STR.W           R0, [R11,#0x18]
3EF83E:  LDRSH.W         R1, [R11,#4]
3EF842:  CMP             R1, #1
3EF844:  BLT             loc_3EF886
3EF846:  MOVS            R2, #0
3EF848:  MOV.W           R12, #1
3EF84C:  B               loc_3EF858
3EF84E:  ADD.W           R12, R12, #1
3EF852:  LDR.W           R0, [R11,#0x18]
3EF856:  ADDS            R2, #0x10
3EF858:  ADD.W           R6, R10, R2
3EF85C:  LDR.W           R3, [R10,R2]
3EF860:  LDRD.W          R5, R4, [R6,#4]
3EF864:  LDRB            R1, [R6,#0xF]
3EF866:  LDRB            R6, [R6,#0xC]
3EF868:  STR             R3, [R0,R2]
3EF86A:  ADD             R0, R2
3EF86C:  STRD.W          R5, R4, [R0,#4]
3EF870:  STRB            R6, [R0,#0xC]
3EF872:  STRB            R1, [R0,#0xD]
3EF874:  LDRSH.W         R0, [R11,#4]
3EF878:  CMP             R12, R0
3EF87A:  BLT             loc_3EF84E
3EF87C:  B               loc_3EF88A
3EF87E:  MOVS            R0, #0
3EF880:  STR.W           R0, [R11,#0x18]
3EF884:  B               loc_3EF88E
3EF886:  MOV.W           R12, #0
3EF88A:  STRH.W          R12, [R11,#4]
3EF88E:  LDRB.W          R0, [R11,#7]
3EF892:  MOVS            R1, #0
3EF894:  STRD.W          R1, R1, [R11,#0x28]
3EF898:  AND.W           R0, R0, #0xFB
3EF89C:  STRB.W          R0, [R11,#7]
3EF8A0:  LDR.W           R0, [R8,#0x2C]
3EF8A4:  STR             R1, [R0,#0x24]
3EF8A6:  LDRH.W          R0, [R11]
3EF8AA:  CMP             R0, #0
3EF8AC:  ITT EQ
3EF8AE:  LDRHEQ.W        R0, [R11,#2]
3EF8B2:  CMPEQ           R0, #0
3EF8B4:  BEQ             loc_3EF8CA
3EF8B6:  LDRB.W          R0, [R8,#0x29]
3EF8BA:  ORR.W           R0, R0, #1
3EF8BE:  STRB.W          R0, [R8,#0x29]
3EF8C2:  ADD             SP, SP, #0xC
3EF8C4:  POP.W           {R8-R11}
3EF8C8:  POP             {R4-R7,PC}
3EF8CA:  LDRH.W          R0, [R11,#4]
3EF8CE:  CMP             R0, #0
3EF8D0:  BNE             loc_3EF8B6
3EF8D2:  B               loc_3EF8C2
