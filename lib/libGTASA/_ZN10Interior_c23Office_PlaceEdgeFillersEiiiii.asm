; =========================================================
; Game Engine Function: _ZN10Interior_c23Office_PlaceEdgeFillersEiiiii
; Address            : 0x44D734 - 0x44D90C
; =========================================================

44D734:  PUSH            {R4-R7,LR}
44D736:  ADD             R7, SP, #0xC
44D738:  PUSH.W          {R8-R11}
44D73C:  SUB             SP, SP, #4
44D73E:  VPUSH           {D8-D9}
44D742:  SUB             SP, SP, #0x20
44D744:  MOV             R9, R3
44D746:  MOV             R10, R2
44D748:  MOV             R6, R1
44D74A:  MOV             R8, R0
44D74C:  BLX             rand
44D750:  UXTH            R0, R0
44D752:  VLDR            S16, =0.000015259
44D756:  VMOV            S0, R0
44D75A:  VLDR            S2, =100.0
44D75E:  LDR             R5, [R7,#arg_0]
44D760:  MOVS            R4, #1
44D762:  VCVT.F32.S32    S0, S0
44D766:  MOVS            R3, #2
44D768:  ORR.W           R0, R5, #2
44D76C:  MOV             R1, R10; int
44D76E:  CMP             R0, #2
44D770:  MOV             R0, R8; this
44D772:  MOV             R2, R9; int
44D774:  VMUL.F32        S0, S0, S16
44D778:  VMUL.F32        S0, S0, S2
44D77C:  VCVT.S32.F32    S18, S0
44D780:  STR             R4, [SP,#0x50+var_50]; int
44D782:  IT EQ
44D784:  MOVEQ           R3, #1; int
44D786:  BLX             j__ZN10Interior_c16GetNumEmptyTilesEiiii; Interior_c::GetNumEmptyTiles(int,int,int,int)
44D78A:  CMP             R0, #1
44D78C:  BLT.W           loc_44D8F8
44D790:  CMP             R5, #3; switch 4 cases
44D792:  MOV             R11, R10
44D794:  MOV             R4, R9
44D796:  BHI             def_44D798; jumptable 0044D798 default case
44D798:  TBB.W           [PC,R5]; switch jump
44D79C:  DCB 2; jump table for switch statement
44D79D:  DCB 6
44D79E:  DCB 9
44D79F:  DCB 0xD
44D7A0:  SUB.W           R4, R9, #1; jumptable 0044D798 case 0
44D7A4:  MOV             R11, R10
44D7A6:  B               def_44D798; jumptable 0044D798 default case
44D7A8:  ADD.W           R11, R10, #1; jumptable 0044D798 case 1
44D7AC:  B               loc_44D7BA
44D7AE:  ADD.W           R4, R9, #1; jumptable 0044D798 case 2
44D7B2:  MOV             R11, R10
44D7B4:  B               def_44D798; jumptable 0044D798 default case
44D7B6:  SUB.W           R11, R10, #1; jumptable 0044D798 case 3
44D7BA:  MOV             R4, R9
44D7BC:  MOVW            R2, #0xFFFF; jumptable 0044D798 default case
44D7C0:  ADDS            R0, R6, #1
44D7C2:  BEQ             loc_44D7E0
44D7C4:  LDR             R0, =(g_furnitureMan_ptr - 0x44D7D2)
44D7C6:  SXTH            R3, R2; __int16
44D7C8:  LDR.W           R1, [R8,#0x14]
44D7CC:  MOV             R2, R6; int
44D7CE:  ADD             R0, PC; g_furnitureMan_ptr
44D7D0:  LDR             R0, [R0]; g_furnitureMan ; this
44D7D2:  LDRB            R1, [R1,#0x1F]
44D7D4:  STR             R1, [SP,#0x50+var_50]; unsigned __int8
44D7D6:  MOVS            R1, #1; int
44D7D8:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D7DC:  MOV             R6, R0
44D7DE:  B               loc_44D8D8
44D7E0:  VMOV            R0, S18
44D7E4:  CMP             R0, #0x5B ; '['
44D7E6:  BLT             loc_44D842
44D7E8:  LDR             R1, =(byte_99D8EC - 0x44D7EE)
44D7EA:  ADD             R1, PC; byte_99D8EC
44D7EC:  LDRB            R1, [R1]
44D7EE:  CBNZ            R1, loc_44D842
44D7F0:  LDR             R0, =(g_furnitureMan_ptr - 0x44D7FE)
44D7F2:  SXTH            R3, R2; __int16
44D7F4:  LDR.W           R1, [R8,#0x14]
44D7F8:  MOVS            R2, #2; int
44D7FA:  ADD             R0, PC; g_furnitureMan_ptr
44D7FC:  LDR             R0, [R0]; g_furnitureMan ; this
44D7FE:  LDRB            R1, [R1,#0x1F]
44D800:  STR             R1, [SP,#0x50+var_50]; unsigned __int8
44D802:  MOVS            R1, #1; int
44D804:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D808:  MOV             R6, R0
44D80A:  CBZ             R6, loc_44D838
44D80C:  VMOV            S0, R11
44D810:  ADDS            R1, R5, #2
44D812:  VMOV            S2, R4
44D816:  MOVS            R0, #0
44D818:  VCVT.F32.S32    S0, S0
44D81C:  AND.W           R1, R1, #3
44D820:  VCVT.F32.S32    S2, S2
44D824:  STRD.W          R1, R0, [SP,#0x50+var_50]; int
44D828:  MOV             R0, R8; this
44D82A:  MOVS            R1, #7; int
44D82C:  VMOV            R2, S0; float
44D830:  VMOV            R3, S2; float
44D834:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44D838:  LDR             R0, =(byte_99D8EC - 0x44D840)
44D83A:  MOVS            R1, #1
44D83C:  ADD             R0, PC; byte_99D8EC
44D83E:  STRB            R1, [R0]
44D840:  B               loc_44D8D8
44D842:  CMP             R0, #0x4C ; 'L'
44D844:  BLT             loc_44D88A
44D846:  MOVW            R5, #0xFFFF
44D84A:  BLX             rand
44D84E:  MOV             R4, R0
44D850:  LDR             R0, =(g_furnitureMan_ptr - 0x44D85C)
44D852:  LDR.W           R1, [R8,#0x14]
44D856:  SXTH            R3, R5; __int16
44D858:  ADD             R0, PC; g_furnitureMan_ptr
44D85A:  MOVS            R2, #0; int
44D85C:  LDR             R0, [R0]; g_furnitureMan ; this
44D85E:  LDRB            R1, [R1,#0x1F]
44D860:  STR             R1, [SP,#0x50+var_50]; unsigned __int8
44D862:  MOVS            R1, #8; int
44D864:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D868:  MOV             R6, R0
44D86A:  UXTH            R0, R4
44D86C:  VMOV            S0, R0
44D870:  VMOV.F32        S2, #5.0
44D874:  VCVT.F32.S32    S0, S0
44D878:  VMUL.F32        S0, S0, S16
44D87C:  VMUL.F32        S0, S0, S2
44D880:  VCVT.S32.F32    S0, S0
44D884:  VMOV            R5, S0
44D888:  B               loc_44D8D8
44D88A:  CMP             R0, #0x1A
44D88C:  BLT             loc_44D908
44D88E:  LDR             R0, =(g_furnitureMan_ptr - 0x44D89C)
44D890:  SXTH            R3, R2; __int16
44D892:  LDR.W           R1, [R8,#0x14]
44D896:  MOVS            R2, #3; int
44D898:  ADD             R0, PC; g_furnitureMan_ptr
44D89A:  LDR             R0, [R0]; g_furnitureMan ; this
44D89C:  LDRB            R1, [R1,#0x1F]
44D89E:  STR             R1, [SP,#0x50+var_50]; unsigned __int8
44D8A0:  MOVS            R1, #1; int
44D8A2:  BLX             j__ZN18FurnitureManager_c12GetFurnitureEiish; FurnitureManager_c::GetFurniture(int,int,short,uchar)
44D8A6:  MOVS            R6, #0
44D8A8:  CBZ             R0, loc_44D8D8
44D8AA:  VMOV            S0, R11
44D8AE:  MOVS            R1, #7; int
44D8B0:  VMOV            S2, R4
44D8B4:  MOV             R4, R0
44D8B6:  VCVT.F32.S32    S0, S0
44D8BA:  ADDS            R0, R5, #2
44D8BC:  VCVT.F32.S32    S2, S2
44D8C0:  AND.W           R0, R0, #3
44D8C4:  STRD.W          R0, R6, [SP,#0x50+var_50]; float
44D8C8:  MOV             R0, R8; this
44D8CA:  VMOV            R2, S0; float
44D8CE:  VMOV            R3, S2; float
44D8D2:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44D8D6:  MOV             R6, R4
44D8D8:  ADD             R1, SP, #0x50+var_38
44D8DA:  MOVS            R0, #0
44D8DC:  MOVS            R3, #1
44D8DE:  ADD             R2, SP, #0x50+var_34
44D8E0:  STMEA.W         SP, {R0,R3,R5}
44D8E4:  MOV             R3, R9; int
44D8E6:  STRD.W          R2, R1, [SP,#0x50+var_44]; int
44D8EA:  MOV             R1, R6; int
44D8EC:  STR             R0, [SP,#0x50+var_3C]; int
44D8EE:  MOV             R0, R8; int
44D8F0:  MOV             R2, R10; int
44D8F2:  BLX             j__ZN10Interior_c14PlaceFurnitureEP11Furniture_ciifiiPiS2_h; Interior_c::PlaceFurniture(Furniture_c *,int,int,float,int,int,int *,int *,uchar)
44D8F6:  LDR             R4, [SP,#0x50+var_34]
44D8F8:  MOV             R0, R4
44D8FA:  ADD             SP, SP, #0x20 ; ' '
44D8FC:  VPOP            {D8-D9}
44D900:  ADD             SP, SP, #4
44D902:  POP.W           {R8-R11}
44D906:  POP             {R4-R7,PC}
44D908:  MOVS            R4, #1
44D90A:  B               loc_44D8F8
