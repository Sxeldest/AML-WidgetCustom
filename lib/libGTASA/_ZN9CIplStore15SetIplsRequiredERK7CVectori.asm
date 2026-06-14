; =========================================================
; Game Engine Function: _ZN9CIplStore15SetIplsRequiredERK7CVectori
; Address            : 0x281840 - 0x2818C8
; =========================================================

281840:  PUSH            {R4,R6,R7,LR}
281842:  ADD             R7, SP, #8
281844:  SUB             SP, SP, #8
281846:  MOV             R4, R0
281848:  ADDS            R0, R1, #1
28184A:  BNE             loc_281864
28184C:  MOV.W           R0, #0xFFFFFFFF; int
281850:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
281854:  CBZ             R0, loc_28185C
281856:  LDRB.W          R1, [R0,#0x33]
28185A:  B               loc_281864
28185C:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x281862)
28185E:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
281860:  LDR             R0, [R0]; CGame::currArea ...
281862:  LDR             R1, [R0]; CGame::currArea
281864:  LDR             R0, =(dword_6DFE48 - 0x28186C)
281866:  CMP             R1, #0
281868:  ADD             R0, PC; dword_6DFE48
28186A:  STR             R1, [R0]
28186C:  BEQ             loc_281880
28186E:  VLDR            S0, =900.0
281872:  VLDR            S2, [R4,#8]
281876:  VCMPE.F32       S2, S0
28187A:  VMRS            APSR_nzcv, FPSCR
28187E:  BGE             loc_2818A8
281880:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x281888)
281882:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x28188A)
281884:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
281886:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
281888:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
28188A:  LDR             R2, [R2]; CGame::currArea ...
28188C:  LDR             R0, [R0]; CIplStore::ms_pQuadTree
28188E:  LDR             R2, [R2]; CGame::currArea
281890:  CMP             R1, R2
281892:  BNE             loc_28189A
281894:  LDR             R2, =(_Z18SetIfIplIsRequiredRK9CVector2DPv_ptr - 0x28189A)
281896:  ADD             R2, PC; _Z18SetIfIplIsRequiredRK9CVector2DPv_ptr
281898:  B               loc_28189E
28189A:  LDR             R2, =(_Z27SetIfIplIsRequiredReducedBBRK9CVector2DPv_ptr - 0x2818A0)
28189C:  ADD             R2, PC; _Z27SetIfIplIsRequiredReducedBBRK9CVector2DPv_ptr
28189E:  LDR             R2, [R2]; SetIfIplIsRequired(CVector2D const&,void *)
2818A0:  LDR             R1, [R4]
2818A2:  LDR             R3, [R4,#4]
2818A4:  STR             R1, [SP,#0x10+var_10]
2818A6:  B               loc_2818BC
2818A8:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x2818B0)
2818AA:  LDR             R1, =(_Z26SetIfInteriorIplIsRequiredRK9CVector2DPv_ptr - 0x2818B2)
2818AC:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
2818AE:  ADD             R1, PC; _Z26SetIfInteriorIplIsRequiredRK9CVector2DPv_ptr
2818B0:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
2818B2:  LDR             R0, [R0]; CIplStore::ms_pQuadTree
2818B4:  LDRD.W          R2, R3, [R4]
2818B8:  STR             R2, [SP,#0x10+var_10]
2818BA:  LDR             R2, [R1]; SetIfInteriorIplIsRequired(CVector2D const&,void *)
2818BC:  MOV             R1, SP
2818BE:  STR             R3, [SP,#0x10+var_C]
2818C0:  BLX             j__ZN13CQuadTreeNode14ForAllMatchingERK9CVector2DPFvS2_PvE; CQuadTreeNode::ForAllMatching(CVector2D const&,void (*)(CVector2D const&,void *))
2818C4:  ADD             SP, SP, #8
2818C6:  POP             {R4,R6,R7,PC}
